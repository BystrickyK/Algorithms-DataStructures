#include <iostream>
#include <memory>
#include <random>
#include <chrono>

void simple_mad(float* a, float* b, float* c, float* result, const int length);
void fill_arrays(float* a, float* b, float* c, const int length);

void optimization()
{
    const int length = 1024 * 1024 * 64;
    float* a = new float[length];
    float* b = new float[length];
    float* c = new float[length];
    float* result = new float[length];

    auto time_fun = [](auto fun, auto... args){
        const auto time_start = std::chrono::high_resolution_clock::now();
        fun(args...);
        const auto time_end = std::chrono::high_resolution_clock::now();
        const auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(time_end - time_start).count();
        std::cout << "Runtime: " << runtime << "ms" << std::endl;
    };

    time_fun(fill_arrays, a, b, c, length);
    time_fun(simple_mad, a, b, c, result, length);


    delete[] a;
    delete[] b;
    delete[] c;
    delete[] result;
}


void simple_mad(float* a, float* b, float* c, float* result, const int length)
{
    for(size_t i = 0; i < length; ++i)
        result[i] = a[i] + b[i] + c[i];
}

void fill_arrays(float* a, float* b, float* c, const int length)
{
    const auto seed = std::chrono::steady_clock::now().time_since_epoch().count();
    std::mt19937 rng(seed);
    std::uniform_real_distribution<float> distr(0, 1);

    for (size_t i = 0; i < length; ++i)
    {
        a[i] = distr(rng);
        b[i] = distr(rng);
        c[i] = distr(rng);
    }
}



int main()
{
    optimization();
    return 0;
}