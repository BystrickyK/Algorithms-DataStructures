#include <iostream>
#include <queue>
#include <mutex>
#include <condition_variable>
#include <thread>

class ServingLine
{
    public:
    
    void serve_soup(int i)
    {
        std::unique_lock<std::mutex> ladle_lock(m_Ladle);

        while(m_SoupQueue.size() > 100)
        {
            std::cout << "Producer Thread " << std::this_thread::get_id() << ": the queue is full!" << std::endl;
            m_QueueFree.wait(ladle_lock);
        }

        m_SoupQueue.push(i);

        ladle_lock.unlock();
        m_SoupServed.notify_one();
    }

    int take_soup()
    {
        std::unique_lock<std::mutex> ladle_lock(m_Ladle);

        while (m_SoupQueue.empty())
        {
            std::cout << "Consumer Thread " << std::this_thread::get_id() << ": the queue is empty!" << std::endl;
            m_SoupServed.wait(ladle_lock);
        }

        const int bowl = m_SoupQueue.front();
        m_SoupQueue.pop();

        ladle_lock.unlock();
        m_QueueFree.notify_one();

        return bowl;
    }

    private:
    std::queue<int> m_SoupQueue;
    std::mutex m_Ladle;
    std::condition_variable m_SoupServed;
    std::condition_variable m_QueueFree;
};

ServingLine servingLine;

void soup_producer()
{
    for(int i = 0; i < 10'000'000; ++i)
    {
        servingLine.serve_soup(1);
    }
    servingLine.serve_soup(-1); // signal no more soup

    std::cout << "Producer is done serving soup" << std::endl;
}

void soup_consumer()
{
    int soup_eaten = 0;
    while(true)
    {
        const int bowl = servingLine.take_soup();
        if(bowl == -1) // if there is no more 'real' soup
        {
            servingLine.serve_soup(-1); // return the -1 bowl
            printf("Consumer ate %d bowls of soup.\n", soup_eaten);
            return;
        }
        else
        {
            soup_eaten += bowl;
        }
    }
}

int main()
{
    std::thread pepe(soup_producer);
    std::thread billy(soup_consumer);
    std::thread john(soup_consumer);

    pepe.join();
    billy.join();
    john.join();

    return 0;
}