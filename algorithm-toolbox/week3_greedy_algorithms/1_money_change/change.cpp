#include <iostream>
#include <array>

// Must be sorted in decreasing order
constexpr std::array<uint32_t, 3> coins = {10, 5, 1};

uint32_t get_change(uint32_t m) {
    uint32_t n = 0;
    while (m > 0)
    {
        for(auto coin_it = coins.cbegin(); coin_it != coins.cend(); ++coin_it)
        {
            if (m >= *coin_it)
            {
                m -= *(coin_it);
                ++n;
                std::cout << "left: " <<  m << " | coin: " << *coin_it << " | count:" << n << "\n";
                break;
            }
        }
    }
    return n;
}

int main() {
  uint32_t m;
  std::cin >> m;
  std::cout << get_change(m) << '\n';
}
