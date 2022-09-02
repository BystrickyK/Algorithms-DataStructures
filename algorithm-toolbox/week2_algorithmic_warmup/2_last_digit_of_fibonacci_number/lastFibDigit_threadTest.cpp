#include <chrono>
#include <thread>
#include <mutex>
#include <iostream>
#include <array>
#include <vector>
#include <deque>
#include <queue>
#include <memory>
#include <sstream>

#define PRINT_PROGRESS

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

class TaskQueue 
{
    public:
        TaskQueue(uint n)
        {
            for (uint i = 0; i < n; ++i)
                m_Queue.push(i);
        }

        unsigned int Pop(){
            std::lock_guard<std::mutex> lock(m_Mutex);

            uint value = m_Queue.front();
            m_Queue.pop();

            return value;
        }

        bool IsEmpty()
        {
            return m_Queue.empty();
        }

    private:
    std::queue<unsigned int> m_Queue;
    std::mutex m_Mutex;
};


class FibbonaciTest
{
    public:
    FibbonaciTest(unsigned int n): 
    m_NumOfFibDigits(n), m_TaskQueue(TaskQueue(n)) 
    {
        m_LastFibDigits.reserve(m_NumOfFibDigits);
    }

    void StartTest()
    {

    }

    bool TestDone()
    {
        return m_TaskQueue.IsEmpty();
    }

    uint GetFibIndex()
    {
        return m_TaskQueue.Pop();
    }

    std::vector<unsigned short> m_LastFibDigits;

    private:
    const unsigned int m_NumOfFibDigits;
    TaskQueue m_TaskQueue;
};

class Printer
{
    public:
    void Print(const std::string& str)
    {
        m_Mutex.lock();
        std::cout << str << std::endl;
        m_Mutex.unlock();
    }

    private: 
    std::mutex m_Mutex;
};

class FibWorker
{
    public:
    FibWorker(uint worker_id, FibbonaciTest* fibbonaciTest, Printer* printer):
    m_WorkerId(worker_id), m_FibbonacciTest(fibbonaciTest), m_Printer(printer)
    {
        std::cout << "Worker " << m_WorkerId << " created." << std::endl;
    }

    void Start()
    {
        m_Thread = std::thread([this]{this->Work();});
    }

    bool Join()
    {
        m_Thread.join();
        std::stringstream stringStream;
        stringStream << "Worker " << m_WorkerId << " joined.";
        m_Printer->Print(stringStream.str());
    }

    private:
    const uint m_WorkerId;
    FibbonaciTest* m_FibbonacciTest;
    Printer* m_Printer;
    std::thread m_Thread;

    void Work()
    {
        while(!m_FibbonacciTest->TestDone())
        {
            uint fib_number_index = m_FibbonacciTest->GetFibIndex();
            unsigned long long result = get_fibonacci_sum_last_digit_fast(fib_number_index);
            m_FibbonacciTest->m_LastFibDigits[fib_number_index] = result;

            #ifdef PRINT_PROGRESS
            std::stringstream stringStream;
            stringStream << "Worker " << m_WorkerId << ": Fib[" << fib_number_index << "] = " << result;
            m_Printer->Print(stringStream.str());
            #endif
        }

        std::stringstream stringStream;
        stringStream << "Worker " << m_WorkerId << " finished work";
        m_Printer->Print(stringStream.str());
    }
};


constexpr uint NumberOfThreads = 12;
int main()
{
    uint number_of_fibs;
    std::cin >> number_of_fibs;

    FibbonaciTest l_FibTest(number_of_fibs);
    Printer l_Printer;

    std::vector<FibWorker> t_Workers;
    t_Workers.reserve(NumberOfThreads);
    uint idx = 1;
    for (uint idx = 0; idx < NumberOfThreads; ++idx)
        t_Workers.push_back(FibWorker(idx, &l_FibTest, &l_Printer));

    auto start_time = std::chrono::system_clock::now();

    for (auto worker_it = t_Workers.begin(); worker_it != t_Workers.end(); ++worker_it)
        (*worker_it).Start();

    for (auto worker_it = t_Workers.begin(); worker_it != t_Workers.end(); ++worker_it)
        (*worker_it).Join();

    auto end_time = std::chrono::system_clock::now();
    auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time);
    std::cout << "Total runtime: " << runtime.count() << " ms." << std::endl;

    return 0;
}