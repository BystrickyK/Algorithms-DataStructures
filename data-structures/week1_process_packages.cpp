#include <iostream>
#include <queue>
#include <vector>

struct Request {
    Request(int arrival_time, int process_time):
        arrival_time(arrival_time),
        process_time(process_time)
    {}

    int arrival_time;
    int process_time;
};

struct Response {
    Response(bool dropped, int start_time):
        dropped(dropped),
        start_time(start_time)
    {}

    bool dropped;
    int start_time;
};

class Buffer {
public:
    Buffer(int size):
        size_(size),
        finish_time_()
    {}

    Response Process(const Request& request) {
        // write your code here

        // Clear all the requests that have been processed by the time the current request arrived
        for (uint16_t queue_position = 0; queue_position < finish_time_.size(); queue_position++) {
            if (request.arrival_time >= finish_time_.front()) finish_time_.pop_front();
            else break; // If an element hasn't been popped, all the other remaining elements also wouldn't have been popped
        }

        if (finish_time_.empty()) {
            finish_time_.emplace_front(request.arrival_time + request.process_time);
            return Response(0, request.arrival_time);
        }

        if (finish_time_.size() >= size_) {
            return Response(-1, request.arrival_time);
        }

        Response response(0, finish_time_.back());
        finish_time_.emplace_back(finish_time_.back() + request.process_time);
        return response;
    }

private:
    int size_;
    std::deque <int> finish_time_;
};

std::vector <Request> ReadRequests() {
    std::vector <Request> requests;
    int count;
    std::cin >> count;
    for (int i = 0; i < count; ++i) {
        int arrival_time, process_time;
        std::cin >> arrival_time >> process_time;
        requests.push_back(Request(arrival_time, process_time));
    }
    return requests;
}

std::vector <Response> ProcessRequests(const std::vector <Request> &requests, Buffer *buffer) {
    std::vector <Response> responses;
    for (int i = 0; i < requests.size(); ++i)
        responses.push_back(buffer->Process(requests[i]));
    return responses;
}

void PrintResponses(const std::vector <Response> &responses) {
    for (int i = 0; i < responses.size(); ++i)
        std::cout << (responses[i].dropped ? -1 : responses[i].start_time) << std::endl;
}

int main() {
    int size;
    std::cin >> size;
    std::vector <Request> requests = ReadRequests();

    Buffer buffer(size);
    std::vector <Response> responses = ProcessRequests(requests, &buffer);

    PrintResponses(responses);
    return 0;
}
