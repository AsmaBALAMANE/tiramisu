#include "Halide.h"
#include <cstdlib>
#include <chrono>
#include <fstream>
#include <iostream>
#include <fstream>
#include <string>
#include <time.h>
#include "wrapper_gris.h"
#include <tiramisu/utils.h>
using namespace std;

int main(int, char**)
{

    Halide::Buffer<float> r_input(born_y,born_x);
    Halide::Buffer<float> g_input(born_y,born_x);
    Halide::Buffer<float> b_input(born_y,born_x);
    Halide::Buffer<float> out(born_y,born_x);
    std::vector<std::chrono::duration<double,std::milli>> duration_vector;

    /****************************************** Initialize Buffers *********************************************/
         srand (static_cast <unsigned> (time(0)));       
			for (int y = 0; y < born_y; ++y)
             for (int x = 0; x < born_x; ++x){
			    //input(x, y, z, n) = rand()%10; 
                float v1 = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/255));
                //int  v1 = rand() % 255;
				r_input(x,y) = v1; 
                float v2 = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/255));
               // int  v2 = rand() % 255;
                g_input(x,y) = v2; 
                //int  v3 = rand() % 255;
                float v3 = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/255));
                b_input(x,y) = v3; 
             }

    std::cout << "\t\tBuffers initialized" << std::endl;

    for (int i=0; i<NB_TESTS; i++)
    {
       // srand (1);
        auto start1 = std::chrono::high_resolution_clock::now();
        gris_tiramisu( r_input.raw_buffer(),g_input.raw_buffer(),b_input.raw_buffer(), out.raw_buffer());

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
     print_buffer(r_input);
     print_buffer(g_input);
     print_buffer(b_input);
     std::cout << "Gris Done" << std::endl;
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