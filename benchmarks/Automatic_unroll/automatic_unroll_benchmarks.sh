 #!/bin/bash
 #script
 export TIRAMISU_ROOT_EXECUT=/Users/mac/Desktop/tiramisu
 export TIRAMISU_ROOT_EXTRACT=/Users/mac/Desktop/PFE_Asma/tiramisu
 if [ "$#" -eq 0 ]; then
 echo " Syntax Error ./Run_automatic_unroll.sh <benchmark_name>"
else
export BENCH_DIRECTORY=/Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/Automatic_unroll/"$1"/"$1"/
 #export BENCH_DIRECTORY=/Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/Automatic_unroll/"$1"/
 ACTUAL_PROGRAM="$1" 
TIRAMISU_ROOT=${TIRAMISU_ROOT_EXECUT}
cd ${BENCH_DIRECTORY}
mkdir cleaner  
export CLEANINR_DIRECTORY=${PWD}/cleaner
 # compile the generator.cpp 
                       g++ -std=c++11 -fno-rtti -DHALIDE_NO_JPEG -I${TIRAMISU_ROOT}/include -I${TIRAMISU_ROOT}/3rdParty/isl/include/ -I${TIRAMISU_ROOT}/3rdParty/Halide/include -I${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/3rdParty/isl/build/lib -L${TIRAMISU_ROOT}/3rdParty/Halide/lib/ -o ${CLEANINR_DIRECTORY}/${ACTUAL_PROGRAM}_generator -ltiramisu -lisl -lHalide -ldl -lpthread -lz -lm -Wl,-rpath,${TIRAMISU_ROOT}/build ${ACTUAL_PROGRAM}_tiramisu.cpp -ltiramisu -lisl -lHalide -ldl -lpthread -lz -lm 
                       # generating the file ${ACTUAL_PROGRAM}.o
                       cd ${CLEANINR_DIRECTORY}
                      ./${ACTUAL_PROGRAM}_generator
                       # compile the wrapper code and link it to the generated object file.
                       g++ -std=c++11 -fno-rtti -I${TIRAMISU_ROOT}/include -I${TIRAMISU_ROOT}/3rdParty/Halide/include -L${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/3rdParty/Halide/lib/ -o wrapper_${ACTUAL_PROGRAM} -ltiramisu -lHalide -ldl -lpthread -lz -lm -Wl,-rpath,${TIRAMISU_ROOT}/build  ../wrapper_${ACTUAL_PROGRAM}.cpp  ${CLEANINR_DIRECTORY}/${ACTUAL_PROGRAM}.o -ltiramisu -lHalide -ldl -lpthread -lz -lm 
                       # Run the wrapper
                       ./wrapper_${ACTUAL_PROGRAM} 
                       cd ..
 rm -rf ${CLEANINR_DIRECTORY} 
 fi