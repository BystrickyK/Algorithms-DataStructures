#include <cstdio>
#include <cstring>
#include <vector>
#include <algorithm>
#include <limits>
#include <queue>
#include <iostream>
#include <memory>
#include <cassert>
#include <array>
#include <list>

struct Edge;
struct Node;

struct Node
{
    static constexpr int64_t INFINITY = INT64_MAX / 2;

    Node():
      m_Distance({INFINITY , INFINITY}),
      m_pPreviousNode({nullptr, nullptr})
      {}

    std::array<int64_t, 2> m_Distance; // first = forward; second = backward
    std::array<Node*, 2> m_pPreviousNode;

    std::list<std::shared_ptr<Edge>> m_IncomingEdges; // list of edges incoming to this node 
    std::list<std::shared_ptr<Edge>> m_OutcomingEdges; // list of edges outcoming from this node 
    
};

class Edge{
  public:
    Edge(Node* const origin_node, Node* const destination_node, const int64_t weight = Node::INFINITY):
      m_pSourceNode(origin_node),
      m_pDestinationNode(destination_node),
      m_Weight(weight),
      m_IsShortcut(false),
      m_ShortcutMetadata(nullptr)
      {}

    void AddShortcutMetadata(Node* const avoided_node, Edge* const incoming_edge, Edge* const outcoming_edge)
    {
        m_IsShortcut = true;
        m_ShortcutMetadata = std::make_unique<ShortcutMetadata>(avoided_node, incoming_edge, outcoming_edge);
    }

    template <bool forward = true>
    bool RelaxEdge()
    {
        constexpr unsigned int direction = forward ? 0 : 1;
        Node* const source_node = forward ? m_pSourceNode : m_pDestinationNode;
        Node* const destination_node = forward ? m_pDestinationNode : m_pSourceNode;

        const int64_t distanceToDestFromThis = (source_node->m_Distance)[direction] + m_Weight;
        const int64_t distanceToDest = (destination_node->m_Distance)[direction];
        if (distanceToDestFromThis < distanceToDest){
            (destination_node->m_pPreviousNode)[direction] = source_node;
            (destination_node->m_Distance)[direction] = distanceToDestFromThis;
            return true; // Edge was relaxed
        }
        else
            return false; // Edge wasn't relaxed
    }

    template <bool forward = true>
    Node* GetDestinationNodePtr(){
        if constexpr (forward)
            return m_pDestinationNode;
        else
            return m_pSourceNode;
    }

    template <bool forward = true>
    Node* GetSourceNodePtr(){
        if constexpr (forward)
            return m_pSourceNode;
        else
            return m_pDestinationNode;
    }

    template <bool forward = true>
    const int64_t GetDistToSource() const{
        constexpr unsigned int direction = forward ? 0 : 1;
        return (m_pSourceNode->m_Distance)[direction];
    }

  private:
    Node* const m_pDestinationNode;
    Node* const m_pSourceNode;

    const int64_t m_Weight;

    struct ShortcutMetadata
    {
        ShortcutMetadata(Node* const avoided_node, Edge* const incoming_edge, Edge* const outcoming_edge):
            m_AvoidedNode(avoided_node), m_IncomingEdge(incoming_edge), m_OutcomingEdge(outcoming_edge){}

       Node* const m_AvoidedNode; 
       Edge* const m_IncomingEdge;
       Edge* const m_OutcomingEdge;
    };

    bool m_IsShortcut;
    std::unique_ptr<ShortcutMetadata> m_ShortcutMetadata;
};

class Graph {
    using NodeContainer = std::vector<Node>;
    public:
        Graph(){
            read_stdin();
        }

        template <bool forward>
        void set_node_distance(uint64_t node_idx, uint64_t distance)
        {
            constexpr unsigned int direction = forward ? 0 : 1;
            m_Graph[node_idx].m_Distance[direction] = distance;
        }

        Node* get_node_ptr(uint64_t node_idx)
        {
            return &m_Graph[node_idx];
        }

        void reinitialize()
        {
            // Reconstruct every node using the default node constructor
            for (auto node: m_Graph)
                node = Node();
        }

        void preprocess()
        {
            
        }

    private:
        NodeContainer m_Graph;

        void read_stdin() {
            int number_of_edges;
            int number_of_nodes;
            int source_node_idx;
            int dest_node_idx;
            int node_weight;

            assert(scanf("%d %d", &number_of_nodes, &number_of_edges) == 2);
            m_Graph.resize(number_of_nodes);

            for (int i = 0; i < number_of_edges; ++i) {
                assert(scanf("%d %d %d", &source_node_idx, &dest_node_idx, &node_weight) == 3);
                Node& from_node = m_Graph[source_node_idx - 1];
                Node& to_node = m_Graph[dest_node_idx - 1];
                add_edge(from_node, to_node, node_weight);
            }
            finalize(); // remove unnecessary edges
        }

        void finalize(){
            // TODO
            return;
        }

        void add_edge(Node& source, Node& destination, int64_t weight) {
            std::shared_ptr<Edge> p_edge = std::make_shared<Edge>(&source, &destination, weight);
            source.m_OutcomingEdges.push_back(p_edge);
            destination.m_IncomingEdges.push_back(p_edge);
        }

};

class BiDijkstra{
    static constexpr int64_t INFINITY = Node::INFINITY;

    public:

        int64_t ComputeShortestPath(uint64_t source_node_idx, uint64_t destination_node_index){

            InitializeGraphNodes();
            m_Graph.set_node_distance<true>(source_node_idx, 0);
            m_Graph.set_node_distance<false>(destination_node_index, 0);

            ClearUnexploredPrioQueues();

            m_UnexploredNodes[0].insert(m_Graph.get_node_ptr(source_node_idx));

            return -1;
        }

    private:

        Graph m_Graph;

        class UnexploredNodesPrioQ
        {
            struct NodeComparator{
            bool operator()(const Node* const lhs, const Node* const rhs) const{
                return (lhs->m_Distance) > (rhs->m_Distance);
            }
            };
            using NodesPrioQ = std::priority_queue<Node*, std::vector<Node*>, NodeComparator>;

            public:
                UnexploredNodesPrioQ()
                {
                    clear();
                }

                bool is_empty() const 
                {
                    return m_PrioQueue->empty();
                }

                void insert(Node* p_node)
                {
                    m_PrioQueue->push(p_node);
                }

                void clear()
                {
                    m_PrioQueue.reset(new NodesPrioQ());
                }

                Node* pop()
                {
                    Node* p_top_node = m_PrioQueue->top();
                    m_PrioQueue->pop();
                    return p_top_node;
                }

            private:
                std::unique_ptr<NodesPrioQ> m_PrioQueue;
        };

        // Priority queues for Dijkstra's algorithm for both directions
        std::array<UnexploredNodesPrioQ, 2> m_UnexploredNodes; // m_UnexploredNodes[0] = forward, m_UnexploredNodes[1] = backward

        void InitializeGraphNodes(){
            m_Graph.reinitialize();
        }

        void ClearUnexploredPrioQueues(){
            m_UnexploredNodes[0].clear(); // clear forward search prio queue
            m_UnexploredNodes[1].clear(); // clear backward search prio queue
        }
};

/*************************\
 ** MAIN FUNCTION START **
\*************************/

int main() {
    Graph g;
    std::cout << "Hello";
    // g.preprocess_graph();
    // std::cout << "Ready" << std::endl;

    // int t;
    // assert(scanf("%d", &t) == 1);
    // for (int i = 0; i < t; ++i) {
    //     int u, v;
    //     assert(scanf("%d %d", &u, &v) == 2);
    //     printf("%d\n", g.query(u-1, v-1, 3));
    // }
    return 0;
}

/*************************\
 *** MAIN FUNCTION END ***
\*************************/





