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

struct Edge;
struct Node;

struct Node
{
    Node(uint64_t index):
      m_Index(index)
      {}

    uint64_t m_Index;

    list<Edge> m_Edges; // nodes that this node points to
};

struct Edge{
  Edge():
    m_pAdjNode(nullptr){}

  Edge(Node* const dest_node):
    m_pAdjNode(dest_node){}

  Node* const m_pAdjNode;
};


struct SPTreeNode{ 
  SPTreeNode():
  m_Index(UINT64_MAX), m_pAdjNode(nullptr), m_Distance(UINT64_MAX), m_Connected(false){}
  // ShortestDistanceTreeNode
  SPTreeNode(const Node& node):
  m_Index(node.m_Index), m_pAdjNode(nullptr), m_Distance(UINT64_MAX), m_Connected(false){}

  const uint64_t m_Index;
  uint64_t m_Distance;
  bool m_Connected; // Connected to root (origin) node
  SPTreeNode* m_pAdjNode;

  void Connect(SPTreeNode& dest){
    m_Connected = true;
    m_Distance = dest.m_Distance + 1;
    m_pAdjNode = &dest;
  }

};

typedef unordered_map<uint64_t, SPTreeNode> SPTree;
typedef vector<Node> Graph;

class ColorExplorer{
  public:

    ColorExplorer(Graph&& graph):
    m_Graph(std::move(graph)){}
    
    SPTree& ConstructSPTree(uint64_t start_idx, uint64_t end_idx){
      if (m_SPTreeMap.find(start_idx) != m_SPTreeMap.end())      
        //Shortest path already found
        return m_SPTreeMap[start_idx];

      init_SPTree();
      m_SPTree[start_idx].m_Distance = 0;
      m_SPTree[start_idx].m_Connected = true;
      m_DFSQueue.push(&m_Graph[start_idx]);

      while(!m_DFSQueue.empty()){
        Node& processed_node = *m_DFSQueue.front();
        m_DFSQueue.pop();
        ExploreAdjacent(processed_node);
      }

    m_SPTreeMap.emplace(start_idx, std::move(m_SPTree));
    return m_SPTreeMap[start_idx];
    }

    int64_t GetShortestPathLength(uint64_t start_idx, uint64_t end_idx){
      SPTree& l_SPTree = ConstructSPTree(start_idx, end_idx);
      if(!l_SPTree[end_idx].m_Connected)
        return -1;

      std::vector<uint64_t> path;

      SPTreeNode* l_SPNode = &l_SPTree[end_idx];
      for(; l_SPNode->m_pAdjNode != nullptr; l_SPNode = l_SPNode->m_pAdjNode)
        path.push_back(l_SPNode->m_Index);

      path.push_back(start_idx);
      std::reverse(path.begin(), path.end());

      return path.size() - 1;
    }

  private:

    Graph m_Graph;
    unordered_map<uint64_t, SPTree> m_SPTreeMap;

    queue<Node*> m_DFSQueue;
    SPTree m_SPTree;

    void init_SPTree(){
      m_SPTree.clear();
      for (const Node& node: m_Graph)
        m_SPTree.emplace(node.m_Index, node);
    }

    void ExploreAdjacent(const Node& curr_node){
      if (!m_SPTree[curr_node.m_Index].m_Connected)
        std::cerr << "Curently explored node has no path to origin" << std::endl;
      
      SPTreeNode& curr_spnode = m_SPTree[curr_node.m_Index];

      for(const Edge& edge: curr_node.m_Edges){

        Node& adj_node = *edge.m_pAdjNode;        
        SPTreeNode& adj_spnode = m_SPTree[adj_node.m_Index];

        if (!adj_spnode.m_Connected){ // Node not yet explored
          adj_spnode.Connect(curr_spnode);
          m_DFSQueue.push(&adj_node);
        }
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
    std::cin >> x >> y;
    Node& from_node = graph[x - 1];
    Node& to_node = graph[y - 1];
    from_node.m_Edges.emplace_back(Edge(&to_node));
    to_node.m_Edges.emplace_back(Edge(&from_node));
  }

  ColorExplorer PEx(std::move(graph));
  uint64_t start, end;
  std::cin >> start >> end;
  int64_t path_len = PEx.GetShortestPathLength(start - 1, end - 1);
  std::cout << path_len;
  return 0;
}

