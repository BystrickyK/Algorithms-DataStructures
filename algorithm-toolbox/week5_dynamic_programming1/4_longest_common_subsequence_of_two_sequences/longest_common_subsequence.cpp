#include <iostream>
#include <algorithm>
#include <string>
#include <utility>
#include <array>
#include <vector>
#include <set>
#include <climits>

// #define DEBUG
#define DEBUG_FINAL_ONLY

#define DMatrix std::vector<std::vector<Node>>

typedef std::pair<std::vector<int>, std::vector<int>> string_pair;

enum PreviousOperations
{
  Insertion=0,  // right
  Mismatch,   // down-right
  Deletion,   // down
  Match,       // down-right-no-distance
};

struct Node
{
  uint32_t D;
  std::set<PreviousOperations> previous_operations;
};

void PrintNode(const Node& node)
{
  if(node.previous_operations.find(Mismatch) != node.previous_operations.end()
  || node.previous_operations.find(Match) != node.previous_operations.end())
    std::cout << "|M";
  else
    std::cout << "| ";

  if(node.previous_operations.find(Deletion) != node.previous_operations.end())
    std::cout << "D";
  else
    std::cout << " ";

  if(node.previous_operations.find(Insertion) != node.previous_operations.end())
    std::cout << "I ";
  else
    std::cout << "  ";
  std::cout << node.D << "|";
}

void PrintDMatrix(const DMatrix& matrix, const std::vector<int>& str1, const std::vector<int>& str2)
{
  // std::cout << "                  ";
  std::cout << "\t\t\t";
  for(uint32_t col_idx = 0; col_idx < matrix[0].size(); ++col_idx)
    // std::cout << str2[col_idx] << "      ";
    std::cout << str2[col_idx] << "\t";
  std::cout << "\n\n";

  for(uint32_t row_idx = 0; row_idx < matrix.size(); ++row_idx)
  {
    if (row_idx == 0)
      // std::cout << "      ";
      std::cout << "\t\t\t";
    else
      // std::cout << str1[row_idx-1] << "     ";
      std::cout << str1[row_idx-1] << "\t\t\t";

    for(uint32_t col_idx = 0; col_idx < matrix[0].size(); ++col_idx)
    {
      // std::cout << matrix[row_idx][col_idx].D << " ";
      PrintNode(matrix[row_idx][col_idx]);
    }
    std::cout << "\n\n";
  }
  std::cout << std::endl;
}

void initialize_D_matrix(DMatrix& matrix)
{
  // Initialize the matrix values
  uint32_t i = 0;
  for(uint32_t col_idx = 1; col_idx < matrix[0].size(); ++col_idx)
  {
    matrix[0][col_idx].D = col_idx;
    matrix[0][col_idx].previous_operations.insert(Insertion);
  }

  for(uint32_t row_idx = 1; row_idx < matrix.size(); ++row_idx)
  {
    matrix[row_idx][0].D = row_idx;
    matrix[row_idx][0].previous_operations.insert(Deletion);
  }

  auto node = matrix[0][0];
  node.D = 0;

}

void evaluate_node(DMatrix& matrix,
                   const std::vector<int> &str1,
                   const std::vector<int> &str2,
                   uint32_t row_idx, uint32_t col_idx)
 {
  Node& current_node = matrix[row_idx][col_idx];
  const Node* check_node;

  if(str2[col_idx-1] == str1[row_idx-1]) // Match
  {
    check_node = &matrix[row_idx-1][col_idx-1];
    current_node.D = check_node->D;
    current_node.previous_operations.insert(Match);
  }
  else
  {
    std::array<uint32_t, 3> distances;

    check_node = &matrix[row_idx][col_idx-1]; // Insert
    distances[0] = (check_node->D + 1);

    check_node = &matrix[row_idx-1][col_idx-1]; // Mismatch
    distances[1] = (check_node->D + 1);

    check_node = &matrix[row_idx-1][col_idx]; // Delete
    distances[2] = (check_node->D + 1);

    // Choose operations
    uint32_t min = *(std::min_element(distances.begin(), distances.end()));
    current_node.D = min;
    for (uint16_t i = 0; i<3; ++i)
    {
      if (distances[i] == min)
        current_node.previous_operations.insert(static_cast<PreviousOperations>(i));
    }
  }
  #if defined DEBUG
    PrintDMatrix(matrix, str1, str2);
    std::cout << " --- \n";
  #endif
 }

DMatrix edit_distance_matrix(const std::vector<int> &str1, const std::vector<int> &str2)
{
  Node void_node;
  void_node.D = 0;
  DMatrix matrix(str1.size()+1, std::vector<Node>(str2.size()+1, void_node));

  initialize_D_matrix(matrix);

  for(uint32_t row_idx = 1; row_idx < matrix.size(); ++row_idx)
  {
    for(uint32_t col_idx = 1; col_idx < matrix[0].size(); ++col_idx)
    {
      evaluate_node(matrix, str1, str2, row_idx, col_idx);
    }
  }
  #if defined DEBUG_FINAL_ONLY
  PrintDMatrix(matrix, str1, str2);
  #endif

  return matrix;
}

uint32_t Align_CountMatches(const DMatrix& matrix, const std::vector<int>& str1, const std::vector<int>& str2)
{
  // Starting index == bottom right
  const uint32_t row_size = matrix.size();
  const uint32_t col_size = matrix[0].size();
  uint32_t row_idx = row_size-1;
  uint32_t col_idx = col_size-1;
  uint32_t match_count = 0;
  #if defined DEBUG
  std::cout << row_idx << "\t|\t" << col_idx << "\n";
  #endif

  string_pair aligned_strings;

  while(row_idx != 0 || col_idx != 0)
  {
    const Node& current_node = matrix[row_idx][col_idx];
    auto prev_ops = current_node.previous_operations;
    if (row_idx>0 && col_idx>0 && prev_ops.find(Match) != prev_ops.end())
    {
      ++match_count;
      aligned_strings.first.push_back(str1[(row_idx--)-1]);
      aligned_strings.second.push_back(str2[(col_idx--)-1]);
    }
    else
    {
      if (row_idx>0 && prev_ops.find(Deletion) != prev_ops.end())
      {
      aligned_strings.first.push_back(str1[(row_idx--)-1]);
      aligned_strings.second.push_back(0);
      }
      else if (col_idx>0 && prev_ops.find(Insertion) != prev_ops.end())
      {
        aligned_strings.first.push_back(0);
        aligned_strings.second.push_back(str2[(col_idx--)-1]);
      }
      else if (row_idx>0 && col_idx>0 && prev_ops.find(Mismatch) != prev_ops.end())
      {
        aligned_strings.first.push_back(str1[(row_idx--)-1]);
        aligned_strings.second.push_back(str2[(col_idx--)-1]);
      }
    }
  #if defined DEBUG
  std::cout << row_idx << " | " << col_idx << "\n";
  #endif
  }

  #if defined DEBUG_FINAL_ONLY
  std::reverse(aligned_strings.first.begin(), aligned_strings.first.end());
  std::reverse(aligned_strings.second.begin(), aligned_strings.second.end());
  for (auto& symbol : aligned_strings.first)
    std::cout << symbol << "\t";
  std::cout << "\n";
  for (auto& symbol : aligned_strings.second)
    std::cout << symbol << "\t";
  std::cout << "\n";
  #endif
  return match_count;
}

int main() {
  std::vector<int> str1;
  std::vector<int> str2;
  int symbol;

  size_t n;
  std::cin >> n;
  for (size_t i = 0; i < n; i++) {
    std::cin >> symbol;
    str1.push_back(symbol);
  }

  size_t m;
  std::cin >> m;
  for (size_t i = 0; i < m; i++) {
    std::cin >> symbol;
    str2.push_back(symbol);
  }

  const DMatrix matrix = edit_distance_matrix(str1, str2);
  uint32_t matches = Align_CountMatches(matrix, str1, str2);

  std::cout << matches;
  return 0;
}
