#include <iostream>
#include <vector>
#include <array>

using namespace std;

constexpr uint64_t p1 = 100000081;
constexpr uint64_t p2 = 100001801;
constexpr uint64_t x = 7;

constexpr size_t MOD_POW_ARRAY_SIZE = 500000;

template <typename ARR, typename ELEM>
ARR make_mod_pow_array(ELEM x, ELEM p) 
{
    ARR arr;
    arr.reserve(MOD_POW_ARRAY_SIZE);
	arr.emplace_back(1);
	for (size_t idx = 1; idx < arr.capacity(); ++idx)
	{
		arr.emplace_back(((arr[idx-1] % p) * (x % p)) % p);
	}
    return arr;
}

uint64_t ipow(uint64_t base, uint64_t exponent) {
    uint64_t result = base;
    for (uint64_t exp = exponent; exp > 1; --exp)
        result *= base;
    return result;
}


class Solver {
	string text;
public:	
	Solver(string text) : text(text) {	
		// initialization, precalculation
		fill_precomp_hash_table(precomp_hash1, text, p1);
		fill_precomp_hash_table(precomp_hash2, text, p2);
	}

	bool ask(int a, int b, int l) {
		auto a_hash_1	= substr_hash(a, l, 1);
		auto a_hash_1_n = hash_naive(a, l);
		auto a_hash_2	= substr_hash(a, l, 2);
		auto b_hash_1	= substr_hash(b, l, 1);
		auto b_hash_1_n = hash_naive(b, l);
		auto b_hash_2	= substr_hash(b, l, 2);
		return ((a_hash_1 == b_hash_1) && (a_hash_2 == b_hash_2));
	}

private:
	vector<uint64_t> mod_pow1_array = make_mod_pow_array<vector<uint64_t>, uint64_t>(x, p1);
	vector<uint64_t> mod_pow2_array = make_mod_pow_array<vector<uint64_t>, uint64_t>(x, p2);
	vector<uint64_t> precomp_hash1;
	vector<uint64_t> precomp_hash2;

    void fill_precomp_hash_table(vector<uint64_t> &hashes, string& text, const uint64_t prime) 
	{
        hashes.reserve(text.size() + 1);
        hashes.emplace_back(0);
        for (size_t i = 1; i < text.size() + 1; ++i) {
            uint64_t hash = x * hashes[i - 1] % prime + text[i - 1] % prime;
            hashes.emplace_back(hash % prime);
        }
    }

	uint64_t substr_hash(const size_t begin_idx, const size_t len, uint8_t hash_index) const
	{
		const size_t end_idx = begin_idx + len;
		switch (hash_index) 
		{
		case 1:
			return (precomp_hash1[end_idx] - mod_pow1_array[len] * precomp_hash1[begin_idx] % p1 + p1) % p1;
		case 2:
			return (precomp_hash2[end_idx] - mod_pow2_array[len] * precomp_hash2[begin_idx] % p2 + p2) % p2;
		}
	}

	uint64_t hash_naive(const size_t begin_idx, const size_t len) const
	{
		uint64_t hash = 0;
		const vector<uint64_t> &mod_pow_array = mod_pow1_array;

		for (size_t i = 0; i < len; ++i)
		{
			hash += text[begin_idx + i] * mod_pow_array[len - 1 - i];
            hash = hash % p1;
		}
		return hash;
	}

};

int main() {
	ios_base::sync_with_stdio(0), cin.tie(0);

	string s;
	int q;
	cin >> s >> q;
	Solver solver(s);
	for (int i = 0; i < q; i++) {
		int a, b, l;
		cin >> a >> b >> l;
		cout << (solver.ask(a, b, l) ? "Yes\n" : "No\n");
	}
}
