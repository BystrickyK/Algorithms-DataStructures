#include <iostream>
#include <immintrin.h>
#include <cpuid.h>

void print_cpuid()
{
    uint32_t cpuInfo[4] = {0};
    __get_cpuid(0, &cpuInfo[3], &cpuInfo[0], &cpuInfo[2], &cpuInfo[1]);
    std::cout << std::string(reinterpret_cast<const char*>(cpuInfo), 12);
}

int main(int argv, char** argc)
{

    union packed_single
    {
        __m128 ps;
        float nums[4];
    };

    packed_single a, b, c, d;

    a.ps = _mm_set_ps(7, 2, 9, 3); // 4x Packed Single precision
    b.ps = _mm_set_ps(4, 3, 1, 6); // 4x Packed Single precision

    // interpret the __m128 arguments as packed&single and perform addition
    c.ps = _mm_add_ps(a.ps, b.ps); 
    d.ps = _mm_mul_ps(a.ps, b.ps);

    for (size_t i = 0; i < 4; ++i)
        std::cout << i << ": " << c.nums[i] << " | ";
    std::cout << std::endl;

    for (size_t i = 0; i < 4; ++i)
        std::cout << i << ": " << d.nums[i] << " | ";
    std::cout << std::endl;

    return 0;
}