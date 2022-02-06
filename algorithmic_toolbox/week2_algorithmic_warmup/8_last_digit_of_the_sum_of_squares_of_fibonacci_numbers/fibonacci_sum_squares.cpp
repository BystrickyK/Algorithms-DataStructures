#include <iostream>
#include <vector>

int fibonacci_sum_squares_naive(long long n) {
    if (n <= 1)
        return n;

    long long previous = 0;
    long long current  = 1;
    long long sum      = 1;

    for (long long i = 0; i < n - 1; ++i) {
        long long tmp_previous = previous;
        previous = current;
        current = tmp_previous + current;
        sum += current * current;
    }

    return sum % 10;
}

uint8_t get_fibonacci_huge_fast(long long n, long long m)
{
    if (n <= 1)
        return n;

    std::vector<long long> fibs;
    fibs.reserve(1000);

    long long current = 0;
    long long next = 1;

    fibs.push_back(current);
    current = (next+=current) - current;

    long long i = 0;
    while (!(current==0 && next==1))
    {
      fibs.push_back(current%m);
      current = (next+=current) - current;
      next %= m;
      // std::cout << i++ << " | " << current << " - " << next << "\n";
    }

    long long pisano_period = fibs.size();
    return fibs[n%pisano_period];
}

uint8_t fibonacci_sum_squares_fast(long long n)
{
  auto mod10_side_1 = get_fibonacci_huge_fast(n, 10);
  auto mod10_side_2 = get_fibonacci_huge_fast(n+1, 10);
  return (mod10_side_1 * mod10_side_2) % 10;
}

int main() {
    long long n = 0;
    std::cin >> n;
    std::cout << +fibonacci_sum_squares_fast(n);
}
