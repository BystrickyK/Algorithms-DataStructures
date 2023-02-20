#include <cmath>
#include <iostream>
#include <vector>

const double EPS = 1e-6;
const int PRECISION = 4;

typedef std::vector<double> Column;
typedef std::vector<double> Row;
typedef std::vector<Row> Matrix;

struct LinearSystem {
    LinearSystem(const Matrix &a, const Column &b):
        a(a),
        b(b)
    {}

    Matrix a;
    Column b;
};

struct Position {
    Position(int column, int row):
        column(column),
        row(row)
    {}

    int column;
    int row;
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

void PrintCol(const Column& col)
{
    std::cout << "Column\n";
    for (const auto& val: col)
        std::cout << val << "\n";
    std::cout << std::endl;
}

LinearSystem ReadEquation() {
    int size;
    std::cin >> size;
    Matrix a(size, std::vector <double> (size, 0.0));
    Column b(size, 0.0);
    for (int row = 0; row < size; ++row) {
        for (int column = 0; column < size; ++column)
            std::cin >> a[row][column];
        std::cin >> b[row];
    }
    return LinearSystem(a, b);
}

Position SelectPivotElement(
  const Matrix &a, 
  std::vector <bool> &used_rows, 
  std::vector <bool> &used_columns) 
  {
    Position pivot_element(-1, -1);

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

    return pivot_element;
}

void SwapLines(Matrix &a, Column &b, std::vector <bool> &used_rows, Position &pivot_element) {
    std::swap(a[pivot_element.column], a[pivot_element.row]);
    std::swap(b[pivot_element.column], b[pivot_element.row]);
    std::swap(used_rows[pivot_element.column], used_rows[pivot_element.row]);
    pivot_element.row = pivot_element.column;
}

void ProcessPivotElement(Matrix &a, Column &b, const Position &pivot_element) 
{
    auto pivot_row = pivot_element.row;
    auto pivot_column = pivot_element.column;

    const int x_dim = b.size();
    if (pivot_row >= x_dim || pivot_column >= x_dim)
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

void RowReduce(Matrix& a, Column& b)
{
    const int size = a.size();
    std::vector <bool> used_columns(size, false);
    std::vector <bool> used_rows(size, false);
    for (int step = 0; step < size; ++step) {
        Position pivot_element = SelectPivotElement(a, used_rows, used_columns);
        SwapLines(a, b, used_rows, pivot_element);
        ProcessPivotElement(a, b, pivot_element);
        MarkPivotElementUsed(pivot_element, used_rows, used_columns);
    }
}

Column SolveEquation(LinearSystem& equation) {
    Matrix &a = equation.a;
    Column &b = equation.b;

    RowReduce(a, b);

    return b;
}

void PrintColumn(const Column &column) {
    int size = column.size();
    std::cout.precision(PRECISION);
    for (int row = 0; row < size; ++row)
        std::cout << column[row] << std::endl;
}

int main() {
    LinearSystem equation = ReadEquation();
    Column solution = SolveEquation(equation);
    PrintColumn(solution);
    return 0;
}
