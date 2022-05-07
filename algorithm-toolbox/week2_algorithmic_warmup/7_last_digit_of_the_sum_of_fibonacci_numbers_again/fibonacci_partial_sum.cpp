#include <iostream>
#include <vector>
using std::vector;

long long get_fibonacci_partial_sum_naive(long long from, long long to) {
    long long sum = 0;

    long long current = 0;
    long long next  = 1;

    for (long long i = 0; i <= to; ++i) {
        if (i >= from) {
            sum += current;
        }

        long long new_current = next;
        next = next + current;
        current = new_current;
    }

    return sum % 10;
}

std::vector<int8_t> last_digit_fibonacci_sum_period(uint8_t m)
{
    std::vector<int8_t> fib_sum_last_digit_vec;
    fib_sum_last_digit_vec.reserve(64);

    long long i = 0;

    int32_t current = 0;
    int32_t current_sum_digit = 0;
    int32_t next = 1;
    int32_t next_sum_digit = 1;

    fib_sum_last_digit_vec.push_back(current_sum_digit);

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
    }

    fib_sum_last_digit_vec.pop_back();
    return fib_sum_last_digit_vec;
}

int8_t get_last_digit_of_partial_fib_sum(uint64_t from, uint64_t to)
{
  auto pisano_period_last_digit = last_digit_fibonacci_sum_period(10);
  auto full_sum_1_to = pisano_period_last_digit[to % pisano_period_last_digit.size()];
  auto partial_sum_1_from = pisano_period_last_digit[from % pisano_period_last_digit.size()-1];
  // 
  // std::cout << \
  // +full_sum_1_to << " - " << +partial_sum_1_from << " = " << \
  // full_sum_1_to - partial_sum_1_from << "\n";
  return (full_sum_1_to - partial_sum_1_from + 10) % 10 ;
}

int main() {
    long long from, to;
    std::cin >> from >> to;
    std::cout << +get_last_digit_of_partial_fib_sum(from, to);
}
