#include <iostream>
#include <memory>
#include <vector>
#include <set>

using std::vector;

class GraphExplorer {
  public:
    GraphExplorer(vector<vector<unsigned int>>&& adjacency_list, size_t edge_count, size_t node_count):
      edge_count_(edge_count),
      node_count_(node_count),
      adjacency_list_(adjacency_list)
      {
        label.resize(node_count);
        std::fill(label.begin(), label.end(), 0);

        for (uint64_t i = 0; i < node_count_; ++i)
          unvisited_nodes.insert(i);
      }



    int reach(int x, int y) {
      label_all();
      return label[y] == label[x];
    }
    
    int label_all()
    {
      if (are_all_labeled_())
        return *std::max(label.begin(), label.end());

      uint32_t current_label = 0;
      while (!unvisited_nodes.empty())
      {
        uint64_t unexplored_node = *unvisited_nodes.begin();
        explore(unexplored_node, ++current_label);
      }

      // Label value of the last connected component == number of connected components
      return current_label; 
    }

  private:

    // Private variables
    const vector<vector<unsigned int>> adjacency_list_;
    const size_t edge_count_;
    const size_t node_count_;

    vector<uint32_t> label;
    std::set<uint64_t> unvisited_nodes;

    // Private methods
    bool are_all_labeled_()
    {
      for (const uint8_t& node_label: label)
        if (0 == node_label)
          return false;

      return true;
    }

    void explore(uint64_t node, uint32_t current_label) {
      label[node] = current_label;
      unvisited_nodes.erase(node);

      for (const unsigned int& adj_node: adjacency_list_[node])
        if(0 == label[adj_node])
          explore(adj_node, current_label);
      
      return;
    }

};

int main() {
  size_t n, m;
  std::cin >> n >> m;
  vector<vector<unsigned int> > adj(n, vector<unsigned int>());
  for (size_t i = 0; i < m; i++) {
    int x, y;
    std::cin >> x >> y;
    adj[x - 1].push_back(y - 1);
    adj[y - 1].push_back(x - 1);
  }
  GraphExplorer explorer(std::move(adj), m, n);

  std::cout << explorer.label_all();
}


