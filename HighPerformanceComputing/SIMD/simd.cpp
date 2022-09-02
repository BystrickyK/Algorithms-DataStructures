#include <iostream>
#include <string>

std::string get_cpu_name()
{
    uint8_t data[13] = {0};

    __asm__
    (
        "movl $0, %%eax\n"
        "cpuid\n"         
        "movl %%ebx, %0\n"   
        "movl %%edx, %1\n"   
        "movl %%ecx, %2\n"
        : "=m"(data[0]), "=m"(data[4]), "=m"(data[8])
        :
        :
    );

    return std::string(reinterpret_cast<const char*>(data), 13);
}

void sse_params() 
{
    int d, c;

    __asm__
    (
        "movl $1, %%eax\n"
        "cpuid\n"         
        "movl %%edx, %0\n"   
        "movl %%ecx, %1\n"
        : "=m"(d), "=m"(c) 
        :
        :
    );

    if(d & (1 << 26))
        std::cout << "SSE2 is supported" << std::endl;

    if(c & (1 << 0))
        std::cout << "SSE3 is supported" << std::endl;

    if(c & (1 << 19))
        std::cout << "SSE4.1 is supported" << std::endl;

    if(c & (1 << 20))
        std::cout << "SSE4.2 is supported" << std::endl;

}

void sse_multiply(float* f1, float* f2, float* res) 
{
    asm volatile
    (
        "movups %1, %%xmm1\n"
        "movups %2, %%xmm2\n"
        "mulps %%xmm1, %%xmm2\n"
        "movups %%xmm2, %0\n"
        : "=m"(*res)
        : "m"(*f1), "m"(*f2)
        : 
    );
}



int main(int argc, char* argv[])
{
    std::cout << "CPU Name: " << get_cpu_name() << std::endl;
    sse_params();

    float f1[4] = {1.f, 2.f, 3.f, 4.f};
    float f2[4] = {5.f, 4.f, 3.f, 2.f};
    float res[4] = {0.f};
    sse_multiply(f1, f2, res);

    for (size_t i=0; i < 4; ++i)
        std::cout << res[i] << " ";
    std::cout << std::endl;

    return 0;
}