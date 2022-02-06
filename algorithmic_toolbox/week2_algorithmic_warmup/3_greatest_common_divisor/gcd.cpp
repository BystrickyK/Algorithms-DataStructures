#include <iostream>

int gcd_naive(int a, int b) {
  int current_gcd = 1;
  for (int d = 2; d <= a && d <= b; d++) {
    if (a % d == 0 && b % d == 0) {
      if (d > current_gcd) {
        current_gcd = d;
      }
    }
  }
  return current_gcd;
}

long long gcd_fast(long long a, long long b)
{
    if (a == 0)
      return b;

  if (a > b)
    return gcd_fast(a-b, b);
  else
    return gcd_fast(b-a, a);
}

int main() {
  int a, b;
  std::cin >> a >> b;

  // std::cout << "Naive: " << gcd_naive(a, b) << std::endl;
  // std::cout << "Fast: " << gcd_fast(a, b) << std::endl;
  std::cout << gcd_fast(a, b);
  return 0;
}
