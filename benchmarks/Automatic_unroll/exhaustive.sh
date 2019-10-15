 #!/bin/bash
 #script
 export TIRAMISU_ROOT_EXECUT=/Users/mac/Desktop/tiramisu
 export TIRAMISU_ROOT_EXTRACT=/Users/mac/Desktop/PFE_Asma/tiramisu
 if [ "$#" -eq 0 ]; then
 echo " ALL The benchmarks"
 export ALL=1
else
export BENCH_DIRECTORY=/Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/Automatic_unroll/"$1"/
ACTUAL_PROGRAM="$1" 
cd ${BENCH_DIRECTORY}
export file_name='unrol_explor.h' 
export filename_out='out'
export time_file='exec_times.txt'
export data_file='data.csv'
export best_file='best.txt'

### Explor Schedules ###
for (( j=0; j<3; j++ ))
 do
 cd ${BENCH_DIRECTORY}/${ACTUAL_PROGRAM}${j}
 rm $data_file $time_file
 mkdir cleaner  
 export CLEANINR_DIRECTORY=${PWD}/cleaner

########  Exploring for non unrolled ( class 0) 
TIRAMISU_ROOT=${TIRAMISU_ROOT_EXTRACT}
#cd ${CLEANINR_DIRECTORY} 
g++ -std=c++11 -fno-rtti -DHALIDE_NO_JPEG -I${TIRAMISU_ROOT}/include -I${TIRAMISU_ROOT}/3rdParty/isl/include/ -I${TIRAMISU_ROOT}/3rdParty/Halide/include -I${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/3rdParty/isl/build/lib -L${TIRAMISU_ROOT}/3rdParty/Halide/lib/ -o ${CLEANINR_DIRECTORY}/${ACTUAL_PROGRAM}_generator -ltiramisu -lisl -lHalide -ldl -lpthread -lz -lm -Wl,-rpath,${TIRAMISU_ROOT}/build ${ACTUAL_PROGRAM}_tiramisu0.cpp -ltiramisu -lisl -lHalide -ldl -lpthread -lz -lm 
                       # generating the file ${ACTUAL_PROGRAM}.o
                       cd ${CLEANINR_DIRECTORY}
                      ./${ACTUAL_PROGRAM}_generator 
                       # compile the wrapper code and link it to the generated object file.
                       g++ -std=c++11 -fno-rtti -I${TIRAMISU_ROOT}/include -I${TIRAMISU_ROOT}/3rdParty/Halide/include -L${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/3rdParty/Halide/lib/ -o wrapper_${ACTUAL_PROGRAM} -ltiramisu -lHalide -ldl -lpthread -lz -lm -Wl,-rpath,${TIRAMISU_ROOT}/build  ../wrapper_${ACTUAL_PROGRAM}.cpp  ${CLEANINR_DIRECTORY}/${ACTUAL_PROGRAM}.o -ltiramisu -lHalide -ldl -lpthread -lz -lm 
                       # Run the wrapper
                       ./wrapper_${ACTUAL_PROGRAM} 
                       cd ..
echo "explored factor 0"
rm -rf $CLEANINR_DIRECTORY
rm $filename_out

######### Exploring for unrolled 
TIRAMISU_ROOT=${TIRAMISU_ROOT_EXECUT}
export un=1

######### Blur case #######################
 if [ "$1" == "blur" ]; then
    if [ $j == 0 ];then
    let un_born=6
    fi 
    if [ $j == 1 ];then
    let un_born=7
    fi 
    if [ $j == 2 ];then
    let un_born=7
    fi 
 fi 
########### MMM case #######################
 if [ "$1" == "mmm" ]; then
      if [ $j == 0 ];then
      let un_born=4
      fi 
      if [ $j == 1 ];then
      let un_born=7
      fi 
      if [ $j == 2 ];then
      let un_born=5
      fi 
 fi
########## SMM case #######################
 if [ "$1" == "madd" ]; then
      if [ $j == 0 ];then
      let un_born=6
      fi 
      if [ $j == 1 ];then
      let un_born=4
      fi 
      if [ $j == 2 ];then
      let un_born=5
      fi 
 fi
############ gris case #######################
 if [ "$1" == "gris" ]; then
      if [ $j == 0 ];then
      let un_born=6
      fi 
      if [ $j == 1 ];then
      let un_born=5
      fi 
      if [ $j == 2 ];then
      let un_born=6
      fi 
 fi
############conv case ######################
 if [ "$1" == "conv" ]; then
 let un_born=6
 fi
#######################################################
 for (( i=1; i<$un_born; i++ ))
   do
      un=$(echo '2^'$i | bc)
      echo "#define unroll_factor ${un} " >$file_name
      mkdir cleaner
      #cd ${CLEANINR_DIRECTORY} 
      g++ -std=c++11 -fno-rtti -DHALIDE_NO_JPEG -I${TIRAMISU_ROOT}/include -I${TIRAMISU_ROOT}/3rdParty/isl/include/ -I${TIRAMISU_ROOT}/3rdParty/Halide/include -I${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/3rdParty/isl/build/lib -L${TIRAMISU_ROOT}/3rdParty/Halide/lib/ -o ${CLEANINR_DIRECTORY}/${ACTUAL_PROGRAM}_generator -ltiramisu -lisl -lHalide -ldl -lpthread -lz -lm -Wl,-rpath,${TIRAMISU_ROOT}/build ${ACTUAL_PROGRAM}_tiramisu.cpp -ltiramisu -lisl -lHalide -ldl -lpthread -lz -lm 
                            # generating the file ${ACTUAL_PROGRAM}.o
                            cd ${CLEANINR_DIRECTORY}
                            ./${ACTUAL_PROGRAM}_generator 
                            # compile the wrapper code and link it to the generated object file.
                            g++ -std=c++11 -fno-rtti -I${TIRAMISU_ROOT}/include -I${TIRAMISU_ROOT}/3rdParty/Halide/include -L${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/3rdParty/Halide/lib/ -o wrapper_${ACTUAL_PROGRAM} -ltiramisu -lHalide -ldl -lpthread -lz -lm -Wl,-rpath,${TIRAMISU_ROOT}/build  ../wrapper_${ACTUAL_PROGRAM}.cpp  ${CLEANINR_DIRECTORY}/${ACTUAL_PROGRAM}.o -ltiramisu -lHalide -ldl -lpthread -lz -lm 
                            # Run the wrapper
                          ./wrapper_${ACTUAL_PROGRAM}
                            cd ..
      echo "explored factor ${un}"
      rm -rf $CLEANINR_DIRECTORY
      rm $filename_out
   done
  let best_time=9999999999 
  let n=0
  while read line; do
    # reading each line
                # if [ $n -gt 0 ];then
                   if (( $(echo "${best_time} > $line" |bc -l) )); then
                       best_time=${line} 
                       best_unroll=${n}
                   fi
                 #fi 
    let n++
  done < $time_file
  echo "Best Time: "$best_time "and best factor:" $best_unroll >>$best_file
done

fi