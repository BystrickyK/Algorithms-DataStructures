#include <iostream>
#include <vector>
#include <unordered_map>
#include <memory>
#include <list>
#include <algorithm>
#include <cstdint>
#include <queue>
#include <cmath>

using std::vector;
using std::unordered_map;
using std::queue;
using std::priority_queue;
using std::list;

// #define SHOW_PATH

struct Edge;
struct Node;

struct Node
{
    Node(uint64_t index):
      m_Index(index),
      m_Reachable(false),
      m_Distance(0),
      m_pPreviousNode(nullptr)
      {}

    uint64_t m_Index;
    bool m_Reachable;

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

    void SetWeight(int64_t weight){
      m_Weight = weight;
    }

    bool RelaxEdge(){
      const int64_t distanceToDestFromThis = m_pSourceNode->m_Distance + m_Weight;
      const int64_t distanceToDest = m_pDestinationNode->m_Distance;
        if (distanceToDestFromThis < distanceToDest){
          m_pDestinationNode->m_pPreviousNode = m_pSourceNode;
          m_pDestinationNode->m_Distance = distanceToDestFromThis;
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

class Graph{
  public:

    Graph(Graph&& graph):
    m_Graph(std::move(graph)){}

    int64_t ComputeShortestPath(uint64_t source_idx, uint64_t destination_index){

      InitializeGraphNodes();
      m_Graph[source_idx].m_Distance = 0;

      ClearUnexploredQueue();
      m_UnexploredNodes.push(&m_Graph[source_idx]);

      while(!m_UnexploredNodes.empty()){
        Node& closestUnexplored = *m_UnexploredNodes.top();
        m_UnexploredNodes.pop();

        const bool reachable = closestUnexplored.m_Distance != INT64_MAX;
        if (closestUnexplored.m_Reachable || !reachable)
          continue;
        closestUnexplored.m_Reachable = true;

        // std::cout << "Exploring node #" << closestUnexplored.m_Index + 1 << "\n"; 

        for (Edge& edge: closestUnexplored.m_Edges){
          bool edgeRelaxed = edge.RelaxEdge();
          if (edgeRelaxed)
            m_UnexploredNodes.push(edge.GetDestinationNodePtr());
        }
      }

      #ifdef SHOW_PATH
      vector<std::pair<uint64_t, int64_t>> path;
      for(Node* node_ptr = &m_Graph[destination_index];
          node_ptr != nullptr;
          node_ptr = node_ptr->m_pPreviousNode){
            path.push_back(std::pair(node_ptr->m_Index, node_ptr->m_Distance));
          }
      std::reverse(path.begin(), path.end());

      for (const auto& step: path)
        std::cout << "Index: " << step.first + 1 << " | Dist: " << step.second << "\n";
      #endif

      const int64_t DestinationDistance = m_Graph[destination_index].m_Distance;
      return (INT64_MAX != DestinationDistance) ? DestinationDistance : -1;
    }

  private:

    Graph m_Graph;

    struct NodeComparator{
      bool operator()(const Node* const lhs, const Node* const rhs) const{
        return (lhs->m_Distance) > (rhs->m_Distance);
      }
    };
    priority_queue<Node*, vector<Node*>, NodeComparator> m_UnexploredNodes;

    void InitializeGraphNodes(){
      for (Node& node: m_Graph){
        node.m_Distance = INT64_MAX; // ~ inf
        node.m_pPreviousNode = nullptr;
      }
    }

    void ClearUnexploredQueue(){
      while(!m_UnexploredNodes.empty())
        m_UnexploredNodes.pop();
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

  Graph DSP(std::move(graph));
  uint64_t source, destination;
  std::cin >> source >> destination;
  std::cout << DSP.ComputeShortestPath(source-1, destination-1) << std::endl;
  return 0;
}
