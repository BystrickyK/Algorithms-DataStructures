#include <algorithm>
#include <stack>
#include <iostream>
#include <vector>
#include <cstdio>
#include <numeric>
#include <random>
using namespace std;

const double EPS = 1e-6;
const int PRECISION = 4;

using Column = std::vector<double>;
using Row = std::vector<double>;
using Matrix = std::vector<Row>;
using MatrixRowPtrs = std::vector<Row*>;

Column AddVectors(const Column& vec1, const Column& vec2) 
{
  Column result(vec1.size(), 0);
  for (size_t i = 0; i < result.size(); ++i)
    result[i] = vec1[i] + vec2[i];

  return result;
}

Column ScalarMultiplyVector(const Column& vec, const double multiplier)
{
  Column result(vec.size(), 0);
  for (size_t i = 0; i < result.size(); ++i)
    result[i] = vec[i] * multiplier;
  return result;
}

Column ExtractColumnFromMatrix(const Matrix& mat, int column_idx)
{
  if (column_idx == -1) // take the last column
    column_idx = mat[0].size()-1;

  Column result(mat[0].size(), 0);
  for(size_t i = 0; i < result.size(); ++i)
    result[i] = mat[i][column_idx];
  return result;
}

class Edge 
{
  public:
  Edge(const Column&& origin_, const Column&& direction_):
    m_Origin(std::move(origin_)), m_Direction(std::move(direction_)){}

  Column GetPoint(const double parameter)
  {
    const Column delta = ScalarMultiplyVector(m_Direction, parameter);
    const Column result = AddVectors(m_Origin, delta);
    return result;
  }

  private:
  const Column m_Origin;
  const Column m_Direction;

};


struct LinearSystem {
    LinearSystem():
        a(Matrix()),
        b(Column()),
        row_numbers(vector<size_t>())
    {}

    LinearSystem(const Matrix &a, const Column &b, const vector<size_t>& row_nums):
        a(a),
        b(b),
        row_numbers(row_nums)
    {}

    LinearSystem(Matrix &&a, Column &&b, vector<size_t>&& row_nums):
        a(a),
        b(b),
        row_numbers(row_nums)
    {}

    Matrix a;
    Column b;
    vector<size_t> row_numbers;
};

struct Position {
    Position(int column, int row):
        column(column),
        row(row)
    {}

    int column;
    int row;
};

Position SelectPivotElement(
  const Matrix &a, 
  std::vector <bool> &used_rows, 
  std::vector <bool> &used_columns) 
  {
    Position pivot_element(0, 0);

    // Find left-most non-zero value 
    for(pivot_element.column = 0; pivot_element.column < a.size(); ++ pivot_element.column)
    {
        for (pivot_element.row = 0; pivot_element.row < a.size(); ++pivot_element.row)
        {
            const auto& row = pivot_element.row;
            const auto& column = pivot_element.column;
            if (0 != a[row][column] && !used_rows[row] && !used_columns[column])
                return pivot_element;
        }
    }

  return Position(-1, -1);
}

void SwapLines(LinearSystem& system, std::vector <bool> &used_rows, Position &pivot_element) {
    Matrix& a = system.a;
    Column& b = system.b;
    vector<size_t>& row_nums = system.row_numbers;

    std::swap(a[pivot_element.column], a[pivot_element.row]);
    std::swap(b[pivot_element.column], b[pivot_element.row]);
    std::swap(row_nums[pivot_element.column], row_nums[pivot_element.row]);
    std::swap(used_rows[pivot_element.column], used_rows[pivot_element.row]);
    pivot_element.row = pivot_element.column;
}

void ProcessPivotElement(Matrix &a, Column &b, const Position &pivot_element) 
{
    auto pivot_row = pivot_element.row;
    auto pivot_column = pivot_element.column;
    if (pivot_row == -1 || pivot_column == -1)
      return;

    auto pivot_value = a[pivot_row][pivot_column];

    // Normalize pivot row
    for(size_t c = pivot_column; c < a.size(); ++c)
        a[pivot_row][c] /= pivot_value;
    b[pivot_row] /= pivot_value;

    // Subtract a multiple of the pivot row from each row below it
    // to nullify the currently processed pivot column
    for(size_t r = 0; r < a.size(); ++r)
    {
        if (r == pivot_row)
            continue;

        const auto pivot_column_value = a[r][pivot_column];
        for(size_t c = pivot_column; c < a.size(); ++c)
            a[r][c] -= pivot_column_value * a[pivot_row][c];
        b[r] -= pivot_column_value * b[pivot_row];
    }

}

void MarkPivotElementUsed(const Position &pivot_element, std::vector <bool> &used_rows, std::vector <bool> &used_columns) {
    used_rows[pivot_element.row] = true;
    used_columns[pivot_element.column] = true;
}

void RowReduce(LinearSystem& system)
{
    Matrix& a = system.a;
    Column& b = system.b;

    const int size = a.size();
    std::vector <bool> used_columns(size, false);
    std::vector <bool> used_rows(size, false);
    for (int step = 0; step < size; ++step) {
        Position pivot_element = SelectPivotElement(a, used_rows, used_columns);
        if (pivot_element.row == -1 || pivot_element.column == -1)
          return;
        SwapLines(system, used_rows, pivot_element);
        ProcessPivotElement(a, b, pivot_element);
        MarkPivotElementUsed(pivot_element, used_rows, used_columns);
    }
}

enum class solution_Type
{
  NO_SOLUTION,
  UNIQUE_SOLUTION,
  INFINITE_SOLUTIONS
} type;

struct Solution
{
  Solution(): A(Matrix()), b(Column()), used_row_indexes(vector<size_t>()), type(solution_Type::NO_SOLUTION){}

  Solution(const Matrix&& A_, const Column&& b_, const vector<size_t>&& row_indexes, const solution_Type sol_type):
  A(A_), b(b_), used_row_indexes(row_indexes), type(sol_type) {}

  Matrix A;
  Column b;
  vector<size_t> used_row_indexes;

  solution_Type type;
};

Solution SolveEquation(LinearSystem&& equation) {
    Matrix &a = equation.a;
    Column &b = equation.b;
    vector<size_t>& row_nums = equation.row_numbers;

    RowReduce(equation);

    solution_Type solution_type = solution_Type::UNIQUE_SOLUTION;
    for (size_t i = 0; i < a.size(); ++i)
    {
      const auto& A_row = a[i];
      const auto& b_val = b[i];

      bool all_zero = true;
      for(const auto num: A_row)
      {
        if (num != 0)
        {
          all_zero = false;
          break;
        }
      }

      if (all_zero)
      {
        if(b_val == 0)
          solution_type = solution_Type::INFINITE_SOLUTIONS;
        else
          solution_type = solution_Type::NO_SOLUTION;
        break;
      }
    }

    Solution solution(std::move(a), std::move(b), std::move(row_nums), solution_type);
    return solution;
}

LinearSystem PickConstrains(const Matrix& A, const Column& b, const vector<size_t> used_rows_idxs)
{
  const size_t solution_dim = A[0].size();

  Matrix A_(solution_dim, Row(solution_dim, 0));
  Column b_(solution_dim, 0);

  for(size_t row = 0; row < solution_dim; ++row)
  {
    const size_t idx = used_rows_idxs[row];
    A_[row] = A[idx];
    b_[row] = b[idx];
  }

  LinearSystem equation(std::move(A_), std::move(b_), std::move(used_rows_idxs));
  return equation;
}

vector<size_t> GetRandomRowIndexes(const Matrix& A)
{
  const size_t matrix_rows = A.size();
  const size_t matrix_cols = A[0].size();

  vector<size_t> bag(matrix_rows, -1);
  std::iota(bag.begin(), bag.end(), 0);
  stack<size_t, std::vector<size_t>> bag_stack(bag);

  vector<size_t> picked_indexes;
  picked_indexes.reserve(matrix_cols);
  for(size_t i = 0; i < matrix_cols; ++i)
  {
    picked_indexes.push_back(bag_stack.top());
    bag_stack.pop();
  }

  return picked_indexes;
}

Solution GetInitialPoint(const Matrix& A, const Column& b)
{
  Solution solution;

  for(size_t attempt = 0; attempt < 1000; ++attempt)
  {
    vector<size_t> picked_constrains = GetRandomRowIndexes(A);
    LinearSystem equation = PickConstrains(A, b, picked_constrains);
    solution = SolveEquation(std::move(equation));
// 
    if(solution_Type::UNIQUE_SOLUTION == solution.type)
    {
      return solution;
    }
    else
    {
      std::cout << "Solution invalid" << std::endl;
    }
  }

  solution.type = solution_Type::NO_SOLUTION;
  return solution;
}

Solution RelaxSolution(Solution& solution, size_t relaxed_equation)
{
  solution.A.erase(solution.A.begin() + relaxed_equation);
  solution.b.erase(solution.b.begin() + relaxed_equation);
  solution.used_row_indexes.erase(solution.used_row_indexes.begin() + relaxed_equation);
  solution.type = solution_Type::INFINITE_SOLUTIONS;
  return solution;
}

Solution FollowEdge(Solution& edge, const LinearSystem& constrains, size_t relaxed_equation_num)
{
  Column vertex = edge.b;
  const vector<size_t>& constraint_row_nums = edge.used_row_indexes;
  size_t relaxed_equation_idx = constraint_row_nums[relaxed_equation_num];

  LinearSystem relaxed_system;
  for(size_t row : constraint_row_nums)
  {
    if (row == relaxed_equation_idx)
    {
      relaxed_system.a.push_back(vector<double>(vertex.size(), 0));
      relaxed_system.b.push_back(0);
      relaxed_system.row_numbers.push_back(-1);
      continue;
    }
    relaxed_system.a.push_back(constrains.a[row]);
    relaxed_system.b.push_back(constrains.b[row]);
    relaxed_system.row_numbers.push_back(constrains.row_numbers[row]);
  }
  Solution solved_relaxed_equation = SolveEquation(std::move(relaxed_system));
    
  // TODO: Create a line equation from the solved relaxed equations & follow it
  Column direction = ExtractColumnFromMatrix(solved_relaxed_equation.A, -1);
  direction[direction.size()-1] = 1;
  vector<Column> line;
  std::cout << "Constraint " << relaxed_equation_idx << " relaxed" << std::endl;
  std::cout << "_________________________________________________" << std::endl;
  for(int t = -100; t < 100; ++t)
  {
    const Column point = LineEquation(vertex, direction, t);
    line.push_back(point);
    std::cout << t << ": ";
    for(auto p : point)
      std::cout << p << " ";
    std::cout << std::endl;
  }

  return solved_relaxed_equation;
}

pair<int, vector<double>> solve_diet_problem(
    Matrix& A, 
    vector<double>& b, 
    vector<double>& c) 
{
  vector<size_t> row_numbers(A.size(), 0);
  std::iota(row_numbers.begin(), row_numbers.end(), 0);
  const LinearSystem constrains(A, b, row_numbers);

  Solution solution = GetInitialPoint(A, b);
  if (solution.type == solution_Type::NO_SOLUTION)
  {
    return {-1, vector<double>(b.size(), 0)};
  }
  Column& initial_point = solution.b;

  for (size_t equation_idx = 0; equation_idx < solution.A[0].size(); ++equation_idx)
  {
    Solution new_solution = FollowEdge(solution, constrains, equation_idx);
  }

  return {0, vector<double>(b.size(), 0)};
}

int main(){
  int n, m;
  cin >> n >> m;
  Matrix A(n, vector<double>(m));
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      cin >> A[i][j];
    }
  }
  vector<double> b(n);
  for (int i = 0; i < n; i++) {
    cin >> b[i];
  }
  vector<double> c(m);
  for (int i = 0; i < m; i++) {
    cin >> c[i];
  }

  pair<int, vector<double>> ans = solve_diet_problem(A, b, c);

  switch (ans.first) {
    case -1: 
      printf("No solution\n");
      break;
    case 0: 
      printf("Bounded solution\n");
      for (int i = 0; i < m; i++) {
        printf("%.18f%c", ans.second[i], " \n"[i + 1 == m]);
      }
      break;
    case 1:
      printf("Infinity\n");
      break;      
  }
  return 0;
}
