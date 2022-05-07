#include <iostream>
#include <deque>
#include <algorithm>
#include <iomanip>

using std::deque;

class item
{
public:
    item(){}
    double value;
    double weight;

    inline double value_density() const
    {
        return value/weight;
    }

    bool operator<(const item& other)
    {
        return this->value_density() > other.value_density();
    }
};

double get_optimal_value(int capacity, deque<item>& items)
{
  double value = 0.0;

  std::sort(items.begin(), items.end());
  // std::cout << "Sorted items: \n";
  for (auto it = items.cbegin(); it != items.cend(); ++it)
    {
        // std::cout << it->value << " | " << it->weight << " | " << it->value_density() << "\n";
    }

  while (capacity > 0 && !items.empty())
  {
      if (capacity >= items[0].weight)
      {
          value += items[0].value;
          capacity -= items[0].weight;
          items.pop_front();
      }
      else
      {
          value += capacity * items[0].value_density();
          items[0].value -= value;
          items[0].weight -= capacity;
          capacity = 0;
      }
  }

  return value;
}

int main()
{
  int n;
  int capacity;
  std::cin >> n >> capacity;
  deque<item> items(n);
  for (int i = 0; i < n; i++)
    std::cin >> items[i].value >> items[i].weight;

  double optimal_value = get_optimal_value(capacity, items);

  std::cout << std::setprecision(4) << std::fixed;
  std::cout << optimal_value << std::endl;
  return 0;
}
