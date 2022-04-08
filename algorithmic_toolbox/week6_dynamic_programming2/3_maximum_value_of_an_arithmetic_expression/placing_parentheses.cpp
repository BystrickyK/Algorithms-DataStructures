#include <iostream>
#include <cassert>
#include <string>
#include <vector>
#include <climits>
#include <algorithm>

using std::vector;
using std::string;

typedef vector<vector<int64_t>> array2d;
void print_matrix(const array2d& matrix)
{
  const uint32_t row_size = matrix.size();
  const uint32_t col_size = matrix[0].size();
  std::cout << "\nValue matrix:\n";
  for(size_t item = 0; item < row_size; ++item)
  {
    for(size_t weight = 0; weight < col_size; ++weight)
    {
      std::cout << matrix[item][weight] << "\t";
    }
    std::cout << "\n";
  }
  std::cout << std::endl;
}


enum CharType
{
  NUMBER,
  OPERATION,
  NULL_SYMBOL,
  OTHER
};

CharType eval_symbol(const char& c)
{
  if (c >= 48 && c <= 57)
    return NUMBER;

  switch(c)
  {
    case '+':
    case '-':
    case '*':
      return OPERATION;
      break;
    case '|':
      return NULL_SYMBOL;
      break;
    default:
      return OTHER;
  }
}

void string_parse(const string& str, vector<uint32_t>& nums, vector<char>& ops)
{
  size_t i = 0;
  size_t j = 0;
  while(i < str.size())
  {
    const char current_symbol = str[i];
    const CharType symbol_type = eval_symbol(current_symbol);
    string string_num;
    uint32_t number;
    switch(symbol_type)
    {
      case NUMBER:
        ++i;
        break;
      case OPERATION:
        string_num = str.substr(j, i-j);
        number = std::stoi(string_num);
        nums.push_back(number);
        ops.push_back(str[i]);
        j = ++i;
        break;
      case NULL_SYMBOL:
        string_num = str.substr(j, i-j);
        number = std::stoi(string_num);
        nums.push_back(number);
        ops.push_back(' ');
        j = ++i;
        break;
      default:
        break;
    }
  }
}

void print_eqn(vector<uint32_t>& nums, vector<char>& ops)
{
  for (size_t i = 0; i < nums.size(); ++i)
    std::cout << nums[i] << " " << ops[i] << " ";
}

int64_t eval(long long a, long long b, char op) {
  if (op == '*')
    return a * b;
  else if (op == '+')
    return a + b;
  else if (op == '-')
    return a - b;
  else
    assert(0);
}

void fill_diag(array2d& arr, const vector<uint32_t>& nums)
{
  const size_t arr_size = arr.size();
  for(size_t i = 0; i < arr_size; ++i)
    arr[i][i] = nums[i];
}

void MinAndMax(array2d& min_arr, array2d& max_arr,
               const vector<uint32_t>& nums,
               const vector<char>& ops,
               const size_t row, const size_t col)
{
  if (row == col)
  {
    min_arr[row][col] = nums[row];
    max_arr[row][col] = nums[row];
    return;
  }
    
  int64_t min_val = LLONG_MAX;
  int64_t max_val = LLONG_MIN;
  vector<int64_t> tmp_arr;

  for (size_t k = row; k < col; ++k)
  {
    tmp_arr.push_back(eval(max_arr[row][k], max_arr[k+1][col], ops[k]));
    tmp_arr.push_back(eval(max_arr[row][k], min_arr[k+1][col], ops[k]));
    tmp_arr.push_back(eval(min_arr[row][k], max_arr[k+1][col], ops[k]));
    tmp_arr.push_back(eval(min_arr[row][k], min_arr[k+1][col], ops[k]));

    tmp_arr.push_back(min_val);
    min_val = *(std::min_element(tmp_arr.begin(), tmp_arr.end()));
    tmp_arr.pop_back();
    tmp_arr.push_back(max_val);
    max_val = *(std::max_element(tmp_arr.begin(), tmp_arr.end()));
    tmp_arr.clear();
  }
  min_arr[row][col] = min_val;
  max_arr[row][col] = max_val;
}

long long get_maximum_value(const string &exp) {
  vector<uint32_t> nums;
  vector<char> ops;
  string_parse(exp, nums, ops);
  // print_eqn(nums, ops);

  const size_t arr_size = nums.size();
  array2d min_arr(arr_size, vector<int64_t>(arr_size, 0));
  array2d max_arr(arr_size, vector<int64_t>(arr_size, 0));

  fill_diag(min_arr, nums);
  fill_diag(max_arr, nums);

  size_t j = 0;
  for (size_t subexp_len = 0; subexp_len < arr_size; ++subexp_len)
  {
    for (size_t i = 0; i < arr_size - subexp_len; ++i)
    {
      j = i + subexp_len;
      MinAndMax(min_arr, max_arr, nums, ops, i, j);
    }
  }

  // print_matrix(max_arr);
  // print_matrix(min_arr);
  return max_arr[0][arr_size-1];
}

int main() {
  string s;
  std::cin >> s;
  s = s + '|';
  std::cout << get_maximum_value(s);
}
