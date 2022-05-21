#include <iostream>
#include <memory>
#include <vector>

using std::vector;

class GraphExplorer {
  public:
    GraphExplorer(vector<vector<unsigned int>>&& adjacency_list, size_t edge_count, size_t node_count):
      edge_count_(edge_count),
      node_count_(node_count),
      adjacency_list_(adjacency_list)
      {
        visited.resize(node_count);
      }

    void explore(int node) {
      visited[node] = true;
      for (const unsigned int& adj_node: adjacency_list_[node])
        if(!visited[adj_node])
          explore(adj_node);
      
      return;
    }

    int reach(int x, int y) {
      init_visited_vector();
      explore(x);      
      return visited[y];
    }

    void init_visited_vector() {
      std::fill(visited.begin(), visited.end(), false);
      return;
    }

  private:
    const vector<vector<unsigned int>> adjacency_list_;
    const size_t edge_count_;
    const size_t node_count_;

    vector<bool> visited;
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

  int x, y;
  std::cin >> x >> y;
  std::cout << explorer.reach(x - 1, y - 1);
}

