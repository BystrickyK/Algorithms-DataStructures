#include <cstdio>
#include <cstring>
#include <vector>
#include <algorithm>
#include <limits>
#include <queue>
#include <iostream>
#include <memory>
#include <cassert>

class Graph
{
    typedef int Distance;
    typedef int Vertex;

    // Number of nodes
    int N;
    // Source and target
    int s, t;
    // Estimate of the distance from s to t
    int m_SourceToNodeEstimate = INFINITY;
    // Lists of edges outgoing from each node
    std::vector<std::vector<std::pair<int, int>>> m_OutgoingEdges;
    // Lists of edges incoming to each node
    std::vector<std::vector<std::pair<int, int>>> m_IncomingEdges;

    static constexpr int INFINITY = std::numeric_limits<int>::max() / 2;
    // Levels of nodes for node ordering
    std::vector<int> m_Levels;
    // Ranks of nodes - positions in the node ordering
    std::vector<int> m_Ranks;

    // Distance to node v, m_BiDistance[0][v] - from source in the forward search, m_BiDistance[1][v] - from target
    // in the backward search.
    std::vector<std::vector<Distance>> m_BiDistance;

    // Wrapper around STL priority_queue
    class StlHeap
    {
    public:
        using T = std::pair<Distance, Vertex>;
        using Queue = std::priority_queue<T, std::vector<T>, std::greater<T>>;

        StlHeap() {
            queue.reset(new Queue());
        }

        bool empty() const {
            return queue->empty();
        }

        void update(Vertex v, Distance d) {
            queue->push(std::make_pair(d,v));
        }

        void clear() {
            queue.reset(new Queue());
        }

        std::pair<Distance, Vertex> pop() {
            pair<Distance, Vertex> top = queue->top();
            queue->pop();
            return top;
        }

    private:
        std::unique_ptr<Queue> queue;
    };

    // Priority queues for forward and backward searches
    StlHeap m_PrioQueues[2];
public:
    Graph() {
        read_stdin();
        m_BiDistance.resize(2, std::vector<int>(N, INFINITY));
    }

    int get_number_of_nodes() { return N;}

    std::vector<std::pair<int, int>>& get_adjacent(int v, bool forward = true) {
        if (forward) {
            return m_OutgoingEdges[v];
        } else {
            return m_IncomingEdges[v];
        }
    }

    void preprocess_graph() {
        distance.resize(N, INFINITY);
        // Priority queue will store pairs of (importance, node) with the least important node in the head
        std::priority_queue<std::pair<int, int>, std::vector<std::pair<int,int>>, std::greater<std::pair<int, int>>> queue;

        // Implement the rest of the algorithm yourself
    }

    // Returns distance from s to t in the graph
    int query(int u, int w) {
        update(u, 0, true);
        update(w, 0, false);
        s = u; 
        t = w;
        // Implement the rest of the algorithm yourself

        return -1;
    }

private:
    // Try to relax the node v using distance d either in the forward or in the backward search
    void update(int v, int d, bool forward) {
        // Implement this method yourself
    }

    class VertexSet
    {
    public:
        VertexSet(int n = 0) : visited(n) {}
        void resize(int n) {
            visited.resize(n);
        }
        void add(int v) {
            if (!visited[v]) {
                vertices.push_back(v);
                visited[v] = true;
            }
        }
        const std::vector<int>& get() const {
            return vertices;
        }
        const bool has(int v) {
            return visited[v];
        }
        void clear() {
            for (int v : vertices) {
                visited[v] = false;
            }
            vertices.clear();
        }

    private:
        std::vector<int> visited;
        std::vector<int> vertices;
    };
    VertexSet visited;

    // QEntry = (distance, vertex)
    typedef std::pair<int,int> QEntry;
    std::priority_queue<QEntry, std::vector<QEntry>, std::greater<QEntry>> queue;

    struct Shortcut {
        int from;
        int to;
        int cost;
    };

    // Adds all the shortcuts for the case when node v is contracted, and returns the importance of node v
    // in this case
    int do_shortcut(int v, std::vector<Shortcut>& shortcuts, int& mylevel) {
        // Implement this method yourself

        // Add neighbors and shortcut cover heuristics
        return (shortcuts.size() - m_OutgoingEdges[v].size() - m_IncomingEdges[v].size()) + mylevel;
    }

    void set_number_of_nodes(int n) {
        N = n;
        m_OutgoingEdges.resize(n);
        m_IncomingEdges.resize(n);
    }


    void add_edge_to_list(std::vector<std::pair<int,int>>& list, int w, int c) {
        for (int i = 0; i < list.size(); ++i) {
            std::pair<int, int>& p = list[i];
            if (p.first == w) {
                if (p.second > c) {
                    p.second = c;
                }
                return;
            }
        }
        list.push_back(w, c);
    }

    void add_directed_edge(int u, int v, int c) {
        add_edge_to_list(m_OutgoingEdges[u], v, c);
        add_edge_to_list(m_IncomingEdges[v], u, c);
    }

    void add_edge(int u, int v, int c) {
        add_directed_edge(u, v, c);
    }

    void finalize() {
        // Remove unnecessary edges
    }

    bool read_stdin() {
        int u,v,c,n,m;
        assert(scanf("%d %d", &n, &m) == 2);
        set_number_of_nodes(n);
        for (int i = 0; i < m; ++i) {
            assert(scanf("%d %d %d", &u, &v, &c) == 3);
            add_edge(u-1, v-1, c);
        }
        finalize();
        return true;
    }
};

using std::vector;
typedef vector<vector<int> > Matrix;
const int INF = numeric_limits<int>::max();

Matrix read_data(Graph& ch) {
    int n;
    assert(scanf("%d", &n) == 1);

    vector<int> vertices(n);
    for (int i = 0; i < n; ++i) {
        int u;
        assert(scanf("%d", &u) == 1);
        vertices[i] = u-1;
    }

    Matrix graph(n, vector<int>(n));

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            int l = ch.query(vertices[i], vertices[j], 3);
            graph[i][j] = l == -1 ? INF : l;
        }
    }
    return graph;
}

// Finds the length of the shortest possible circular route visiting all the nodes of the graph at least once
int optimal_path(const Matrix& graph) {
    // Implement this function yourself
    return -1;
}

int main() {
    Graph g;
    g.preprocess_graph();
    std::cout << "Ready" << std::endl;

    int t;
    assert(scanf("%d", &t) == 1);
    for (int i = 0; i < t; ++i) {
        Matrix graph = read_data(g);
        printf("%d\n", optimal_path(graph));
    }
}
