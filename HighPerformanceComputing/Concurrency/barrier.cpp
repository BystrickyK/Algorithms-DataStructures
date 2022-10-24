#include <iostream>
#include <thread>
#include <mutex>
#include <barrier>
#include <array>

std::barrier init_barrier_(10);
std::barrier barrier_(10);

static int count = 0;
std::mutex count_mutex;

void add_()
{
    init_barrier_.arrive_and_wait();

    printf("Addition thread %d started\n", std::this_thread::get_id());
    {
        std::scoped_lock<std::mutex> count_lock(count_mutex);
        count += 10;
        printf("+Count: %d\n", count);
    }

    printf("Addition thread %d has arrived at the barrier\n", std::this_thread::get_id());
    barrier_.arrive_and_wait();

    printf("Addition thread %d has finished\n", std::this_thread::get_id());
}

void multiply_()
{
    init_barrier_.arrive_and_wait();

    printf("Multiplication thread %d started\n", std::this_thread::get_id());
    printf("Multiplication thread %d has arrived at the barrier\n", std::this_thread::get_id());
    barrier_.arrive_and_wait();
    {
        std::scoped_lock<std::mutex> count_lock(count_mutex);
        count *= 10;
        printf("*Count: %d\n", count);
    }

    printf("Multiplication thread %d has finished\n", std::this_thread::get_id());
}

int main()
{
    std::array<std::thread, 10> threads;
    for (size_t i = 0; i < threads.size(); i=i+2)
    {
        threads[i] = std::thread(add_);
        threads[i+1] = std::thread(multiply_);
    }

    for (auto& thr: threads)
        thr.join();

    printf("Main thread exit\n");

    return 0;
}