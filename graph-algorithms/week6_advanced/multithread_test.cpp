#include <thread>
#include <mutex>
#include <chrono>

#include <iostream>
#include <string>
#include <sstream>

void safe_print(const std::string& str)
{
    static std::mutex io_lock;

    io_lock.lock();
    std::cout << str << std::endl;
    io_lock.unlock();
}

void thread_fun(unsigned int thread_id)
{
    while(true)
    {
        std::ostringstream stringStream;
        stringStream << "Thread " << thread_id << " says hello!";
        safe_print(stringStream.str());

        unsigned int wait_time = std::rand() % 10;
        std::this_thread::sleep_for(std::chrono::microseconds(wait_time));
    }
}


int main()
{
    std::array<std::thread, 8> t_Worker; 
    for (uint i = 0; i < t_Worker.size(); ++i)
        t_Worker[i] = std::thread(thread_fun, i);

    while(true);

    return 0;
}