#include <iostream>
#include <vector>
#include <unordered_map>
#include <memory>
#include <list>
#include <set>
#include <algorithm>

using std::vector;
using std::list;
using std::unordered_map;


struct Node
{
    Node(uint64_t index):
      index(index),
      post(0), pre(0),
      scc_label(0), 
      visited(false){}

    uint64_t index;

    uint64_t post;
    uint64_t pre;

    uint64_t scc_label;

    bool visited;

    list<Node*> adj; // nodes that this node points to
};

struct RNode {
  RNode(uint64_t index):
    n(Node(index)), r(Node(index)){}

  RNode():
    n(Node(0)), r(Node(0)){}

  Node n;
  Node r;
};

typedef vector<RNode> dgraph_vec;

class GraphExplorer {
  public:
    GraphExplorer(dgraph_vec&& graph_pair, size_t edge_count, size_t node_count):
      edge_count_(edge_count),
      node_count_(node_count),
      dgraph_(std::move(graph_pair)),
      ticker_(0)
      {
      }

    void Explore(Node& node, std::set<uint64_t>& unvisited) {

      node.visited = true;
      node.pre = ticker_++;
      unvisited.erase(node.index);

      // std::cout << "Exploring " << node.index + 1 << "\n";
      for (const auto& adj_node_p: node.adj){
        if(false == (*adj_node_p).visited)
          Explore(*adj_node_p, unvisited);
      }
        
      node.post = ticker_++;
      return;
    }

    void ExploreSCC(Node& node, uint64_t scc_label) {

      node.visited = true;
      node.scc_label = scc_label;

      for (const auto& adj_node_p: node.adj){
        if(false == (*adj_node_p).visited){
          ExploreSCC(*adj_node_p, scc_label);
        }
      }
        
      return;
    }


    template<bool REVERSE>
    void DepthFirstSearch(){
      if (IsFullyExplored<REVERSE>())
        return;

      std::set<uint64_t> unvisited_nodes;
      for(uint64_t i = 0; i < node_count_; ++i)
        unvisited_nodes.insert(i);

      while(!unvisited_nodes.empty()){
          uint64_t unvisited_idx = *unvisited_nodes.begin();
          if constexpr (REVERSE){
            Node& unvisited_node = dgraph_[unvisited_idx].r;
            Explore(unvisited_node, unvisited_nodes);
          }
          else{
            Node& unvisited_node = dgraph_[unvisited_idx].n;
            Explore(unvisited_node, unvisited_nodes);
          }
        }
      }

    // All scc_labels of the N (non-reversed) nodes must be == 0
    uint64_t GetNumberOfSCCs(){
      DepthFirstSearch<true>(); // Run DFS on the reverse graph

      std::vector<uint64_t> order(node_count_, 0);
      for (uint64_t i = 0; i < node_count_; ++i)
        order[i] = i;
      // sort according to reverse post-order
      std::sort(order.begin(), order.end(),
        [&](const uint64_t a, const uint64_t b) -> bool
        {
          return dgraph_[a].r.post > dgraph_[b].r.post;
        });

      uint64_t scc_label = 1;
      for(auto rnode_it = order.begin(); rnode_it != order.end(); ++rnode_it){
        Node& node = dgraph_[*rnode_it].n;
        if (node.scc_label == 0){
          ExploreSCC(node, scc_label);
          ++scc_label;
        }
      }
      return scc_label-1;
    }

  private:
    dgraph_vec dgraph_;

    const size_t edge_count_;
    const size_t node_count_;

    uint64_t ticker_;

    template<bool REVERSE>
    bool IsFullyExplored(){
        for (auto const& rnode: dgraph_)
          if constexpr(REVERSE)
          {
            if (false == rnode.r.visited)
              return false;
          }
          else
          {
            if (false == rnode.n.visited)
              return false;
          }

      return true;
    }

};

struct Edge{
  Edge():
    from(0), to(0), exists(false){}

  Edge(uint64_t from, uint64_t to):
    from(from), to(to), exists(false){}

  uint64_t from;
  uint64_t to;
  bool exists;
};
typedef vector<vector<Edge>> EdgeMat;

dgraph_vec GenerateRandomDAG(uint64_t vertices, uint64_t edges)
{
  EdgeMat edge_mat(vertices, 
    vector<Edge>(vertices));

  for(size_t i = 0; i < edges; ++i)
  {
    uint64_t from, to;
      do{
        from = std::rand() % (vertices-1) + 1;
        to = std::rand() % from;
      } while(edge_mat[from][to].exists);

    Edge edge(from, to);
    edge.exists = true;
    edge_mat[from][to] = edge;
  }

  vector<Edge> edge_vec;
  edge_vec.reserve(edges);
  for(const auto& row: edge_mat)
    for(const auto& edge: row)
      if(edge.exists)
        edge_vec.push_back(edge);


  dgraph_vec dgraph;
  dgraph.reserve(vertices);
  for (size_t i = 0; i < vertices; ++i){
    dgraph.push_back(RNode(i));
  }

  for (auto& edge: edge_vec){
    uint64_t x = edge.from;
    uint64_t y = edge.to;
    auto& from_node = dgraph[x].n;
    auto& to_node = dgraph[y].n;

    auto& from_node_r = dgraph[y].r;
    auto& to_node_r = dgraph[x].r;

    from_node.adj.push_back(&to_node);
    from_node_r.adj.push_back(&to_node_r);
  }

  return dgraph;
}

int main() {
  size_t vertices, edges;
  std::cin >> vertices >> edges;
  
  dgraph_vec dgraph;
  dgraph.reserve(vertices);
  for (size_t i = 0; i < vertices; ++i){
    dgraph.push_back(RNode(i));
  }

  for (size_t i = 0; i < edges; i++) {
    int x, y;
    std::cin >> x >> y;
    auto& from_node = dgraph[x - 1].n;
    auto& to_node = dgraph[y - 1].n;

    auto& from_node_r = dgraph[y - 1].r;
    auto& to_node_r = dgraph[x - 1].r;

    from_node.adj.push_back(&to_node);
    from_node_r.adj.push_back(&to_node_r);

  }

  GraphExplorer graph(std::move(dgraph), edges, vertices);
  auto SCC_count = graph.GetNumberOfSCCs();
  std::cout << SCC_count;
  return 0;
}
