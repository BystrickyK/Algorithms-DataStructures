#include <iostream>
#include <vector>
#include <unordered_map>
#include <memory>
#include <list>
#include <set>
#include <algorithm>
#include <queue>
#include <cstdint>

using std::vector;
using std::list;
using std::unordered_map;
using std::queue;
using std::set;

struct Edge;
struct Node;

struct Node
{
    Node(uint64_t index):
      m_Index(index), m_Color(false), m_Reachable(false){}

    uint64_t m_Index;
    bool m_Color;
    bool m_Reachable;

    list<Edge> m_Edges; // nodes that this node points to
};

struct Edge{
  Edge():
    m_pAdjNode(nullptr){}

  Edge(Node* const dest_node):
    m_pAdjNode(dest_node){}

  Node* const m_pAdjNode;
};

typedef vector<Node> Graph;

class OptimalExchange{
  public:

    OptimalExchange(Graph&& graph):
    m_Graph(std::move(graph)){}
    
    bool IsBipartite(uint64_t start_idx){
      for (const Node& node: m_Graph)
        m_UnexploredIdxs.insert(node.m_Index);

      while (!m_UnexploredIdxs.empty()){

        // Find unexplored node
        const uint64_t unexplored_idx = *m_UnexploredIdxs.begin();
        m_UnexploredIdxs.erase(unexplored_idx);
        m_DFSQueue.push(&m_Graph[unexplored_idx]);

        // Explore the node's connected component
        // Breadth first search
        while(!m_DFSQueue.empty()){
          Node& processed_node = *m_DFSQueue.front();
          m_DFSQueue.pop();
          bool success = ColorAdjacent(processed_node);
          if (!success)
            return 0;
        }
      }

      return 1;
    }

  private:

    Graph m_Graph;
    queue<Node*> m_DFSQueue;
    set<uint64_t> m_UnexploredIdxs;

    bool ColorAdjacent(const Node& curr_node){
      for(const Edge& edge: curr_node.m_Edges){

        Node& adj_node = *edge.m_pAdjNode;        
        if (!adj_node.m_Reachable){ // Node not yet explored
          adj_node.m_Reachable = true;
          adj_node.m_Color = !curr_node.m_Color;
          m_DFSQueue.push(&adj_node);
          m_UnexploredIdxs.erase(adj_node.m_Index);
        }
        else{
          if (curr_node.m_Color == adj_node.m_Color)
            return 0; // found color conflict
        }
      }
      return 1; // success - no color conflict found
    }

};

int main() {
  size_t vertices, edges;
  std::cin >> vertices >> edges;
  
  Graph graph;
  graph.reserve(vertices);
  for (size_t i = 0; i < vertices; ++i){
    graph.push_back(Node(i));
  }

  for (size_t i = 0; i < edges; i++) {
    int x, y;
    std::cin >> x >> y;
    Node& from_node = graph[x - 1];
    Node& to_node = graph[y - 1];
    from_node.m_Edges.emplace_back(Edge(&to_node));
    to_node.m_Edges.emplace_back(Edge(&from_node));
  }

  OptimalExchange CEx(std::move(graph));
  bool isBipartite = CEx.IsBipartite(0);
  std::cout << isBipartite;
  return 0;
}
