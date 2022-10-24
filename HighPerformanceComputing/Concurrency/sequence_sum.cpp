#include <future>
#include <iostream>
#include <vector>
#include <thread>
#include <chrono>
#include <algorithm>
#include <numeric>

static std::mutex cout_mutex;

unsigned long long sequential_sum(const std::vector<short int>& vec, size_t lo, size_t hi)
{
    unsigned long long sum = 0;
    for (size_t i = lo; i < hi; ++i)
        sum += vec[i];
    return sum;
}

unsigned long long parallel_sum(const std::vector<short int>& vec, size_t lo, size_t hi, size_t depth)
{
    unsigned long long sum = 0;

    if (depth > 3) // conquer
    {
        sum = sequential_sum(vec, lo, hi);
    }
    else // divide
    {
        const size_t mid = lo + (hi-lo)/2;
        std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
        const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
        sum = left_sum.get() + right_sum;
    }

    return sum;
}

int main()
{
    std::vector<short int> vec;

    std::cout << "Generating 100 000 000 random numbers" << std::endl;
    for(size_t i = 0; i < 500'000'000; ++i)
    {
        vec.push_back(rand()%256);
    }
    std::cout << "100 000 000 random numbers generated" << std::endl;

    const auto start_time_sequential = std::chrono::steady_clock::now();
    const auto sum_sequential = sequential_sum(vec, 0, vec.size());
    const auto end_time_sequential = std::chrono::steady_clock::now();
    std::cout << "Sequential sum: " << sum_sequential
    << "\nSequential runtime: " << std::chrono::duration_cast<std::chrono::milliseconds>(end_time_sequential-start_time_sequential).count() << "ms"
    << std::endl;

    const auto start_time_parallel = std::chrono::steady_clock::now();
    const auto sum_parallel = parallel_sum(vec, 0, vec.size(), 0);
    const auto end_time_parallel = std::chrono::steady_clock::now();
    std::cout << "Parallel sum: " << sum_parallel
    << "\nParallel runtime: " << std::chrono::duration_cast<std::chrono::milliseconds>(end_time_parallel-start_time_parallel).count() << "ms"
    << std::endl;
    return 0;
}

