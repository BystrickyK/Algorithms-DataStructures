#include <iostream>
#include <algorithm>
#include <string>
#include <array>
#include <vector>
#include <set>
#include <climits>

// #define DEBUG
#define DEBUG_FINAL_ONLY

#define DMatrix std::vector<std::vector<Node>>

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

void PrintDMatrix(const DMatrix& matrix, const std::string& str1, const std::string& str2)
{
  std::cout << "                  ";
  for(uint32_t col_idx = 0; col_idx < matrix[0].size(); ++col_idx)
    std::cout << str2[col_idx] << "      ";
  std::cout << "\n\n";

  for(uint32_t row_idx = 0; row_idx < matrix.size(); ++row_idx)
  {
    if (row_idx == 0)
      std::cout << "      ";
    else
      std::cout << str1[row_idx-1] << "     ";

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
                   const std::string &str1,
                   const std::string &str2,
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



int edit_distance(const std::string &str1, const std::string &str2)
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

  uint32_t row_size = matrix.size();
  uint32_t col_size = matrix[0].size();
  return matrix[row_size-1][col_size-1].D; // Bottom right node
}

int main() {
  std::string str1;
  std::string str2;
  std::cin >> str1 >> str2;
  std::cout << edit_distance(str1, str2) << std::endl;
  return 0;
}
