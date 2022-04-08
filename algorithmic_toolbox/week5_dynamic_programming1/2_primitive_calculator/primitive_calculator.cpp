#include <iostream>
#include <vector>
#include <algorithm>
#include <climits>

using std::vector;

vector<int> optimal_sequence(int number)
{
  std::vector<int> number_of_steps;
  number_of_steps.reserve(number);
  number_of_steps.push_back(1);
  std::vector<int> previous_step_array;
  previous_step_array.reserve(number);
  previous_step_array.push_back(0);

  int n;
  int min_number_of_steps;
  int previous_step;
  for(uint32_t i = 1; i<=number; ++i)
  {
    min_number_of_steps = INT_MAX;

    if (i % 3 == 0)
    {
       n = i / 3;
       if ((number_of_steps[n]+1) < min_number_of_steps)
       {
         min_number_of_steps = number_of_steps[n] + 1;
         previous_step = n;
       }
    }

    if (i % 2 == 0)
    {
       n = i / 2;
       if ((number_of_steps[n]+1) < min_number_of_steps)
       {
         min_number_of_steps = number_of_steps[n] + 1;
         previous_step = n;
       }
    }

   if ((number_of_steps[i-1]+1) < min_number_of_steps)
   {
     min_number_of_steps = number_of_steps[i-1] + 1;
     previous_step = i-1;
   }

    number_of_steps.push_back(min_number_of_steps);
    previous_step_array.push_back(previous_step);
  }

  std::vector<int> step_sequence;
  uint32_t current = number;
  while(current != 0)
  {
    step_sequence.push_back(current);
    current = previous_step_array[current];
  }

  std::reverse(step_sequence.begin(), step_sequence.end());
  return step_sequence;
}

int main() {
  int n;
  std::cin >> n;
  vector<int> sequence = optimal_sequence(n);
  std::cout << sequence.size() - 1 << std::endl;
  for (size_t i = 0; i < sequence.size(); ++i) {
    std::cout << sequence[i] << " ";
  }
}
