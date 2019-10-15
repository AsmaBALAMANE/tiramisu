#include "Halide.h"
#include <cstdlib>
#include <chrono>
#include <fstream>
#include <iostream>
#include <fstream>
#include <string>
#include <time.h>
#include "wrapper_conv.h"
#include <tiramisu/utils.h>
using namespace std;

int main(int, char**)
{

    Halide::Buffer<int> input(N+K, N+K, FIn, BATCH_SIZE);
    Halide::Buffer<int> filter(K+1, K+1, FIn, FOut);
    Halide::Buffer<int> bias(FOut);
    Halide::Buffer<int> convolution_layer_halide(N, N, FOut, BATCH_SIZE);
    Halide::Buffer<int> convolution_layer_tiramisu_buff(N, N, FOut, BATCH_SIZE);
    Halide::Buffer<int> parameters(5);
    std::vector<std::chrono::duration<double,std::milli>> duration_vector;

    /****************************************** Initialize Buffers *********************************************/
   srand (1);
  for (int n = 0; n < BATCH_SIZE; ++n)
	for (int z = 0; z < FIn; ++z)
		for (int y = 0; y < N+K; ++y)	       
			for (int x = 0; x < N+K; ++x)
			    //input(x, y, z, n) = rand()%10; 
				input(x, y, z, n) = 5; 

    for (int z = 0; z < FOut; ++z)
        bias(z) = 1;

     for (int y = 0; y < K+1; ++y)
        for (int x = 0; x < K+1; ++x)
            for (int z = 0; z < FIn; ++z)
		for (int q = 0; q < FOut; ++q)
		    filter(x, y, z, q) = 1;

    std::cout << "\t\tBuffers initialized" << std::endl;
  
    // Initialize parameters[]
    parameters(0) = N;
    parameters(1) = K;
    parameters(2) = FIn;
    parameters(3) = FOut;
    parameters(4) = BATCH_SIZE;


    for (int i=0; i<NB_TESTS; i++)
    {
       // srand (1);
        auto start1 = std::chrono::high_resolution_clock::now();
        conv_tiramisu(parameters.raw_buffer(), input.raw_buffer(), filter.raw_buffer(), bias.raw_buffer(),convolution_layer_tiramisu_buff.raw_buffer());

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