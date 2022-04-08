#include <iostream>
#include <vector>

using std::vector;

// #define DEBUG

long long merge(vector<int> &a, vector<int> &b, size_t left, size_t mid, size_t right)
{
  long long number_of_inversions = 0;  

  size_t idx_left = left;  
  size_t idx_right = mid;  
  size_t i = left;

  while ((idx_left < mid) && (idx_right <= right))
  {
    if (a[idx_left] <= a[idx_right])
    {
      b[i++] = a[idx_left++];
    }
    else
    {
      #ifdef DEBUG
      std::cout << "Left: " << left << " | Right: " << right << "\n";
      std::cout << "Swapping indices: " << idx_left << " | " << idx_right << "\n";
      std::cout << "Values: " << a[idx_left] << " | " << a[idx_right] << "\n\n";
      #endif

      b[i++] = a[idx_right++];
      number_of_inversions += (mid - idx_left);
    }
  }

  while (idx_right <= right)
    b[i++] = a[idx_right++];

  while (idx_left < mid) 
    b[i++] = a[idx_left++];

  for(size_t i = left; i <= right; ++i)
    a[i] = b[i];

  return number_of_inversions;
}

long long get_number_of_inversions(vector<int> &a, vector<int> &b, size_t left, size_t right) {
  long long number_of_inversions = 0;
  if (right > left)
  {
    size_t ave = left + (right - left) / 2;

    number_of_inversions += get_number_of_inversions(a, b, left, ave);
    number_of_inversions += get_number_of_inversions(a, b, ave+1, right);
    number_of_inversions += merge(a, b, left, ave+1, right);
  }
  return number_of_inversions;
}

int main() {
  int n;
  std::cin >> n;
  vector<int> a(n);
  for (size_t i = 0; i < a.size(); i++) {
    std::cin >> a[i];
  }
  vector<int> b(a.size());
  std::cout << get_number_of_inversions(a, b, 0, a.size() - 1) << '\n';

  #ifdef DEBUG
  for (auto it = a.begin(); it != a.end(); ++it)
    std::cout << *it << " ";
  
  std::cout << std::endl; 

  for (auto it = b.begin(); it != b.end(); ++it)
    std::cout << *it << " ";
  #endif
}
