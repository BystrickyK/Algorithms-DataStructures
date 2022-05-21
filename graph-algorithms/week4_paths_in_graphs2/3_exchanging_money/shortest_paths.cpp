#include <iostream>
#include <vector>
#include <memory>
#include <list>
#include <algorithm>
#include <cstdint>
#include <queue>
#include <set>

using std::queue;
using std::priority_queue;
using std::list;
using std::set;
using std::vector;

// #define SHOW_PATH

struct Edge;
struct Node;

struct Node
{
    Node(uint64_t index):
      m_Index(index),
      m_Reachable(false),
      m_InNegativeLoop(false),
      m_Distance(0),
      m_pPreviousNode(nullptr)
      {}

    uint64_t m_Index;
    bool m_Reachable;
    bool m_InNegativeLoop;

    int64_t m_Distance;

    Node* m_pPreviousNode;

    list<Edge> m_Edges; // nodes that this node points to
};

class Edge{
  public:
    Edge(Node* const origin_node, Node* const destination_node):
      m_pSourceNode(origin_node),
      m_pDestinationNode(destination_node),
      m_IsLogTransformed(false),
      m_IsNegated(false)
      {}

#ifdef WEIGHT_DOUBLE
    void LogTransformWeight(){
      if (!m_IsLogTransformed){
        m_Weight = log10(m_Weight);
        m_IsLogTransformed = true;
      }
    }

    void NegateWeight(){
      if (!m_IsNegated){
        m_Weight *= -1;
        m_IsNegated = true;
      }
    }
#endif

    void SetWeight(int64_t weight){
      m_Weight = weight;
    }

    bool RelaxEdge(){
      if (!m_pSourceNode->m_Reachable) // Edges with unexplored source nodes cannot be relaxed
        return false;

      const int64_t distanceToDestFromThis = m_pSourceNode->m_Distance + m_Weight;
      const int64_t distanceToDest = m_pDestinationNode->m_Distance;
      // Possible issues with overflows here

      if (distanceToDestFromThis < distanceToDest || !m_pDestinationNode->m_Reachable){ 
        m_pDestinationNode->m_pPreviousNode = m_pSourceNode;
        m_pDestinationNode->m_Distance = distanceToDestFromThis;
        m_pDestinationNode->m_Reachable = true;
        return true; // Edge was relaxed
      }
      else
        return false; // Edge wasn't relaxed
    }

    Node* GetDestinationNodePtr(){
      return m_pDestinationNode;
    }

    Node* GetSourceNodePtr(){
      return m_pSourceNode;
    }

    const int64_t GetDistToSource() const{
      return m_pSourceNode->m_Distance;
    }

  private:
    bool m_IsLogTransformed;
    bool m_IsNegated;

    Node* const m_pDestinationNode;
    Node* const m_pSourceNode;

    int64_t m_Weight;
};

typedef vector<Node> Graph;

class OptimalExchange{
  public:

    OptimalExchange(Graph&& graph):
    m_Graph(std::move(graph)){}

    void FindExchange(uint64_t start_node_index){
      
      if (m_Graph.empty())
        return;

      InitializeGraphNodes();
      m_Graph[start_node_index].m_Distance = 0;
      m_Graph[start_node_index].m_Reachable = true;

      bool earlyStopping = false;
      for (uint64_t cycle = 0; cycle < m_Graph.size(); ++cycle){
        bool change = false;
        for (Node& node: m_Graph){
          for (Edge& edge: node.m_Edges){
            bool edgeRelaxed = edge.RelaxEdge();
            if (edgeRelaxed){
              change = true;
            }
          }
        }

        if (!change){
          earlyStopping = true;
          break; // If there's no change in the min distances, there wouldn't be one in the next cycles
        }
      }

      if (!earlyStopping){
        for(uint16_t i = 0; i < 3; ++i){
          for (Node& node: m_Graph){
            for (Edge& edge: node.m_Edges){
              bool edgeRelaxed = edge.RelaxEdge();
              if (edgeRelaxed){
                edge.GetDestinationNodePtr()->m_InNegativeLoop = true;
                edge.GetSourceNodePtr()->m_InNegativeLoop = true;
                edge.GetDestinationNodePtr()->m_Distance = -INT64_MAX/2;
                edge.GetSourceNodePtr()->m_Distance = -INT64_MAX/2;
              }
            }
          }
        }
      }

      for(const Node& node: m_Graph){
        if(node.m_InNegativeLoop)
          std::cout << "-";
        else if (!node.m_Reachable)
          std::cout << "*";
        else 
          std::cout << node.m_Distance;

        std::cout << "\n";
      }
    }

  private:

    Graph m_Graph;
    void InitializeGraphNodes(){
      for (Node& node: m_Graph){
        node.m_Distance = INT64_MAX; // ~ inf
        node.m_pPreviousNode = nullptr;
        node.m_Reachable = false;
      }
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
    double w;
    std::cin >> x >> y >> w;
    Node& from_node = graph[x - 1];
    Node& to_node = graph[y - 1];
    Edge edge(&from_node, &to_node);
    edge.SetWeight(w);
    from_node.m_Edges.emplace_back(std::move(edge));
    // to_node.m_Edges.emplace_back(Edge(&to_node, &from_node)); // if undirected
  }

  OptimalExchange optimalExchange(std::move(graph));
  uint64_t start_index;
  std::cin >> start_index;
  optimalExchange.FindExchange(start_index-1);
  return 0;
}
