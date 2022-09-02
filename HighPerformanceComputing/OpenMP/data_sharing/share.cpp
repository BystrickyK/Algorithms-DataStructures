#include <iostream>
#include <cmath>
#include <cstdio>
#include <chrono>
#include <omp.h>

using namespace std;

void data_sharing()
{
    int i = 10;

    omp_set_num_threads(4);
    
    // #pragma omp parallel for private(i) // when 'i' is used in for loop, a brand new thread-local 'i' var is created (uninitialized!!)
    // #pragma omp parallel for firstprivate(i) // 'i' gets initialized, but the final 'i' is still 10
    #pragma omp parallel for lastprivate(i) // 'i' gets initialized, keeps the "last" edited value of 'i' 
    for (int a = 0; a < 12; ++a)
    {
        printf("thread %d i = %d\n", omp_get_thread_num(), i);
        i = 1000 + omp_get_thread_num();
    }

    printf("%d\n", i);
}

int main()
{
    data_sharing();

    return 0;
}

/*
Shared - item is accessible by all threads simultaneously
    (all vars except loop counters are shared by default)

Private - item is thread-local, not inited or available outside parallel region

Firstprivate - like private but inited to original value

Lastprivate - like private except original value updated on exit

default - defines whether, by default, variables are shared or not
*/