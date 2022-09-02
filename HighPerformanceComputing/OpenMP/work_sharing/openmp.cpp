#include <iostream>
#include <cmath>
#include <cstdio>
#include <chrono>
#include <omp.h>

using namespace std;

void hello_openmp()
{
    omp_set_num_threads(8);
    #pragma omp parallel
    {
        #pragma omp critical
        cout << "Hello, OpenMP " << omp_get_thread_num()
        << "/" << omp_get_num_threads() << endl;
    }
}

void parallel_for()
{
    const int length = 1024 * 1024 * 64;
    float* a = new float[length];
    float* b = new float[length];
    float* c = new float[length];
    float* result = new float[length];

#pragma omp parallel for
    for (size_t i = 0; i < length; ++i)
    {
        result[i] = a[i] + b[i] * erff(c[i]);
    }

    delete[] a;
    delete[] b;
    delete[] c;
    delete[] result;
}

void sections()
{
    #pragma omp parallel sections
    {
        #pragma omp section
        {
            for(int i = 0; i < 100000; ++i)
            {
                cout << i;
            }
        }

        #pragma omp section
        {
            for(int i = 0; i < 100000; ++i)
            {
                cout << static_cast<char>('a' + (i % 26));
            }

        }
    }
}

void single_master()
{
    #pragma omp parallel 
    {
        #pragma omp single // executes only on single thread
        {
            printf("gathering input: %d\n", omp_get_thread_num());
        }

        printf("in parallel on %d\n", omp_get_thread_num());

        #pragma omp barrier // wait until all threads finish processing
        #pragma omp master
        {
            printf("output on: %d\n", omp_get_thread_num());
        }
    }
}

int main()
{
    // hello_openmp();
    // parallel_for();
    // sections();
    single_master();

    return 0;
}
