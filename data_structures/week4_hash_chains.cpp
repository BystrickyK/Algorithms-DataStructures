#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <list>

using std::string;
using std::vector;
using std::cin;
using std::list;

struct Query {
    string type, s;
    size_t ind;
};


class HashTable {
public:

    void AddString(string new_str){
       list<string>& chain = find_chain_(new_str); 
       for (const string& str: chain){
            if (str == new_str)
               return;
        }
        chain.emplace_front(new_str);
    }

    bool FindString(string query_str ) const {
       const list<string>& chain = find_chain_const_(query_str); 
        for (const string& str : chain) {
            if (str == query_str)
                return true;
        }
        return false; 
    }

    void DelString(string del_str){
       list<string>& chain = find_chain_(del_str); 
       auto iter = chain.begin();
       for (iter = chain.begin(); iter != chain.end(); ++iter) {
           if((*iter) == del_str) 
               break;
        }       
        if (iter != chain.end())
            chain.erase(iter);
        return;
    }

    void CheckChain(size_t chain_index) const {
        const list<string>& chain = hash_table_[chain_index];
        if (chain.empty()){
            std::cout << "\n";
            return;
        }
        for(const string& str: chain)
            std::cout << str << " ";
        std::cout << std::endl;
        return;
    }

    void resize(size_t bucket_count) {
        hash_table_.resize(bucket_count);
        return;
    }

private:
    vector<list<string>> hash_table_;

    list<string>& find_chain_(const string& str) {
       return hash_table_[hash_func(str)];
    }

    const list<string>& find_chain_const_(const string& str) const {
       return hash_table_[hash_func(str)];
    }

    size_t hash_func(const string& s) const {
        static const size_t multiplier = 263;
        static const size_t prime = 1000000007;
        unsigned long long hash = 0;
        for (int i = static_cast<int> (s.size()) - 1; i >= 0; --i)
            hash = (hash * multiplier + s[i]) % prime;
        return hash % hash_table_.size();
    }

};

class QueryProcessor {
public:
    QueryProcessor(size_t bucket_count): bucket_count(bucket_count) {
        hash_table_.resize(bucket_count);
    }

    Query readQuery() const {
        Query query;
        cin >> query.type;
        if (query.type != "check")
            cin >> query.s;
        else
            cin >> query.ind;
        return query;
    }

    void writeSearchResult(bool was_found) const {
        std::cout << (was_found ? "yes\n" : "no\n");
    }

    void processQuery(const Query& query) {
        if (query.type == "check") 
            hash_table_.CheckChain(query.ind);
        else if (query.type == "find")
            writeSearchResult(hash_table_.FindString(query.s));
        else if (query.type == "add")
            hash_table_.AddString(query.s);
        else if (query.type == "del")
            hash_table_.DelString(query.s);
    }

    void processQueries() {
        int n;
        cin >> n;
        for (int i = 0; i < n; ++i)
            processQuery(readQuery());
    }

private:
    size_t bucket_count;
    HashTable hash_table_;

};

int main() {
    std::ios_base::sync_with_stdio(false);
    int bucket_count;
    cin >> bucket_count;
    QueryProcessor proc(bucket_count);
    proc.processQueries();
    return 0;
}
