#include <iostream>
#include <vector>
#include <algorithm>
#include <cassert>

long long MaxPairwiseProduct(const std::vector<int>& numbers) {
    long long max_product = 0;
    int n = numbers.size();

    for (int first = 0; first < n; ++first) {
        for (int second = first + 1; second < n; ++second) {
            max_product = std::max(max_product,
                ((long long)numbers[first]) * numbers[second]);

        }
    }

    return max_product;
}

long long MaxPairwiseProductFast(const std::vector<int>& numbers) {
    long long max_product = 0;
    int n = numbers.size();

    size_t max1_idx = 0;
    size_t max2_idx = 1;
    int max_num = numbers[0];

    for (size_t idx = 0; idx < n; ++idx)
    {
      if (numbers[idx] > numbers[max1_idx])
      {
        max2_idx = max1_idx;
        max1_idx = idx;
      }
    }

    for (size_t idx = 1; idx < n; ++idx)
    {
      if (numbers[idx] > numbers[max2_idx] && idx != max1_idx)
      {
        max2_idx = idx;
      }
    }

    assert(max1_idx != max2_idx);
    max_product = ((long long) numbers[max1_idx]) * numbers[max2_idx];

    return max_product;
}

int main() {
    int n;
    std::cin >> n;
    std::vector<int> numbers(n);
    for (int i = 0; i < n; ++i) {
        std::cin >> numbers[i];
    }

    std::cout << MaxPairwiseProductFast(numbers) << "\n";
    return 0;
}
