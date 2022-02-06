#include <iostream>
#include <vector>

long long get_fibonacci_huge_naive(long long n, long long m) {
    if (n <= 1)
        return n;

    long long previous = 0;
    long long current  = 1;

    for (long long i = 0; i < n - 1; ++i) {
        long long tmp_previous = previous;
        previous = current;
        current = tmp_previous + current;
    }

    return current % m;
}

long long get_fibonacci_huge_fast(long long n, long long m)
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

int main() {
    long long n, m;
    std::cin >> n;
    std::cin >> m;
    auto fast = get_fibonacci_huge_fast(n, m);
    std::cout << fast;
    // for (uint32_t i = 0; i<3000; ++i)
    // {
    //   n = rand() % 20;
    //   m = rand() % 5 + 2;
    //   std::cout << "n: " << n << " | m: " << m << "\n";
    //   auto naive = get_fibonacci_huge_naive(n, m);
    //   auto fast = get_fibonacci_huge_fast(n, m);
    //   std::cout << naive << '\n';
    //   std::cout << fast << '\n';
    //   if (naive != fast)
    //   {
    //     std::cout << "Results inconsistent." << std::endl;
    //     break;
    //   }
    // }
}
