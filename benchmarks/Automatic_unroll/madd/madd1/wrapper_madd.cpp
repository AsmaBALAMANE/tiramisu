#include "Halide.h"
#include "wrapper_madd.h"
#include "tiramisu/utils.h"
#include <cstdlib>
#include <iostream>
#include <time.h>
#include <fstream>
#include <chrono>


int main(int, char **){

    Halide::Buffer<int32_t> buf00(LITTLE,LITTLE); 
    Halide::Buffer<int32_t> buf01(LITTLE,LITTLE);
    Halide::Buffer<int32_t> buf0(LITTLE,LITTLE);
    std::vector<std::chrono::duration<double,std::milli>> duration_vector;
    init_buffer(buf0, (int32_t)0);
       for (int n = 0; n < LITTLE; ++n)
        for (int z = 0; z < LITTLE; ++z)       
            { 
              int  v1 = rand() % 1245;
              buf00(z,n)=z+n;
              int  v2 = rand() % 1245;
              buf01(z,n)=z-n;
               
            }
     /*       
    std::cout << "Matricies initialization" << std::endl;
    print_buffer(buf0);
    print_buffer(buf00);
    print_buffer(buf01);
    */
    for (int i=0; i<NB_TESTS; i++)
    {
        auto start1 = std::chrono::high_resolution_clock::now();
          madd_tiramisu(buf00.raw_buffer(), buf01.raw_buffer(), buf0.raw_buffer());

        auto end1 = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double,std::milli> duration = end1 - start1;
        duration_vector.push_back(duration);
    }  
    std::ofstream exec_times_file;
    exec_times_file.open("../exec_times.txt", std::ios_base::app);
    if (exec_times_file.is_open()){
        exec_times_file << median(duration_vector) <<std::endl;
        exec_times_file.close();
    }
    std::cout << "Addition Done" << std::endl;
    //print_buffer(buf00);
   // print_buffer(buf01);
       // print_buffer(buf0);
    /*
    std::cout << "Multiplication result" << std::endl;
    print_buffer(buf0);
    for (int n = 0; n < LITTLE; ++n)
        for (int z = 0; z < LITTLE; ++z)       
            { 
              std::cout << buf0(z,n) << std::endl ;
               
            }
    */
    return 0;
}