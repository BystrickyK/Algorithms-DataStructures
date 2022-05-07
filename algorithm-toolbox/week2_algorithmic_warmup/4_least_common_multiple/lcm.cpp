#include <iostream>


long long lcm_naive(int a, int b) {
  for (long l = 1; l <= (long long) a * b; ++l)
    if (l % a == 0 && l % b == 0)
      return l;

  return (long long) a * b;
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

long long lcm_fast(long long a, long long b)
{
  long long gcd = gcd_fast(a, b);
  return (abs(a) / gcd) * abs(b) ;
}

int main() {
  int a, b;
  std::cin >> a >> b;
  std::cout << lcm_fast(a, b) << std::endl;
  return 0;
}
