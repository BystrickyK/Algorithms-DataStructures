#include <iostream>
#include <deque>

int get_fibonacci_sum_last_digit_naive(int n) {
    if (n <= 1)
        return n;

    int previous = 0;
    int current  = 1;

    for (int i = 0; i < n - 1; ++i) {
        int tmp_previous = previous;
        previous = current;
        current = tmp_previous + current;
    }

    return current % 10;
}

uint8_t get_fibonacci_sum_last_digit_fast(uint32_t n)
{
  if (n < 2)
  {
    return n;
  }

  std::deque<uint8_t> last_fibs;
  last_fibs.push_back(0);
  last_fibs.push_back(1);

  for (size_t i = 1; i < n; ++i)
  {
    uint8_t new_fib = 0;
    for (auto it = last_fibs.begin(); it!= last_fibs.end(); ++it)
    {
      new_fib += *it;
  }
    last_fibs.pop_front();
    last_fibs.push_back(new_fib%10);
  }

  return *(--last_fibs.end());
}

int main()
{
    int n = 0;
    std::cin >> n;

    // for (uint32_t i = 0; i <= n; ++i)
    // {
    //   std::cout << "Naive #" << i << ": " << get_fibonacci_sum_last_digit_naive(i) << "\n";
    //   std::cout << "Fast #" << i << ": " << +get_fibonacci_sum_last_digit_fast(i) << "\n";
    //   std::cout << std::endl;
    // }
    std::cout << +get_fibonacci_sum_last_digit_fast(n);
    return 0;
}
