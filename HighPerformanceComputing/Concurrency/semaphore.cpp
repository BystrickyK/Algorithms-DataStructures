#include <iostream>
#include <thread>
#include <condition_variable>
#include <mutex>
#include <semaphore>
#include <chrono>
#include <vector>
#include <array>

std::counting_semaphore semaphore_{8};

void charging()
{
    const auto id = std::this_thread::get_id();
    semaphore_.acquire();
    printf("Phone %d is charging...\n", id);
    std::this_thread::sleep_for(std::chrono::milliseconds(rand() % 2000 + 1000));
    printf("Phone %d is DONE charging...\n", id);
    semaphore_.release();
}

int main()
{
    std::array<std::thread, 32> threads;
    for (size_t i = 0; i < threads.size(); ++i)
        threads[i] = std::thread(charging);

    for (auto& thr : threads)
        thr.join();

    std::cout << "Finished charging!" << std::endl;
    return 0;
}