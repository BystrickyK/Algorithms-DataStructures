#include <iostream>
#include <algorithm>
#include <vector>
#include <array>
#include <climits>

std::array<int, 3> coins = {1, 3, 4};

int get_change(int m)
{
  std::vector<int> results;
  results.reserve(m + 1);
  results.push_back(0);

  for (int current = 1; current<=m; ++current)
  {
    int min = INT_MAX;
    for (const auto& coin: coins)
    {
      int diff = current - coin;
      if (diff >= 0)
        min = std::min(min, results[diff] + 1);
    }
    results.push_back(min);
  }
  return results[m];
}

int main() {
  int m;
  std::cin >> m;
  std::cout << get_change(m) << '\n';
}
