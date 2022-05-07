#include <iostream>
#include <vector>
#include <queue>
#include <cassert>
#include <deque>

using std::cin;
using std::cout;

void max_sliding_window_deque(std::vector<int> const& A, int w) {
    std::deque<int> max_deque;

    for (size_t i = 0; i < w; i++) {
        while (!max_deque.empty() && max_deque.back() < A[i])
            max_deque.pop_back();
        max_deque.push_back(A[i]);
    } // end for

    cout << max_deque.front() << " ";


    for (size_t i = w; i < A.size(); i++) {
        if (A[i - w] == max_deque.front())
            max_deque.pop_front();

        while (!max_deque.empty() && max_deque.back() < A[i])
            max_deque.pop_back();
        max_deque.push_back(A[i]);


        cout << max_deque.front() << " ";
    } // end for
    
    return;
}


int main() {
    int n = 0;
    cin >> n;

    std::vector<int> A(n);
    for (size_t i = 0; i < n; ++i)
        cin >> A.at(i);

    int w = 0;
    cin >> w;

    max_sliding_window_deque(A, w);

    return 0;
}
