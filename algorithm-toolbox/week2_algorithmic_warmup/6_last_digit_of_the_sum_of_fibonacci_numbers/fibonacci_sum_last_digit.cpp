#include <iostream>
#include <vector>

int fibonacci_sum_naive(long long n) {
    if (n <= 1)
        return n;

    long long previous = 0;
    long long current  = 1;
    long long sum      = 1;

    for (long long i = 0; i < n - 1; ++i) {
        long long tmp_previous = previous;
        previous = current;
        current = tmp_previous + current;
        sum += current;
    }

    return sum % 10;
}

std::vector<uint8_t> last_digit_fibonacci_sum_period(uint8_t m)
{
    std::vector<uint8_t> fib_sum_last_digit_vec;
    fib_sum_last_digit_vec.reserve(64);

    long long i = 0;

    uint32_t current = 0;
    uint32_t current_sum_digit = 0;
    uint32_t next = 1;
    uint32_t next_sum_digit = 1;

    fib_sum_last_digit_vec.push_back(current_sum_digit);
    // std::cout << i++ << " | " << current << " | " << current_sum_digit << "\n";

    while (!(current_sum_digit==0 && next_sum_digit==1) || i < 2)
    {
      current = (next+=current) - current;
      current %= 10;
      next %= 10;

      current_sum_digit = (next_sum_digit+=next) - next;
      current_sum_digit %= 10;
      next_sum_digit %= 10;

      fib_sum_last_digit_vec.push_back(current_sum_digit);
      ++i;
      // std::cout << i++ << " | " << current << " | " << current_sum_digit << "\n";
    }

    fib_sum_last_digit_vec.pop_back();
    return fib_sum_last_digit_vec;
}

  auto pisano_period_last_digit = last_digit_fibonacci_sum_period(10);
int main() {
    long long n = 0;
    std::cin >> n;
    std::cout << +pisano_period_last_digit[n%pisano_period_last_digit.size()];
}
