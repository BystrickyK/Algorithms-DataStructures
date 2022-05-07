#include <iostream>
#include <vector>

using std::vector;

vector<int> optimal_summands(int n) {
    vector<int> summands;
    for (int i = 0; (n-(i+1)) >= 0; ++i)
    {
        summands.push_back(i + 1);
        n -= (i+1);
    }

    summands.back() += n;  // give the rest of n to the last element

    return summands;
}

int main() {
  int n;
  std::cin >> n;
  vector<int> summands = optimal_summands(n);
  std::cout << summands.size() << '\n';
  for (size_t i = 0; i < summands.size(); ++i) {
    std::cout << summands[i] << ' ';
  }
}
