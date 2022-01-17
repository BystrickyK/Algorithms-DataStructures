#include <iostream>
#include <string>
#include <vector>
#include <math.h>

using std::string;
using std::vector;

constexpr int32_t multiplier = 1;
constexpr uint64_t prime = 100000000007;

struct Data {
    string pattern, text;
};

Data read_input() {
    Data data;
    std::cin >> data.pattern >> data.text;
    return data;
}

uint64_t string_hash(const string& str) {
    uint64_t hash = 0;
    for (size_t i = 0; i < str.size(); ++i) 
        hash = (hash * multiplier + str[i]) % prime;
    return hash;
}

bool str_compare(const string& text, const string& pattern, size_t text_start_index) {
    for (size_t pattern_idx = 0; pattern_idx < pattern.size(); ++pattern_idx) {
        if (pattern[pattern_idx] != text[pattern_idx + text_start_index]) {
            return false;
        }
    }
    return true;
}

uint64_t ipow(uint64_t base, uint64_t exponent) {
    uint64_t result = base;
    for (uint64_t exp = exponent; exp > 1; --exp)
        result *= base;
    return result;
}

std::vector<uint64_t> precompute_hashes(const string& text, const size_t hash_window_size) {
    vector<uint64_t> hashes;
    hashes.reserve(text.size() - hash_window_size + 1);
    hashes.emplace_back(string_hash(text.substr(0, hash_window_size)));
    for (size_t i = 1; i + hash_window_size < text.size() + 1; ++i) {
        uint64_t hash = multiplier * hashes[i - 1] % prime;
        hash -= ipow(multiplier, hash_window_size) * text[i - 1];
        hash += text[i + hash_window_size - 1];
        hashes.emplace_back(((hash%prime) + prime) % prime);
    }
    return hashes;
}

void print_occurrences(const std::vector<size_t>& output) {
    for (size_t i = 0; i < output.size(); ++i)
        std::cout << output[i] << " ";
    std::cout << "\n";
}

std::vector<size_t> get_occurrences(const Data& input) {
    const string& s = input.pattern, t = input.text;
    const vector<uint64_t> text_hashes = std::move(precompute_hashes(input.text, input.pattern));
    const uint64_t pattern_hash = string_hash(input.pattern);
    std::vector<size_t> ans;
    for (size_t i = 0; i <= t.size() - s.size(); ++i) {
        if (text_hashes[i] == pattern_hash) {
            if (str_compare(t, s, i))
                ans.push_back(i);
        }
    }
    return ans;
}


int main() {
    std::ios_base::sync_with_stdio(false);
    print_occurrences(get_occurrences(read_input()));
    return 0;
}
