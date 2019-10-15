 #!/bin/bash
 # functions
 containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}
#script
export TIRAMISU_ROOT_EXECUT=/data/scratch/b_asma/tiramisu
export TIRAMISU_ROOT_EXTRACT=/data/scratch/b_asma/tiramisu_Extraction/tiramisu/
if [ "$#" -eq 0 ]; then
 export DATA_DIRECTORY=/data/scratch/b_asma/tiramisu_Extraction/tiramisu/utils/code_generator-unrolling/cmake-build-debug/samples/
 echo " Default <DATA_DIRECTORY> :=/data/scratch/b_asma/tiramisu_Extraction/tiramisu/utils/code_generator-unrolling/cmake-build-debug/samples/"
else
    DATA_DIRECTORY=/data/scratch/b_asma/tiramisu_Extraction/tiramisu/utils/code_generator-unrolling/cmake-build-debug/samples"$1"/
    Code_FROM="$1" 
fi
 FUNCTION_DIRECTORY=function
 SCHEDULE_DIRECTORY=schedule
 UNROLL_DIRECTORY=unroll
 FILE_NAME_EXEC='exec_times.txt'
 FILE_NAME_UNROLL_FACTORS=${DATA_DIRECTORY}"/unroll_factors.csv"
 filename_out=${DATA_DIRECTORY}"/output.txt"
 trace_out=${DATA_DIRECTORY}"/trace.txt"
 let nb_f=Code_FROM-1
 let RE=nb_f+3OO
 let nb_unr=0
 let best_unroll=0
 let best_time=99999999999
 seperator="_"
for f in `ls ${DATA_DIRECTORY}  | sort -V `; do  
    if [ -d "${DATA_DIRECTORY}/$f" ]; then
     if [ $nb_f -gt $RE ]; then
       cd  ${DATA_DIRECTORY}/$f
       echo "The function: "${PWD}
       echo "------------------------------">>$trace_out
       echo "-------------------------------------------------------------">>$filename_out
       echo "The function: "${PWD}>>$trace_out
       echo "The function: "${PWD}>>$filename_out
       let nb_f++
        nb_smax=$(ls -l | grep "^d" | wc -l)
        #generating 10 diffrent randoom schedules 
         schedules=(-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 )
         schedules[0]=$((RANDOM%nb_smax))
         for j in {1..9}; do
           val=$((RANDOM%nb_smax))
           containsElement "$val" "${schedules[@]}"
           test=$?
           while [ $test -eq "0" ]
           do
            val=$((RANDOM%nb_smax))
            containsElement "$val" "${schedules[@]}"
            test=$?
           done
           schedules[$j]=$val
        done
        echo "schedule list" >>$trace_out
        echo ${schedules[*]} >>$trace_out
        for j in {0..9}; do
          #Select randomly one of schedules in the function folder 
          nb_s=${schedules[$j]}
          schedule_dir=$f$seperator$SCHEDULE_DIRECTORY$seperator$nb_s
          cd $schedule_dir
          echo "The schedule: " ${PWD}>>$trace_out
          echo "The schedule: " ${PWD}
          echo "-------------------------------------------------------------">>$filename_out
          echo "The schedule: " ${PWD}>>$filename_out
          let nb_unr=0
          for u in `ls ${DATA_DIRECTORY}/$f/$schedule_dir | sort -V `; do
            if [ -d "${DATA_DIRECTORY}/$f/$schedule_dir/$u" ]; then
               cd ${DATA_DIRECTORY}/$f/$schedule_dir/$u
               echo "Unrolling factor Exploration in the directory "${PWD}>>$trace_out
               echo "-------------------------------------------------------------">>$filename_out
               echo "Unrolling factor Exploration in the directory "${PWD}>>$filename_out
               export CLEANINR_DIRECTORY=${PWD}/cleaner
               export ACTUAL_PROGRAM=${FUNCTION_DIRECTORY}${nb_f}_${SCHEDULE_DIRECTORY}_${nb_s}_${UNROLL_DIRECTORY}_${nb_unr}
                    for i in {1..3}; do
                       mkdir cleaner      
                       if [[ ("$nb_unr" = "0") && ("$i" = "1" ) ]];then
                          echo " Extracting Features of the function " ${DATA_DIRECTORY}/$f
                          echo " Extracting Features of the function " ${DATA_DIRECTORY}/$f "cpt" $i>>$trace_out
                          echo "-------------------------------------------------------------">>$filename_out
                          echo " Extracting Features of the function " ${DATA_DIRECTORY}/$f "cpt" $i>>$filename_out
                          TIRAMISU_ROOT=${TIRAMISU_ROOT_EXTRACT}
                       else 
                          echo " Executing " ${ACTUAL_PROGRAM}  "cpt" $i
                          echo " Executing " ${ACTUAL_PROGRAM}  "cpt" $i>>$trace_out
                          echo "-------------------------------------------------------------">>$filename_out
                          echo " Executing " ${ACTUAL_PROGRAM}  "cpt" $i>>$filename_out
                          TIRAMISU_ROOT=${TIRAMISU_ROOT_EXECUT}
                        fi
                       # compile the generator.cpp 
                       g++ -std=c++11 -fno-rtti -DHALIDE_NO_JPEG -I${TIRAMISU_ROOT}/include -I${TIRAMISU_ROOT}/3rdParty/isl/include/ -I${TIRAMISU_ROOT}/3rdParty/Halide/include -I${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/3rdParty/isl/build/lib -L${TIRAMISU_ROOT}/3rdParty/Halide/lib/ -o ${CLEANINR_DIRECTORY}/${ACTUAL_PROGRAM}_generator -ltiramisu -lisl -lHalide -ldl -lpthread -lz -lm -Wl,-rpath,${TIRAMISU_ROOT}/build ${ACTUAL_PROGRAM}.cpp -ltiramisu -lisl -lHalide -ldl -lpthread -lz -lm >>$filename_out 
                       # generating the file ${ACTUAL_PROGRAM}.o
                       cd ${CLEANINR_DIRECTORY}
                      ./${ACTUAL_PROGRAM}_generator >>$filename_out 
                       # compile the wrapper code and link it to the generated object file.
                       g++ -std=c++11 -fno-rtti -I${TIRAMISU_ROOT}/include -I${TIRAMISU_ROOT}/3rdParty/Halide/include -L${TIRAMISU_ROOT}/build -L${TIRAMISU_ROOT}/3rdParty/Halide/lib/ -o ${ACTUAL_PROGRAM}_wrapper -ltiramisu -lHalide -ldl -lpthread -lz -lm -Wl,-rpath,${TIRAMISU_ROOT}/build  ../${ACTUAL_PROGRAM}_wrapper.cpp  ${CLEANINR_DIRECTORY}/${ACTUAL_PROGRAM}.o -ltiramisu -lHalide -ldl -lpthread -lz -lm >>$filename_out
                       # Run the wrapper
                       ./${ACTUAL_PROGRAM}_wrapper >>$filename_out
                       cd ..
                       rm -rf ${CLEANINR_DIRECTORY} >>$filename_out
                    done
                    let n=0
                    let sum=0
                    while read line; do
                      # reading each line
                       echo ${line} >>$trace_out
                       if [ $n -gt 0 ];then
                       sum=$(echo $sum + $line | bc -l) 
                       echo " if when n = $n" >>$trace_out
                       fi
                       echo $sum >>$trace_out
                       let n++
                     done < $FILE_NAME_EXEC
                    #rm $FILE_NAME_EXEC
                    let n=n-1
                    echo "out from file loop --> $n" >>$trace_out
                    sum=$(echo $sum / $n | bc -l) 
                    echo "Moyenne" $sum >>$trace_out
                    if (( $(echo "${best_time} > $sum" |bc -l) )); then
                       best_time=${sum} 
                       best_unroll=${nb_unr}
                    fi
                   let nb_unr++
               fi            
            done
            echo "write the best unroll factor for the the function" ${nb_f} "_the schedule_ " ${nb_s} " is " ${best_unroll} >>$trace_out
            echo ${best_unroll} >>${FILE_NAME_UNROLL_FACTORS}
            let best_unroll=0
            let best_time=99999999999
       done
      else
       let nb_f++
      fi
    fi  
done

