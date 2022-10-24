#include <iostream>
#include <vector>
#include <algorithm>
#include <memory>
#include <set>
#include <unordered_map>
#include <queue>
#include <limits>

using std::vector;
using std::cin;
using std::cout;

class FlowGraph {
public:
    struct Edge {
        int from, to, capacity, flow;
    };

private:
   

    const size_t m_NumLeftNodes;
    const size_t m_NumRightNodes;
    const size_t m_SourceIdx;
    const size_t m_SinkIdx;

 /* List of all - forward and backward - edges */
    std::vector<Edge> m_Edges;

    /* These adjacency lists store only indices of edges in the edges list */
    std::vector<std::vector<size_t> > m_Graph;

public:
    explicit FlowGraph(const std::vector<std::vector<bool>>& adj_matrix):
      m_NumLeftNodes(adj_matrix.size()),
      m_NumRightNodes(adj_matrix[0].size()),
      m_SourceIdx(m_NumLeftNodes + m_NumRightNodes),
      m_SinkIdx(m_SourceIdx+1),
      m_Graph(m_NumLeftNodes + m_NumRightNodes + 2)
    {
      // Connect source to left nodes
      for(size_t i = 0; i < m_NumLeftNodes; ++i)
        add_edge(m_SourceIdx, i, 1);

      // Connect right nodes to sink
      for(size_t i = m_NumLeftNodes; i < m_SourceIdx; ++i)
        add_edge(i, m_SinkIdx, 1);

      for (size_t row_idx = 0; row_idx < m_NumLeftNodes; ++row_idx)
      {
        const size_t current_left_node = row_idx;
        for (size_t col_idx = 0; col_idx < m_NumRightNodes; ++col_idx)
        {
          const size_t current_right_node = m_NumLeftNodes + col_idx;

          if (true == adj_matrix[row_idx][col_idx])
            add_edge(current_left_node, current_right_node, 1);
        }
      }
    }

    void add_edge(int from, int to, int capacity) {
        /* Note that we first append a forward edge and then a backward edge,
         * so all forward edges are stored at even indices (starting from 0),
         * whereas backward edges are stored at odd indices in the list edges */
        Edge forward_edge = {from, to, capacity, 0};
        Edge backward_edge = {to, from, capacity, capacity};

        m_Graph[from].push_back(m_Edges.size());
        m_Edges.push_back(forward_edge);

        m_Graph[to].push_back(m_Edges.size());
        m_Edges.push_back(backward_edge);
    }

    size_t size() const {
        return m_Graph.size();
    }

    const std::vector<size_t>& get_ids(int from) const {
        return m_Graph[from];
    }

    const Edge& get_edge(size_t id) const {
        return m_Edges[id];
    }

    void add_flow(size_t id, int flow) {
        /* To get a backward edge for a true forward edge (i.e id is even), we should get id + 1
         * due to the described above scheme. On the other hand, when we have to get a "backward"
         * edge for a backward edge (i.e. get a forward edge for backward - id is odd), id - 1
         * should be taken.
         *
         * It turns out that id ^ 1 works for both cases. Think this through! */
        m_Edges[id].flow += flow;
        m_Edges[id ^ 1].flow -= flow;
    }

    const std::vector<size_t> FindPath(size_t start_idx, size_t end_idx) const
    {
        // Return value = vector of edge IDs
        std::vector<size_t> path;

        std::unordered_map<size_t, size_t> parentMap;
        std::queue<size_t> nodeQueue;
        std::set<size_t> processedNodes;

        nodeQueue.push(start_idx);

        // do Breadth First Search and create the parentMap
        while (!nodeQueue.empty())
        {
            const size_t processed_node = nodeQueue.front();
            nodeQueue.pop();
            processedNodes.insert(processed_node);

            const std::vector<size_t>& adj_edge_list = get_ids(processed_node);
            for (const size_t edge_id: adj_edge_list)
            {
                const Edge& edge = get_edge(edge_id);
                if(processedNodes.find(edge.to) == processedNodes.end()) // adj node hasn't yet been processed 
                {
                    if (edge.capacity > edge.flow) // if edge has some capacity left
                    {
                        nodeQueue.push(edge.to);
                        parentMap.insert(std::make_pair(edge.to, edge_id)); // the path to the new node leads through current edge 
                    }
                }
            }
        }
        
        // Trace back the path from the final node to the start node
        size_t current_node = end_idx;
        if(parentMap.find(end_idx) != parentMap.end()) // If there is a path
        {
            while(current_node != start_idx)
            {
                const size_t edge_id = parentMap.at(current_node);
                const Edge& edge_to_node = get_edge(edge_id);
                path.push_back(edge_id); 
                current_node = edge_to_node.from;
            }
        }
        
        // The created path was in reverse; the start node was pushed_back last!
        std::reverse(path.begin(), path.end());
        return path;
    }

    int FindMaxFlowInPath(const std::vector<size_t>& edge_ids)
    {
        int max_flow = std::numeric_limits<int>::max();        
        for (const size_t edge_id: edge_ids)
        {
            const Edge& edge = get_edge(edge_id);
            const int free_flow = edge.capacity - edge.flow;
            max_flow = (free_flow < max_flow) ? free_flow : max_flow;
        }

        return max_flow;
    }

    void AddFlowAlongPath(const std::vector<size_t>& edge_ids)
    {
        const int added_flow = FindMaxFlowInPath(edge_ids);

        #ifdef VERBOSE 
        std::cout << "Adding flow along the path ";
        for (const auto edge_id: edge_ids)
        {
            const Edge& edge = get_edge(edge_id);
            std::cout << "(" << edge.from+1 << "-" << edge.to+1 << ") ";
        }
        std::cout << std::endl;
        #endif

        for(const size_t edge_id: edge_ids)
        {
            #ifdef VERBOSE 
            const Edge& edge = get_edge(edge_id);
            std::cout << "  + Edge " << edge.from+1 << "-" << edge.to+1
            << " (" << edge.flow << "+" << added_flow << "/" << edge.capacity << ")" << std::endl;
            #endif

            add_flow(edge_id, added_flow);
        }
    }

    void FillNetwork(size_t source_idx, size_t sink_idx)
    {
        std::vector<size_t> path;
        do
        {
            path = FindPath(source_idx, sink_idx);
            AddFlowAlongPath(path);
        } while (!path.empty());
    }


    int CalculateMaxFlow(size_t source, size_t sink)
    {
        int flow = 0;
        FillNetwork(source, sink);

        const std::vector<size_t> edge_id_vec_from_source = get_ids(source);
        for(const size_t edge_id: edge_id_vec_from_source)
        {
            if (edge_id % 2 == 0) // Count only forward edges
            {
                const Edge& edge = get_edge(edge_id);
                flow += edge.flow;
            }
        }
        return flow;
    }

    const std::vector<int> GetMatchings()
    {
        FillNetwork(m_SourceIdx, m_SinkIdx);

        std::vector<int> matchings;
        matchings.reserve(m_NumLeftNodes);
        for (size_t left_node = 0; left_node < m_NumLeftNodes; ++left_node)
        {
          const std::vector<size_t> edges = get_ids(left_node);
          int right_node_match = -1;
          for (const size_t edge_id: edges)
          {
            if (edge_id % 2 == 1) continue; // skip backward edges

            const Edge& edge = get_edge(edge_id);
            if (1 == edge.flow)
            {
              right_node_match = edge.to - m_NumLeftNodes;
              break;
            }
          }
          matchings.push_back(right_node_match);
        }

        return matchings;
    }

};

class MaxMatching 
{
 public:
  void Solve() {
    vector<vector<bool>> adj_matrix = GetAdjMatrix();

    FlowGraph flowgraph(adj_matrix); 
    const vector<int> matching = flowgraph.GetMatchings(); 

    WriteResponse(matching);
  }

 private:
  vector<vector<bool>> GetAdjMatrix() {
    int num_left, num_right;
    cin >> num_left >> num_right;
    vector<vector<bool>> adj_matrix(num_left, vector<bool>(num_right));
    for (int i = 0; i < num_left; ++i)
      for (int j = 0; j < num_right; ++j) {
        int bit;
        cin >> bit;
        adj_matrix[i][j] = (bit == 1);
      }
    return adj_matrix;
  }

  void WriteResponse(const vector<int>& matching) {
    for (int i = 0; i < matching.size(); ++i) {
      if (i > 0)
        cout << " ";
      if (matching[i] == -1)
        cout << "-1";
      else
        cout << (matching[i] + 1);
    }
    cout << "\n";
  }
};

int main() {
  std::ios_base::sync_with_stdio(false);
  MaxMatching max_matching;
  max_matching.Solve();
  return 0;
}
