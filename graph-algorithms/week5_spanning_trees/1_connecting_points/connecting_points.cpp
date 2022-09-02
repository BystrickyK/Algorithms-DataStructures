#include <iostream>
#include <chrono>
#include <thread>
#include <vector>
#include <list>
#include <queue>
#include <cmath>
#include <iomanip>
#include <set>
#include <algorithm>

#define TEST
// #define PRINT

using std::vector;
using std::priority_queue;
using std::list;
using std::set;

struct Edge;
struct Node;
struct PruferTrees;

struct Coordinates
{
  Coordinates(double x_, double y_): x(x_), y(y_){}
  double x, y;

  static double Distance(const Coordinates& from, const Coordinates& to){
    const double x_diff = from.x - to.x;
    const double y_diff = from.y - to.y;
    return sqrt(pow(x_diff, 2) + pow(y_diff, 2));
  }
};

struct Node
{
    Node(uint64_t index):
      m_Index(index),
      m_Connected(false),
      m_Coords(0, 0),
      m_pPreviousNode(nullptr)
      {}

    uint64_t m_Index;
    bool m_Connected;
    double m_Priority;

    Node* m_pPreviousNode;

    Coordinates m_Coords;
    void SetCoords(double x, double y){
      m_Coords.x = x;
      m_Coords.y = y;
    }

    list<Edge*> m_Edges; // nodes that this node points to
};

class Edge{
  public:
    Edge(Node* const origin_node, Node* const destination_node):
      m_pSourceNode(origin_node),
      m_pDestinationNode(destination_node){}

    void SetWeight(double weight){
      m_Weight = weight;
    }

    double GetWeight() const{
      return m_Weight;
    }

    Node* GetDestinationNodePtr(){
      return m_pDestinationNode;
    }

    Node* GetSourceNodePtr(){
      return m_pSourceNode;
    }
  private:
    Node* const m_pSourceNode;
    Node* const m_pDestinationNode;

    double m_Weight;
};

struct Graph{
  vector<Node> Nodes;
  vector<Edge> NodeEdges;
};  

class CartesianProduct{
  public:
  CartesianProduct(const vector<uint64_t>& indexes): m_Indexes(indexes){}

  vector<vector<uint64_t>> CartesianPower(uint64_t pow){
    vector<vector<uint64_t>> result;
    if (1 == pow){
      for(uint64_t index: m_Indexes)
        result.push_back({index});
      return result;
    }
    else{
      vector<vector<uint64_t>> smaller_result = CartesianPower(pow - 1);

      for(uint64_t index: m_Indexes){
        for(vector<uint64_t> sublist: smaller_result){
          sublist.push_back(index);
          result.push_back(sublist);
        }
      }
      return result;
    }
  }

  private:
  const vector<uint64_t> m_Indexes;
};

struct PruferTrees{
  PruferTrees(const Graph& graph): m_Graph(graph)  {
    m_Indexes.reserve(m_Graph.Nodes.size());
    for (const Node& node: m_Graph.Nodes)
      m_Indexes.push_back(node.m_Index);
  }

  Graph m_Graph;
  vector<uint64_t> m_Indexes;
  vector<vector<uint64_t>> m_PruferSequences;

  void GeneratePruferSequences(){
    const uint64_t sequence_length = m_Graph.Nodes.size() - 2;

    CartesianProduct CartProd(m_Indexes);
    m_PruferSequences = CartProd.CartesianPower(sequence_length);
  }

  vector<Edge*> GetTreeEdges(uint64_t prufer_index){
    vector<Edge*> tree_edges;

    list<uint64_t> prufer_sequence;
    for(uint64_t idx: m_PruferSequences[prufer_index])
      prufer_sequence.push_back(idx);

    const uint64_t N = m_Graph.Nodes.size();
    const uint64_t sequence_length = N - 2;
    tree_edges.reserve(sequence_length);

    set<uint64_t> vertices;
    for(uint64_t idx: m_Indexes) vertices.insert(idx);
    
    for(uint64_t i = 0; i < sequence_length; ++i){
      auto node1_idx_it = vertices.begin();
      for(; // find minimal index that is in V but not in P
          std::find(prufer_sequence.begin(), prufer_sequence.end(), *node1_idx_it) != prufer_sequence.end();
          ++node1_idx_it);

      uint64_t node1_idx = *node1_idx_it;
      Node& node1 = m_Graph.Nodes[node1_idx];
      Node& node2 = m_Graph.Nodes[prufer_sequence.front()];
      tree_edges.push_back(FindEdge(node1, node2));
      vertices.erase(node1_idx);
      prufer_sequence.pop_front();
    }
    
    // Connect the last two nodes in 'vetices'
    Node& node1 = m_Graph.Nodes[*vertices.begin()];
    Node& node2 = m_Graph.Nodes[*(++vertices.begin())];
    tree_edges.push_back(FindEdge(node1, node2));
    return tree_edges;
  }

  Edge* FindEdge(const Node& node1, const Node& node2){
      Edge* edge12;
      for(Edge& edge: m_Graph.NodeEdges){
        if (edge.GetSourceNodePtr()->m_Index == node1.m_Index && edge.GetDestinationNodePtr()->m_Index == node2.m_Index ||
            edge.GetDestinationNodePtr()->m_Index == node1.m_Index && edge.GetSourceNodePtr()->m_Index == node2.m_Index){
              return &edge;
            }
      }
      return nullptr;
  }

  double FindMinWeight(){
    GeneratePruferSequences();
    double min_weight_sum = INFINITY;
    uint64_t optimal_prufer_idx;
    for(uint64_t prufer_idx = 0; prufer_idx < m_PruferSequences.size(); ++prufer_idx){
      vector<Edge*> tree_edges = GetTreeEdges(prufer_idx);
      double weight_sum = 0;
      for(const Edge* const p_edge: tree_edges)
        weight_sum += p_edge->GetWeight();
      if (weight_sum < min_weight_sum){
        min_weight_sum = weight_sum;
        optimal_prufer_idx = prufer_idx;
      }
    }
    #ifdef PRINT 
      std::cout << "Optimal (minimal) weight via BF: " << min_weight_sum << "\n";
      vector<Edge*> optimal_tree = GetTreeEdges(optimal_prufer_idx);
      for(Edge* const p_edge: optimal_tree)
        std::cout << p_edge->GetSourceNodePtr()->m_Index << " <-> " << p_edge->GetDestinationNodePtr()->m_Index << "\n";
      std::cout << std::endl;
    #endif
    return min_weight_sum;
  }

};

class NodeConnector{
  public:
    NodeConnector(Graph&& graph):
    m_Graph(std::move(graph)),
    m_PruferTrees(m_Graph){}

    void PrimAlgorithm(){
      if (m_Graph.Nodes.empty())
        return;

      for (Node& node: m_Graph.Nodes){
        node.m_Priority = INFINITY;
        node.m_pPreviousNode = &node;
        node.m_Connected = false;
      }
      m_Graph.Nodes[0].m_Priority = 0;

      m_PriorityQueue.clear();
      m_PriorityQueue.insert(&m_Graph.Nodes[0]);

      while(!m_PriorityQueue.empty()){
        // Extract the highest priority node
        Node* p_new_node = *m_PriorityQueue.begin();
        m_PriorityQueue.erase(m_PriorityQueue.begin());
        
        // Check if the node isn't already connected to the tree
        if (p_new_node->m_Connected)
          continue;
        else
          p_new_node->m_Connected = true;

        #ifdef PRINT
        std::cout << "Connected node " << p_new_node->m_Index << " at cost " << p_new_node->m_Priority << "\n";
        #endif

        // Check neighbor nodes, conditionally update their priorities
        for(Edge* edge: p_new_node->m_Edges){
          Node* p_dest_node = nullptr;
          if (p_new_node == edge->GetDestinationNodePtr())
            p_dest_node = edge->GetSourceNodePtr();
          else
            p_dest_node = edge->GetDestinationNodePtr();

          if ((!p_dest_node->m_Connected) && (p_dest_node->m_Priority > edge->GetWeight())){
            auto p_dest_node_set_it = std::find(m_PriorityQueue.begin(), m_PriorityQueue.end(), p_dest_node);
            if (p_dest_node_set_it != m_PriorityQueue.end())
              m_PriorityQueue.erase(p_dest_node_set_it);
            p_dest_node->m_pPreviousNode = p_new_node;
            p_dest_node->m_Priority = edge->GetWeight();
            m_PriorityQueue.insert(p_dest_node);
          }
        }
      }

      return;
    }

  void PrintGraph(){
    for (const Node& node: m_Graph.Nodes){
      std::cout << "Connection: " << node.m_Index << " <-> " << node.m_pPreviousNode->m_Index
      << " | Coordinates: (" << node.m_Coords.x << ", " << node.m_Coords.y << ")" << " <-> ("
      <<  node.m_pPreviousNode->m_Coords.x << ", " << node.m_pPreviousNode->m_Coords.y << ")"
      << " | Priority: " << node.m_Priority << "\n";
    }
  }

  double TotalWeight(){
    double total_weight = 0;
    for (Node& node: m_Graph.Nodes)
      total_weight += node.m_Priority;
    return total_weight;
  }

  double TotalWeightBruteForce(){
    return m_PruferTrees.FindMinWeight();
  }

  private:
    Graph m_Graph;

    struct NodeComparator{
      bool operator()(const Node* const lhs, const Node* const rhs) const{
        return (((lhs->m_Priority) <= (rhs->m_Priority)));
      }
    };
    // priority_queue<Node*, vector<Node*>, NodeComparator> m_PriorityQueue;
    set<Node*, NodeComparator> m_PriorityQueue;

    PruferTrees m_PruferTrees;
};

int main() {
  #ifdef TEST
    bool cont = true;
    while(cont){
      size_t n_points = 2500;
      // std::cin >> n_points;

      Graph graph;
      graph.Nodes.reserve(n_points);
      graph.NodeEdges.reserve(n_points/2*(n_points-1) + n_points%2*((n_points-1)/2));

      for (size_t node_idx = 0; node_idx < n_points; ++node_idx){
        double x, y;
        x = std::rand() % 100;
        y = std::rand() % 100;
        // std::cin >> x >> y;

        // Create node
        graph.Nodes.push_back(Node(node_idx));
        Node& this_node = graph.Nodes[node_idx];
        this_node.SetCoords(x, y);

        // Connect this node to all the other created nodes
        for(Node& other_node: graph.Nodes){
          if (this_node.m_Index == other_node.m_Index) continue;

          Edge edge(&this_node, &other_node);
          const double distance = Coordinates::Distance(this_node.m_Coords, other_node.m_Coords);
          edge.SetWeight(distance);

          graph.NodeEdges.push_back(std::move(edge));
          Edge* p_last_edge = &*--graph.NodeEdges.end();
          this_node.m_Edges.push_back(p_last_edge);
          other_node.m_Edges.push_back(p_last_edge);
          // !!! If the order of elements in graph.Edges changes, the nodes in Node.m_Edges will have wrong edges 
        }
      }

      NodeConnector NC(std::move(graph));
      // double min_weight_bf = NC.TotalWeightBruteForce();
      NC.PrimAlgorithm();
      double min_weight_prim = NC.TotalWeight();
      NC.PrintGraph();
      std::cout << "\n";
      // std::cout << "Brute force: " << std::setprecision(10) << min_weight_bf << std::endl;
      std::cout << "Prim: " << std::setprecision(10) << min_weight_prim << std::endl;
      std::this_thread::sleep_for(std::chrono::milliseconds(500));
      std::cout << "\n ___________________________ \n";
    }
  #endif
  #ifndef TEST
    size_t n_points;
    std::cin >> n_points;

    Graph graph;
    graph.Nodes.reserve(n_points);
    graph.Edges.reserve(n_points/2*(n_points-1) + n_points%2*((n_points-1)/2));

    for (size_t node_idx = 0; node_idx < n_points; ++node_idx){
      double x, y;
      x = std::rand() % 4;
      y = std::rand() % 4;
      std::cin >> x >> y;

      // Create node
      graph.Nodes.push_back(Node(node_idx));
      Node& this_node = graph.Nodes[node_idx];
      this_node.SetCoords(x, y);

      // Connect this node to all the other created nodes
      for(Node& other_node: graph.Nodes){
        if (this_node.m_Index == other_node.m_Index) continue;

        Edge edge(&this_node, &other_node);
        const double distance = Coordinates::Distance(this_node.m_Coords, other_node.m_Coords);
        edge.SetWeight(distance);

        graph.Edges.push_back(std::move(edge));
        Edge* p_last_edge = &*--graph.Edges.end();
        this_node.m_Edges.push_back(p_last_edge);
        other_node.m_Edges.push_back(p_last_edge);
        // !!! If the order of elements in graph.Edges changes, the nodes in Node.m_Edges will have wrong edges 
      }
    }

    NodeConnector NC(std::move(graph));
    NC.PrimAlgorithm();
    double min_weight_prim = NC.TotalWeight();
    std::cout << std::setprecision(10) << min_weight_prim << std::endl;
    #ifdef PRINT
    NC.PrintGraph();
    double min_weight_bf = NC.TotalWeightBruteForce();
    std::cout << std::setprecision(10) << min_weight_bf;
    #endif
  #endif
  return 0;
}
