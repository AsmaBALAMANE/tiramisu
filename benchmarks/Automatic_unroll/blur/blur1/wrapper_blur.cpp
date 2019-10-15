#include "Halide.h"
#include <cstdlib>
#include <chrono>
#include <fstream>
#include <iostream>
#include <fstream>
#include <string>
#include <time.h>
#include "wrapper_blur.h"
#include <tiramisu/utils.h>
using namespace std;

int main(int, char**)
{

    Halide::Buffer<int> input(born_x,born_y,born_c);
    Halide::Buffer<int> out(born_x,born_y,born_c);
    std::vector<std::chrono::duration<double,std::milli>> duration_vector;

    /****************************************** Initialize Buffers *********************************************/
   srand (1);	       
			for (int x = 0; x < born_x; ++x)
             for (int y = 0; y < born_y; ++y)
             for (int z = 0; z < born_c; ++z)
			    //input(x, y, z, n) = rand()%10; 
				input(x, y,z) = 5; 

    std::cout << "\t\tBuffers initialized" << std::endl;

    for (int i=0; i<NB_TESTS; i++)
    {
       // srand (1);
        auto start1 = std::chrono::high_resolution_clock::now();
        blur_tiramisu( input.raw_buffer(),  out.raw_buffer());

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
     print_buffer(input);
     std::cout << "Blur Done" << std::endl;
     print_buffer(out);
       // Write the result 
    /*std::ofstream resultfile;
    resultfile.open ("/home/dina/tiramisuOut/convolution_layer_tiramisu_result.txt");
    for (int n = 0; n < BATCH_SIZE; ++n)
        for (int z = 0; z < FOut; ++z) 
            for (int y = 0; y < N; ++y)	       
                for (int x = 0; x < N; ++x) resultfile <<convolution_layer_tiramisu_buff(x, y, z, n);     
    resultfile.close();*/

    return 0;
}