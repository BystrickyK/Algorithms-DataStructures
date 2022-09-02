#include <iostream>
#include <cmath>
#include <cstdio>
#include <chrono>
#include <vector>
#include <omp.h>

using namespace std;

void atomic()
{
    printf("\nATOMIC\n");

    int sum = 0;
    #pragma omp parallel for num_threads(8)
    for (int i = 0; i < 1000000; ++i)
    {
        #pragma omp atomic
        ++sum;
    }

    cout << sum << endl;
}

void ordered()
{
    printf("\nORDERED\n");
    // Perform the for loop in the ordered sequence
    vector<int> squares;
    #pragma omp parallel for ordered
    for (int i = 0; i < 128; ++i)
    {
        printf("%d: %d\n", omp_get_thread_num(), i);
        int j = i*i;

        #pragma omp ordered
        squares.push_back(j);
    }

    printf("\n");
    for (auto v : squares)
    {
        printf("%d\t", v);
    }

}

void single_master()
{
    #pragma omp parallel 
    {
        // #pragma omp single // executes only on single thread & puts a barrier at the end of the statement
        #pragma omp single nowait // executes only on single thread & doesn't block until completion
        {
            int n;
            cin >> n;
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
    // atomic();
    // ordered();
    single_master();

    return 0;
}