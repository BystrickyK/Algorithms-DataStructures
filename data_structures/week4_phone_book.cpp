#include <iostream>
#include <vector>
#include <string>
#include <list>

using std::string;
using std::vector;
using std::list;
using std::cin;

auto constexpr PRIME_NUM = 10000667;
auto constexpr A = 2;
auto constexpr B = 7;

struct Query {
    string type, name;
    int number;
};

struct Record {
    Record(string name, uint32_t number) : name(name), number(number) {}
    string name;
    uint32_t number;
};

class HashTable {
public:
    HashTable(uint32_t cardinality){
        hash_table_.resize(cardinality);
    }

    void AddRecord(string name, uint32_t number){
       list<Record> &record_list = find_hash_chain_(number); 
       for (Record& rec: record_list){
            if (rec.number == number){
               rec.name = name; 
               return;
            }
        }
        record_list.emplace_back(Record(name, number));
    }

    string FindRecord(uint32_t number) {
        const list<Record>& record_list = find_hash_chain_(number);
        for (const Record& rec : record_list) {
            if (rec.number == number)
                return rec.name;
        }
        return string("not found");
    }

    void RemoveRecord(uint32_t number){
       list<Record> &record_list = find_hash_chain_(number); 
       auto iter = record_list.begin();
       for (iter = record_list.begin(); iter != record_list.end(); ++iter) {
           if((iter)->number == number) 
               break;
        }       
        if (iter != record_list.end())
            record_list.erase(iter);
        return;
    }

private:
    vector<list<Record>> hash_table_;

    uint32_t computeHash_(uint32_t number) {
        return (A * number + B) % PRIME_NUM % hash_table_.size();
    }

    list<Record>& find_hash_chain_(uint32_t number){
       return hash_table_[computeHash_(number)];
    }

};

vector<Query> read_queries() {
    int n;
    cin >> n;
    vector<Query> queries(n);
    for (int i = 0; i < n; ++i) {
        cin >> queries[i].type;
        if (queries[i].type == "add")
            cin >> queries[i].number >> queries[i].name;
        else
            cin >> queries[i].number;
    }
    return queries;
}

void write_responses(const vector<string>& result) {
    for (size_t i = 0; i < result.size(); ++i)
        std::cout << result[i] << "\n";
}

vector<string> process_queries(const vector<Query>& queries) {
    vector<string> result;
    HashTable contacts(queries.size());
    for (size_t i = 0; i < queries.size(); ++i)
        if (queries[i].type == "add") 
            contacts.AddRecord(queries[i].name, queries[i].number);
        else if (queries[i].type == "del") 
            contacts.RemoveRecord(queries[i].number);
        else {
            auto response = contacts.FindRecord(queries[i].number);
            result.push_back(response);
        }
    return result;
}

int main() {
    write_responses(process_queries(read_queries()));
    return 0;
}

