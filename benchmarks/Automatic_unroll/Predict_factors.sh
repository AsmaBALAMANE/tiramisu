 #!/bin/bash
 #script
 export TIRAMISU_ROOT_EXECUT=/data/scratch/b_asma/tiramisu
 export TIRAMISU_ROOT_EXTRACT=/data/scratch/b_asma/tiramisu_Extraction/tiramisu/
 if [ "$#" -eq 0 ]; then
 echo " Syntax Error ./Run_automatic_unroll.sh <benchmark_name> <test case> <factor>"
else
export BENCH_DIRECTORY=${TIRAMISU_ROOT_EXECUT}/benchmarks/Automatic_unroll/"$1"/"$2"/
 #export BENCH_DIRECTORY=/Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/Automatic_unroll/"$1"/
export time_file='exec_times.txt'
export file_name='unrol_explor.h' 
ACTUAL_PROGRAM="$1" 
TIRAMISU_ROOT=${TIRAMISU_ROOT_EXECUT}
cd ${BENCH_DIRECTORY}
mkdir cleaner  
export CLEANINR_DIRECTORY=${PWD}/cleaner
let un="$3"
rm $time_file
echo "The factor ${un}"
echo "#define unroll_factor ${un} " >$file_name
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