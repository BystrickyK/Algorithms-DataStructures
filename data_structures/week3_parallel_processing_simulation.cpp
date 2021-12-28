#include <iostream>
#include <vector>
#include <algorithm>

using std::vector;
using std::cin;
using std::cout;

class JobQueue {
 private:
  size_t num_workers_;
  vector<unsigned long int> jobs_;

  vector<unsigned long int> assigned_workers_;
  vector<unsigned long long int> start_times_;
  vector<unsigned long long int> next_free_time;

  vector<size_t> heap;

  void HeapInsert(size_t index) {
      heap.push_back(index);
      SiftUp(index);
  }

  void WriteResponse() const {
    for (size_t i = 0; i < jobs_.size(); ++i) {
      cout << assigned_workers_[i] << " " << start_times_[i] << "\n";
    }
  }

  void ReadData() {
    int m;
    cin >> num_workers_ >> m;
    jobs_.resize(m);
    for(int i = 0; i < m; ++i)
      cin >> jobs_[i];
  }

  inline size_t Parent_(size_t index) {
        return (index + 1) / 2 - 1;
  }

  inline size_t LeftChild_(size_t index) {
      return (index + 1) * 2 - 1;
  }

  inline size_t RightChild_(size_t index) {
      return (index + 1) * 2;
  }

  void SiftUp(size_t index) {
      if (index == 0) return;

      size_t parent_index = Parent_(index);
      if (parent_index > 0 && GoesBefore(index, parent_index)) {
          std::swap(heap[index], heap[parent_index]);
          SiftUp(parent_index);
      }
      return;
  }

  void SiftDown(size_t index) {
      size_t max_index = index;
      size_t left = LeftChild_(index);
      size_t right = RightChild_(index);
      if (left < heap.size() && GoesBefore(left, max_index))
          max_index = left;
      if (right < heap.size() && GoesBefore(right, max_index))
          max_index = right;
      if (max_index != index) {
          std::swap(heap[index], heap[max_index]);
          SiftDown(max_index);
      }
      return;
  }

  bool GoesBefore(size_t i, size_t j) const {
      size_t i_index = heap[i];
      size_t j_index = heap[j];
      if (next_free_time[i_index] != next_free_time[j_index])
          return next_free_time[i_index] < next_free_time[j_index];
      else return i_index < j_index;
  }

  void AssignJobs() {
    assigned_workers_.resize(jobs_.size());
    start_times_.resize(jobs_.size());

    next_free_time.resize(num_workers_);
    for (unsigned long long int& i : next_free_time) i = 0;

    for (size_t i = 0; i < num_workers_; i++) {
        HeapInsert(i);
    }

    for (size_t i = 0; i < jobs_.size(); ++i) {
      int duration = jobs_[i];
      size_t next_worker = heap[0];
      std::swap(heap[0], heap.back());
      assigned_workers_[i] = next_worker;
      start_times_[i] = next_free_time[next_worker];
      next_free_time[next_worker] += duration;
      SiftUp(heap.size()-1);
      SiftDown(0);
    }
  }

 public:
  JobQueue(): num_workers_(0){}

  void Solve() {
    ReadData();
    AssignJobs();
    WriteResponse();
  }
};

int main() {
  std::ios_base::sync_with_stdio(false);
  JobQueue job_queue;
  job_queue.Solve();
  return 0;
}
