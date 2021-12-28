#include <iostream>
#include <vector>
#include <algorithm>

using std::vector;
using std::cin;
using std::cout;
//using std::swap;
using std::pair;
using std::make_pair;


class HeapBuilder {
private:
    vector<int> data_;
    vector< pair<int, int> > swaps_;

    size_t Parent_(size_t i) {
        return (i+1) / 2 - 1;
    }

    size_t LeftChild_(size_t i) {
        return (i+1) * 2 - 1;
    }

    size_t RightChild_(size_t i) {
        return (i+1) * 2;
    }

    void SiftDown_(size_t i) { // min-heap sift down method
        size_t min_index = i;
        size_t left = LeftChild_(i);
        size_t right = RightChild_(i);
        if (left < data_.size() && data_[left] < data_[min_index])
            min_index = left;
        if (right < data_.size() &&data_[right] < data_[min_index])
            min_index = right;
        if (min_index != i) {
            std::swap(data_[i], data_[min_index]);
          swaps_.push_back(make_pair(i, min_index));
            SiftDown_(min_index);
        }
    }

  void WriteResponse_() const {
    cout << swaps_.size() << "\n";
    for (size_t i = 0; i < swaps_.size(); ++i) {
      cout << swaps_[i].first << " " << swaps_[i].second << "\n";
    }
  }

  void ReadData_() {
    int n;
    cin >> n;
    data_.resize(n);
    for(int i = 0; i < n; ++i)
      cin >> data_[i];
  }

  void GenerateSwaps_() {
    swaps_.clear();
    // The following naive implementation just sorts 
    // the given sequence using selection sort algorithm
    // and saves the resulting sequence of swaps.
    // This turns the given array into a heap, 
    // but in the worst case gives a quadratic number of swaps.
    //
    // TODO: replace by a more efficient implementation
    for (size_t i = data_.size() / 2 + 1; i > 0; i--) {
        SiftDown_(i - 1);
    }
  }

 public:
  void Solve() {
    ReadData_();
    GenerateSwaps_();
    WriteResponse_();
  }
};

int main() {
  std::ios_base::sync_with_stdio(false);
  HeapBuilder heap_builder;
  heap_builder.Solve();
  return 0;
}
