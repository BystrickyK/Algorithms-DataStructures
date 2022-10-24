#include <iostream>
#include <algorithm>
#include <vector>
#include <unordered_map>
#include <queue>
#include <set>
#include <limits>

// #define VERBOSE

/* This class implements a bit unusual scheme for storing edges of the graph,
 * in order to retrieve the backward edge for a given edge quickly. */
class FlowGraph {
public:
    struct Edge {
        int from, to, capacity, flow;
    };

private:
    /* List of all - forward and backward - edges */
    std::vector<Edge> m_Edges;

    /* These adjacency lists store only indices of edges in the edges list */
    std::vector<std::vector<size_t> > m_Graph;

public:
    explicit FlowGraph(size_t n): m_Graph(n) {}

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

};

FlowGraph read_data() {
    int vertex_count, edge_count;
    std::cin >> vertex_count >> edge_count;
    FlowGraph graph(vertex_count);
    for (int i = 0; i < edge_count; ++i) {
        int u, v, capacity;
        std::cin >> u >> v >> capacity;
        graph.add_edge(u - 1, v - 1, capacity);
    }
    return graph;
}

int max_flow(FlowGraph& graph, size_t from, size_t to) 
{
    int flow = graph.CalculateMaxFlow(from-1, to-1);
    return flow;
}

int main() {
    std::ios_base::sync_with_stdio(false);
    FlowGraph graph = read_data();

    std::cout << max_flow(graph, 1, graph.size()) << "\n";
    return 0;
}
