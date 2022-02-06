#include <algorithm>
#include <iostream>
#include <vector>
#if defined(__unix__) || defined(__APPLE__)
#include <sys/resource.h>
#endif



using std::cin;
using std::cout;
using std::endl;
using std::vector;

class TreeOrders {
private:
    long long n;
    vector <long long> key;
    vector <long long> left;
    vector <long long> right;
    vector <long long> traversal;
    vector <long long> idx_traversal;
    vector <bool> right_child;
    

public:
    void read()
    {
        cin >> n;
        key.resize(n);
        left.resize(n);
        right.resize(n);
        traversal.reserve(n);
        for (long long i = 0; i < n; i++)
        {
            cin >> key[i] >> left[i] >> right[i];
        }
    }

    void InOrderTraversal(long long subtree_idx, bool is_right_child)
    {
        static bool right_token = false;
        if (subtree_idx == -1)
            return;

        if (is_right_child) right_token = true;

        InOrderTraversal(left[subtree_idx], false);
        traversal.emplace_back(key[subtree_idx]);
        idx_traversal.emplace_back(subtree_idx);
        right_child.emplace_back(right_token);
        right_token = false;
        InOrderTraversal(right[subtree_idx], true);
        return;
    }

    void traverse_in_order()
    {
        InOrderTraversal(0, false);
        return;
    }



    bool is_binary_tree()
    {
        if (key.size() == 0) return true;

        traverse_in_order();

        for (size_t i = 1; i < traversal.size(); ++i)
        {
            if ((traversal[i]) <= (traversal[i-1])) 
            {
                if (traversal[i] == traversal[i - 1] && right_child[i])
                    continue;
                else
                    return false;
            }
        }
        return true;
    }
};

int main_with_large_stack_space() {
  TreeOrders tree_orders;
  tree_orders.read();

  if (tree_orders.is_binary_tree())
  {
    cout << "CORRECT" << endl;
  }
  else 
  {
    cout << "INCORRECT" << endl;
  }
  return 0;
}

int main(int argc, char** argv)
{
#if defined(__unix__) || defined(__APPLE__)
    // Allow larger stack space
    const rlim_t kStackSize = 16 * 1024 * 1024;   // min stack size = 16 MB
    struct rlimit rl;
    int result;

    result = getrlimit(RLIMIT_STACK, &rl);
    if (result == 0)
    {
        if (rl.rlim_cur < kStackSize)
        {
            rl.rlim_cur = kStackSize;
            result = setrlimit(RLIMIT_STACK, &rl);
            if (result != 0)
            {
                std::cerr << "setrlimit returned result = " << result << std::endl;
            }
        }
    }
#endif

    return main_with_large_stack_space();
}

