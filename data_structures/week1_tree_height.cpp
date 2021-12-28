#include <algorithm>
#include <iostream>
#include <vector>
#include <queue>
#if defined(__unix__) || defined(__APPLE__)
#include <sys/resource.h>
#endif

class Node;

class Node {
public:
    int key = -1;
    Node *parent;
    std::vector<Node *> children;
    uint32_t level = 0;

    Node() {
      this->parent = NULL;
    }

    void setParent(Node *parentNode) {
      parent = parentNode;
      parentNode->children.push_back(this);
    }
};

int main (int argc, char **argv)
{
  std::ios_base::sync_with_stdio(0);
  int n;
  std::cin >> n;

  std::vector<Node> nodes;
  nodes.resize(n);
  for (int child_index = 0; child_index < n; child_index++) {
    int parent_index;
    std::cin >> parent_index;
    if (parent_index >= 0)
      nodes[child_index].setParent(&nodes[parent_index]);
    nodes[child_index].key = child_index;
  }

  Node root;
  for (const Node& node : nodes) {
      if (node.parent == NULL) root = node;
  }
  root.level = 0;

  // Replace this code with a faster implementation
  std::queue<Node*> que;
  que.push(&root);
  uint32_t maxHeight = 0;
  while (!que.empty()) {
      Node* parent_node = que.front();
      que.pop();
      for (Node* node : parent_node->children) {
          node->level = parent_node->level + 1;
          que.push(node);
      }
      maxHeight = std::max(maxHeight, parent_node->level + 1);
  }
    
  std::cout << maxHeight << std::endl;
  return 0;
}

