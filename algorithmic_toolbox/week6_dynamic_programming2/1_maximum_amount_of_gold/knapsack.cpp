#include <iostream>
#include <vector>
#include <algorithm>

using std::vector;

typedef vector<vector<int32_t>> array2d;

void print_matrix(const array2d& matrix)
{
  const uint32_t row_size = matrix.size();
  const uint32_t col_size = matrix[0].size();
  std::cout << "\nValue matrix:\n";
  for(size_t item = 0; item < row_size; ++item)
  {
    for(size_t weight = 0; weight < col_size; ++weight)
    {
      std::cout << matrix[item][weight] << "\t";
    }
    std::cout << "\n";
  }
  std::cout << std::endl;
}

int optimal_weight_dp(uint32_t W, const vector<int32_t> &w)
{
  const uint32_t row_size = w.size()+1;
  const uint32_t col_size = W+1;
  array2d matrix(row_size, vector<int32_t>(col_size, 0));

  for(size_t item = 1; item < row_size; ++item)
  {
    for(int32_t weight = 1; weight < col_size; ++weight)
    {
      const int32_t item_weight = w[item-1];
      const int32_t item_value = item_weight; // in this case, the value is exactly proportional to weight
      if(weight - item_weight >= 0) // if item fits in the knaspack
      {
        matrix[item][weight] = std::max(
          matrix[item-1][weight-item_weight] + item_value,
          matrix[item-1][weight]);
      }
      else
      {
        matrix[item][weight] = matrix[item-1][weight];
      }
    }
  }
  // print_matrix(matrix);
  return matrix[row_size-1][col_size-1];
}


int main() {
  int n, W;
  std::cin >> W >> n;
  vector<int> w(n);
  for (int i = 0; i < n; i++) {
    std::cin >> w[i];
  }
  std::cout << optimal_weight_dp(W, w) << '\n';
}
