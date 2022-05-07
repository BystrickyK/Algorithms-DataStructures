#include <iostream>
#include <cassert>
#include <deque>

// The following code calls a naive algorithm for computing a Fibonacci number.
//
// What to do:
// 1. Compile the following code and run it on an input "40" to check that it is slow.
//    You may also want to submit it to the grader to ensure that it gets the "time limit exceeded" message.
// 2. Implement the fibonacci_fast procedure.
// 3. Remove the line that prints the result of the naive algorithm, comment the lines reading the input,
//    uncomment the line with a call to test_solution, compile the program, and run it.
//    This will ensure that your efficient algorithm returns the same as the naive one for small values of n.
// 4. If test_solution() reveals a bug in your implementation, debug it, fix it, and repeat step 3.
// 5. Remove the call to test_solution, uncomment the line with a call to fibonacci_fast (and the lines reading the input),
//    and submit it to the grader.

long long fibonacci_naive(long long n) {
    if (n <= 1)
        return n;

    return fibonacci_naive(n - 1) + fibonacci_naive(n - 2);
}

long long fibonacci_fast(long long n) {
  if (n < 2)
  {
    return n;
  }

  std::deque<long long> last_fibs;
  last_fibs.push_back(0);
  last_fibs.push_back(1);

  for (size_t i = 1; i < n; ++i)
  {
    long long new_fib = 0;
    for (auto it = last_fibs.begin(); it!= last_fibs.end(); ++it)
    {
      new_fib += *it;
  }
    last_fibs.pop_front();
    last_fibs.push_back(new_fib);
  }

  return *(--last_fibs.end());
}

int main()
{
    int n = 0;
    std::cin >> n;
    std::cout << fibonacci_fast(n);
    return 0;
}
