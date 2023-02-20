#include <algorithm>
#include <stack>
#include <iostream>
#include <vector>
#include <cstdio>
#include <numeric>
#include <random>
#include <iomanip>
#include <cmath>
using namespace std;

const double EPS = 1e-6;

// #define VERBOSE
// #define VERBOSE2
// #define REPEAT
constexpr int num_attempts = 10;

using Column = std::vector<double>;
using Row = std::vector<double>;
using Matrix = std::vector<Row>;
using MatrixRowPtrs = std::vector<Row *>;

struct LinearSystem;

enum class solution_Type
{
    NO_SOLUTION,
    UNIQUE_SOLUTION,
    INFINITE_SOLUTIONS
} type;

struct LinearSystem
{
    LinearSystem() : a(Matrix()),
                     b(Column()),
                     row_numbers(vector<int>())
    {
    }

    LinearSystem(const Matrix &a, const Column &b, const vector<int> &row_nums) : a(a),
                                                                                  b(b),
                                                                                  row_numbers(row_nums)
    {
    }

    LinearSystem(Matrix &&a, Column &&b, vector<int> &&row_nums) : a(a),
                                                                   b(b),
                                                                   row_numbers(row_nums)
    {
    }

    Matrix a;
    Column b;
    vector<int> row_numbers;
};

void PrintMatrix(const Matrix& mat)
{
    std::cout << "Matrix\n";
    for (const auto& row : mat)
    {
        for(const auto& col_val : row)
            std::cout << col_val << " ";
        std::cout << "\n";
    }
    std::cout << std::endl;
}

struct Solution
{
    Solution() : A(Matrix()), b(Column()), used_row_indexes(vector<int>()), type(solution_Type::NO_SOLUTION){};

    Solution(const Matrix &&A_, const Column &&b_, const vector<int> &&row_indexes, const solution_Type sol_type) : A(A_), b(b_), used_row_indexes(row_indexes), type(sol_type) {}

    Solution(const LinearSystem &sys, const solution_Type sol_type) : A(sys.a), b(sys.b), used_row_indexes(sys.row_numbers), type(sol_type) {}

    Matrix A;
    Column b;
    vector<int> used_row_indexes;

    bool operator==(const Solution &other)
    {
        vector<int> this_idx = used_row_indexes;
        vector<int> other_idx = other.used_row_indexes;

        std::sort(this_idx.begin(), this_idx.end());
        std::sort(other_idx.begin(), other_idx.end());

        return std::equal(this_idx.begin(), this_idx.end(), other_idx.begin());
    }

    solution_Type type;
};

struct Position
{
    Position(int column, int row) : column(column),
                                    row(row)
    {
    }

    int column;
    int row;
};

Column AddVectors(const Column &vec1, const Column &vec2)
{
    Column result(vec1.size(), 0);
    for (size_t i = 0; i < result.size(); ++i)
        result[i] = vec1[i] + vec2[i];

    return result;
}

Column ScalarMultiplyVector(const Column &vec, const double multiplier)
{
    Column result(vec.size(), 0);
    for (size_t i = 0; i < result.size(); ++i)
        result[i] = vec[i] * multiplier;
    return result;
}

Column LineEquation(const Column &initial_point, const Column &direction, const double t)
{
    const Column diff = ScalarMultiplyVector(direction, t);
    const Column result = AddVectors(initial_point, diff);
    return result;
}

double MultiplyRowByVector(const LinearSystem &sys, size_t row_idx, const Column &vector)
{
    double result = 0;
    for (size_t dim = 0; dim < vector.size(); ++dim)
    {
        result += sys.a[row_idx][dim] * vector[dim];
    }
    return result;
}

double DotProduct(const Column &a, const Column &b)
{
    if (a.size() != b.size())
        throw;

    double result = 0;
    for (size_t i = 0; i < a.size(); ++i)
        result += a[i] * b[i];

    return result;
}

Column ExtractColumnFromMatrix(const Matrix &mat, int column_idx)
{
    if (column_idx == -1) // take the last column
        column_idx = mat[0].size() - 1;

    Column result(mat[0].size(), 0);
    for (size_t i = 0; i < result.size(); ++i)
        result[i] = mat[i][column_idx];
    return result;
}

void TweakSystem(LinearSystem &sys)
{
    // Shift the edges infinitesimally to fix degenerate vertices
    // where more than 'n' hyperplanes intersect (n = space dimensionality)
    Matrix &a = sys.a;
    Column &b = sys.b;
    for (size_t row = 0; row < a.size(); ++row)
    {
        for (size_t col = 0; col < a[row].size(); ++col)
        {
            a[row][col] += EPS * (0.00000001 * row);
        }
        b[row] += EPS * (0.00000001 * row);
    }
}

class Edge
{
public:
    Edge(const Column &&origin_, const Column &&direction_) : m_Origin(std::move(origin_)), m_Direction(std::move(direction_)) {}

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

Position SelectPivotElement(
    const Matrix &a,
    std::vector<bool> &used_rows,
    std::vector<bool> &used_columns)
{
    Position pivot_element(0, 0);

    // Find left-most non-zero value
    for (pivot_element.column = 0; pivot_element.column < a.size(); ++pivot_element.column)
    {
        for (pivot_element.row = 0; pivot_element.row < a.size(); ++pivot_element.row)
        {
            const auto &row = pivot_element.row;
            const auto &column = pivot_element.column;
            if (0 != a[row][column] && !used_rows[row] && !used_columns[column])
                return pivot_element;
        }
    }

    return Position(-1, -1);
}

void SwapLines(LinearSystem &system, std::vector<bool> &used_rows, Position &pivot_element)
{
    Matrix &a = system.a;
    Column &b = system.b;
    vector<int> &row_nums = system.row_numbers;

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
    for (size_t c = pivot_column; c < a.size(); ++c)
        a[pivot_row][c] /= pivot_value;
    b[pivot_row] /= pivot_value;

    // Subtract a multiple of the pivot row from each row below it
    // to nullify the currently processed pivot column
    for (size_t r = 0; r < a.size(); ++r)
    {
        if (r == pivot_row)
            continue;

        const auto pivot_column_value = a[r][pivot_column];
        for (size_t c = pivot_column; c < a.size(); ++c)
            a[r][c] -= pivot_column_value * a[pivot_row][c];
        b[r] -= pivot_column_value * b[pivot_row];
    }
}

void MarkPivotElementUsed(const Position &pivot_element, std::vector<bool> &used_rows, std::vector<bool> &used_columns)
{
    used_rows[pivot_element.row] = true;
    used_columns[pivot_element.column] = true;
}

void RowReduce(LinearSystem &system)
{
    Matrix &a = system.a;
    Column &b = system.b;

    const int size = a.size();
    std::vector<bool> used_columns(size, false);
    std::vector<bool> used_rows(size, false);
    for (int step = 0; step < size; ++step)
    {
        Position pivot_element = SelectPivotElement(a, used_rows, used_columns);
        if (pivot_element.row == -1 || pivot_element.column == -1)
            return;
        SwapLines(system, used_rows, pivot_element);
        ProcessPivotElement(a, b, pivot_element);
        MarkPivotElementUsed(pivot_element, used_rows, used_columns);
    }
}

Solution SolveEquation(LinearSystem &&equation)
{
    Matrix &a = equation.a;
    Column &b = equation.b;
    vector<int> &row_nums = equation.row_numbers;

    RowReduce(equation);

    solution_Type solution_type = solution_Type::UNIQUE_SOLUTION;
    for (size_t i = 0; i < a.size(); ++i)
    {
        const auto &A_row = a[i];
        const auto &b_val = b[i];

        bool all_zero = true;
        for (const auto num : A_row)
        {
            if (num != 0)
            {
                all_zero = false;
                break;
            }
        }

        if (all_zero)
        {
            if (b_val == 0)
                solution_type = solution_Type::INFINITE_SOLUTIONS;
            else
                solution_type = solution_Type::NO_SOLUTION;
            break;
        }
    }

    auto compare_lambda = [](const int &max, const int &max_candidate)
    { return fabs(max) < fabs(max_candidate); };
    const double max_abs_coord = *std::max_element(b.begin(), b.end(), compare_lambda);
    if (max_abs_coord > 10'000'000)
        solution_type = solution_Type::NO_SOLUTION;

    Solution solution(std::move(a), std::move(b), std::move(row_nums), solution_type);
    return solution;
}

Solution SolveEquation(Solution solution)
{
    LinearSystem sys(solution.A, solution.b, solution.used_row_indexes);
    return SolveEquation(std::move(sys));
}

LinearSystem PickConstraints(const Matrix &A, const Column &b, const vector<int> used_rows_idxs)
{
    const size_t solution_dim = A[0].size();

    Matrix A_(solution_dim, Row(solution_dim, 0));
    Column b_(solution_dim, 0);

    for (size_t row = 0; row < solution_dim; ++row)
    {
        const int idx = used_rows_idxs[row];
        A_[row] = A[idx];
        b_[row] = b[idx];
    }

    LinearSystem equation(std::move(A_), std::move(b_), std::move(used_rows_idxs));
    return equation;
}

vector<int> GetRandomRowIndexes(const Matrix &A)
{
    static std::random_device rd;
    static std::mt19937 g(rd());

    const int matrix_rows = A.size();
    const int matrix_cols = A[0].size();

    vector<int> bag(matrix_rows, -1);

    std::iota(bag.begin(), bag.end(), 0);
    std::shuffle(bag.begin(), bag.end(), g);
    stack<int, std::vector<int>> bag_stack(bag);

    vector<int> picked_indexes;
    picked_indexes.reserve(matrix_cols);
    for (size_t i = 0; i < matrix_cols; ++i)
    {
        picked_indexes.push_back(bag_stack.top());
        bag_stack.pop();
    }

    return picked_indexes;
}

bool ConstraintCheck(const LinearSystem &constraints, const Column &point)
{
    for (size_t row_idx = 0; row_idx < constraints.a.size(); ++row_idx)
    {
        const double constrain_result = MultiplyRowByVector(constraints, row_idx, point);
        const double diff = constrain_result - constraints.b[row_idx];
        if (diff >= 30 * EPS)
            return false;
    }

    return true;
}

vector<bool> ConstraintCheckFull(const LinearSystem &constraints, const Column &point)
{
    vector<bool> constraint_ok(constraints.a.size(), false);
    for (size_t row_idx = 0; row_idx < constraints.a.size(); ++row_idx)
    {
        const double constrain_result = MultiplyRowByVector(constraints, row_idx, point);
        const double diff = constrain_result - constraints.b[row_idx];
        if (diff >= 30 * EPS)
        {
            constraint_ok[row_idx] = false;
#ifdef VERBOSE
            std::cout << std::setprecision(16);
            std::cout << "Constraint " << row_idx << " not met. Diff: " << diff << " eps: " << EPS << std::endl;
#endif
        }
        else
            constraint_ok[row_idx] = true;
    }

    return constraint_ok;
}

ostream &operator<<(ostream &os, const Column &col)
{
    for (auto i : col)
        os << std::fixed << std::setprecision(4) << i << " ";
    return os;
}

Solution GetInitialPoint(const LinearSystem &sys)
{
    Solution solution;
    const Matrix &A = sys.a;
    const Column &b = sys.b;
    vector<int> picked_constrains = sys.row_numbers;

    for (size_t attempt = 0; attempt < 100'000; ++attempt)
    {

        vector<int> picked_constrains = GetRandomRowIndexes(A);

        LinearSystem equation = PickConstraints(A, b, picked_constrains);
        solution = SolveEquation(std::move(equation));

        if (solution_Type::UNIQUE_SOLUTION == solution.type)
        {
            const bool valid_solution = ConstraintCheck(sys, solution.b);
            if (valid_solution)
            {
                return solution;
            }
        }
        else
        {
#ifdef VERBOSE
            std::cout << "Solution invalid" << std::endl;
#endif
        }
    }

    solution.type = solution_Type::NO_SOLUTION;
    return solution;
}

Solution RelaxSolution(Solution &solution, size_t relaxed_equation)
{
    solution.A.erase(solution.A.begin() + relaxed_equation);
    solution.b.erase(solution.b.begin() + relaxed_equation);
    solution.used_row_indexes.erase(solution.used_row_indexes.begin() + relaxed_equation);
    solution.type = solution_Type::INFINITE_SOLUTIONS;
    return solution;
}

// Column LineEquation(const Column& initial_point, const Row& )

enum class FollowEdgeResultEnum : uint8_t
{
    NEXT_VERTEX_FOUND,
    WRONG_RELAXED_CONSTRAINT, // relaxing the constraint leads into a line that doesn't increase C
    NO_MAX_SOLUTION,          // while following the positive direction, step size got too large
    NO_FEASIBLE_DIRECTION
};

struct FollowEdgeResult
{
    FollowEdgeResult(const Solution &solution_, const FollowEdgeResultEnum result_) : solution(solution_), result(result_) {}

    Solution solution;
    FollowEdgeResultEnum result;
};

void NormalizeVector(Column &vector)
{
    auto compare_lambda = [](const int &max, const int &max_candidate)
    { return fabs(max) < fabs(max_candidate); };
    const double max_abs_value = *std::max_element(vector.begin(), vector.end(), compare_lambda);
    vector = ScalarMultiplyVector(vector, 100 / max_abs_value);

    const double sum_of_squares = std::inner_product(vector.begin(), vector.end(), vector.begin(), 0);
    const double l2_norm = std::sqrt(sum_of_squares);

    vector = ScalarMultiplyVector(vector, 1. / l2_norm);
}

FollowEdgeResult FollowEdge(const Solution &edge, const LinearSystem &constraints, size_t relaxed_equation_num, const Column &c)
{
    const Column &init_vertex = edge.b;
    const vector<int> &constraint_row_nums = edge.used_row_indexes;
    size_t relaxed_equation_idx = constraint_row_nums[relaxed_equation_num];

    LinearSystem relaxed_system;
    for (size_t row : constraint_row_nums)
    {
        if (row == relaxed_equation_idx)
        {
            continue;
        }
        relaxed_system.a.push_back(constraints.a[row]);
        relaxed_system.b.push_back(constraints.b[row]);
        relaxed_system.row_numbers.push_back(constraints.row_numbers[row]);
    }
    relaxed_system.a.push_back(vector<double>(init_vertex.size(), 0));
    relaxed_system.b.push_back(0);
    relaxed_system.row_numbers.push_back(-1);

    vector<bool> constraints_ok = ConstraintCheckFull(constraints, init_vertex);
#ifdef VERBOSE
    std::cout << "-------------------------------------------------------------------------\n";
    std::cout << "Constraint " << relaxed_equation_idx << " relaxed" << std::endl;
    std::cout << "InitPoint: " << init_vertex << std::endl;

    std::cout << "1 Constraint check: (";
    for (auto result : constraints_ok)
        std::cout << result << " ";
    std::cout << ")\n"
              << std::endl;
#endif

    Solution solved_relaxed_equation = SolveEquation(std::move(relaxed_system));

    // Create a line equation from the solved relaxed equations
    const auto it = std::find(solved_relaxed_equation.used_row_indexes.begin(), solved_relaxed_equation.used_row_indexes.end(), -1);
    size_t free_param_idx = it - solved_relaxed_equation.used_row_indexes.begin();
    Column direction = ExtractColumnFromMatrix(solved_relaxed_equation.A, free_param_idx);
    direction = ScalarMultiplyVector(direction, -1);
    direction[free_param_idx] = 1;
    NormalizeVector(direction);

#ifdef VERBOSE
    std::cout << "Direction: " << direction << std::endl;
#endif

    // Check if C increases along the positive direction, otherwise swap direction
    Column vertex_plus_step = LineEquation(init_vertex, direction, 1);
    const double current_C = DotProduct(init_vertex, c);
    const double next_C = DotProduct(vertex_plus_step, c);
    if (next_C < current_C)
    {
        direction = ScalarMultiplyVector(direction, -1);
#ifdef VERBOSE
        std::cout << "Positive direction goes into negative C -> reverse the direction of the line" << std::endl;
        std::cout << "New direction: " << direction << std::endl;
#endif
    }
    else if (next_C == current_C)
    {
        Solution empty_sol = Solution();
        FollowEdgeResult result(empty_sol, FollowEdgeResultEnum::NO_FEASIBLE_DIRECTION);
        return result;
    }

    // Make sure that the positive direction of the line leads into area within constraints
    vertex_plus_step = LineEquation(init_vertex, direction, 1);
    constraints_ok = ConstraintCheckFull(constraints, vertex_plus_step);
#ifdef VERBOSE
    for (auto result : constraints_ok)
        std::cout << result << " ";
    std::cout << ")\n"
              << std::endl;
#endif
    // if (false == ConstraintCheck(constraints, vertex_plus_step))
    if (false == constraints_ok[relaxed_equation_idx])
    {
#ifdef VERBOSE
        std::cout << "Wrong relaxed constraint." << std::endl;
#endif
        Solution empty_sol = Solution();
        FollowEdgeResult result(empty_sol, FollowEdgeResultEnum::WRONG_RELAXED_CONSTRAINT);
        return result;
    }

    // Follow the line until a constraint is broken
    double step_size = 0.1;
    Column current_point = init_vertex;
    while (true)
    {
        Column next_point = LineEquation(current_point, direction, step_size);

#ifdef VERBOSE
        std::cout << "\nCurrent point: " << current_point << " | Step size: " << step_size << std::endl;
        std::cout << "Next point: " << next_point << "\n";
        // std::cout << "Next point C: " << DotProduct(next_point, c) << "\n";
        std::cout << "Constraint check:\n";
#endif

        constraints_ok = ConstraintCheckFull(constraints, next_point);
        const unsigned int num_broken_constraints = constraints_ok.size() - std::accumulate(std::begin(constraints_ok),
                                                                                            std::end(constraints_ok), 0);

        if (0 == num_broken_constraints)
        {
            step_size *= 1.5;
            current_point = next_point;
        }
        else if (1 == num_broken_constraints)
        {
            const unsigned int index_of_broken_constraint = find(constraints_ok.begin(), constraints_ok.end(), false) - constraints_ok.begin();

            if (index_of_broken_constraint == relaxed_equation_idx)
            {
                Solution empty_sol = Solution();
                FollowEdgeResult result(empty_sol, FollowEdgeResultEnum::WRONG_RELAXED_CONSTRAINT);
                return result;
            }
            // Next vertex can be calculated exactly by finding the intercept between current line and the broken constraint
            LinearSystem &determined_system = relaxed_system;

            // Replace the zeros row with the new constraint
            for (size_t i = 0; i < determined_system.a.size(); ++i) // find the zeros row (it has idx -1)
            {
                if (-1 == determined_system.row_numbers[i])
                {
                    determined_system.a[i] = constraints.a[index_of_broken_constraint];
                    determined_system.b[i] = constraints.b[index_of_broken_constraint];
                    determined_system.row_numbers[i] = constraints.row_numbers[index_of_broken_constraint];
                    break;
                }
            }

            Solution next_vertex(std::move(determined_system), solution_Type::UNIQUE_SOLUTION);
            FollowEdgeResult result(next_vertex, FollowEdgeResultEnum::NEXT_VERTEX_FOUND);
            return result;
        }
        else if (num_broken_constraints > 1)
        {
            step_size *= 0.5;
        }

        if (step_size > 10'000'000) // The linear system has no maximal solution
        {
            Solution empty_sol = Solution();
            FollowEdgeResult result(empty_sol, FollowEdgeResultEnum::NO_MAX_SOLUTION);
            return result;
        }
        else if (step_size < 100 * EPS)
        {
            Solution empty_sol = Solution();
            FollowEdgeResult result(empty_sol, FollowEdgeResultEnum::WRONG_RELAXED_CONSTRAINT);
            return result;
        }
    }
}

void AddNonnegativityConstraints(LinearSystem &system)
{
    Matrix &A = system.a;
    Column &b = system.b;
    vector<int> &indices = system.row_numbers;

    const int dim = A[0].size();

    for (int d = 0; d < dim; ++d)
    {
        vector<double> nonnegativity_a(dim, 0);
        nonnegativity_a[d] = -1;
        double nonnegativity_b = 0;

        A.push_back(nonnegativity_a);
        b.push_back(nonnegativity_b);
        indices.push_back(A.size() - 1);
    }
}

/*******************\
\*******************/

pair<int, vector<double>> solve_diet_problem(
    Matrix &A,
    vector<double> &b,
    vector<double> &c)
{
    vector<int> row_numbers(A.size(), 0);
    std::iota(row_numbers.begin(), row_numbers.end(), 0);
    LinearSystem constraints(A, b, row_numbers);
    AddNonnegativityConstraints(constraints);
    // TweakSystem(constraints);

    Solution solution = GetInitialPoint(constraints);
    if (solution.type == solution_Type::NO_SOLUTION)
    {
        return {-1, vector<double>(b.size(), 0)};
    }

    // Equation_idx = index of an equation to relax
    size_t equation_idx = 0;
    int attempts = 25;
    while (equation_idx < solution.A[0].size())
    {
        FollowEdgeResult new_solution = FollowEdge(solution, constraints, equation_idx, c);

        switch (new_solution.result)
        {
        case FollowEdgeResultEnum::NEXT_VERTEX_FOUND:
        {

            solution = SolveEquation(new_solution.solution);
#ifdef VERBOSE2
            std::cout << "New max C vertex found. Defined by constrains: ";
            std::cout << std::fixed;
            std::cout << std::setprecision(12);
            for (const auto idx : solution.used_row_indexes)
                std::cout << idx << " ";
            std::cout << std::endl;
            std::cout << "Coordinates: ";
            for (const auto c : solution.b)
                std::cout << c << " ";
            std::cout << "\nC: " << DotProduct(solution.b, c);
            std::cout << "\n**************************************************************************\n"
                      << std::endl;
#endif
            equation_idx = 0;
            break;
        }
        case FollowEdgeResultEnum::WRONG_RELAXED_CONSTRAINT:
        {
#ifdef VERBOSE
            std::cout << "> WRONG RELAXED CONSTRAINT" << std::endl;
#endif
            ++equation_idx;
            break;
        }
        case FollowEdgeResultEnum::NO_FEASIBLE_DIRECTION:
        {
#ifdef VERBOSE
            std::cout << "> NO FEASIBLE DIRECTION (e " << equation_idx << ", a " << attempts << ")" << std::endl;
#endif
            // Solver stuck, pick another point
            if (attempts > 0 && equation_idx + 1 == solution.A[0].size())
            {
#ifdef VERBOSE
                std::cout << "> PICKING NEW POINT" << std::endl;
#endif
                solution = GetInitialPoint(constraints);
                equation_idx = 0;
                --attempts;
#ifdef VERBOSE
                std::cout << "> A " << attempts << std::endl;
#endif
            }
            else
            {
                ++equation_idx;
#ifdef VERBOSE
                std::cout << "> E " << equation_idx << std::endl;
#endif
            }
            break;
        }
        case FollowEdgeResultEnum::NO_MAX_SOLUTION:
        {
            return {1, vector<double>(b.size(), 0)};
        }
        }
    }

    Solution row_reduced_solution = SolveEquation(solution);
    return {0, row_reduced_solution.b};
}

int main()
{
    int n, m;
    cin >> n >> m;
    Matrix A(n, vector<double>(m));
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < m; j++)
        {
            cin >> A[i][j];
        }
    }
    vector<double> b(n);
    for (int i = 0; i < n; i++)
    {
        cin >> b[i];
    }
    vector<double> c(m);
    for (int i = 0; i < m; i++)
    {
        cin >> c[i];
    }

    // Remove zero rows
    const vector<double> all_zero_row(m, 0);
    auto it_end_new = std::remove_if(A.begin(), A.end(), [&](const vector<double> &other)
                                     { return other == all_zero_row; });
    A.erase(it_end_new, A.end());

    // Normalize rows
    if (A.size() > 0)
    {
        for (size_t row = 0; row < A.size(); ++row)
        {
            auto compare_lambda = [](const int &max, const int &max_candidate)
            { return fabs(max) < fabs(max_candidate); };
            const double max_abs_a_row = fabs(*std::max_element(A[row].begin(), A[row].end(), compare_lambda));
            const double max_abs_b_row = fabs(*std::max_element(b.begin(), b.end(), compare_lambda));
            const double max_abs = std::max(max_abs_a_row, max_abs_b_row);

            if (max_abs == 0)
                continue;

            for (size_t col = 0; col < A[0].size(); ++col)
                A[row][col] /= max_abs / 1000;
            b[row] /= max_abs / 1000;
        }
    }

// std::cout << "A: " << std::endl;
// PrintMatrix(A);

// std::cout << "b: " << b << std::endl;


#ifdef REPEAT
    for (int attempt = 0; attempt < num_attempts; ++attempt)
    {
#endif
        pair<int, vector<double>> ans;
        if (A.empty())
        {
            ans.first = 0;
            ans.second = all_zero_row;
        }
        else
        {
            ans = solve_diet_problem(A, b, c);
        }

        switch (ans.first)
        {
        case -1:
            printf("No solution\n");
            break;
        case 0:
            printf("Bounded solution\n");
            for (int i = 0; i < m; i++)
            {
                printf("%.16f%c", ans.second[i], " \n"[i + 1 == m]);
            }
            break;
        case 1:
            printf("Infinity\n");
            break;
        }
#ifdef REPEAT
    }
#endif
    return 0;
}
