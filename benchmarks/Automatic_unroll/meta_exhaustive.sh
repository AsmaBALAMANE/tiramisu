 #!/bin/bash
 #script
 export TESTS_REPO=/data/scratch/b_asma/tiramisu/benchmarks/Automatic_unroll/
 if [ "$#" -eq 0 ]; then
 echo "Error: Introduce Nuber of tests"

 else
 Number="$1" 
 
  for (( i=1; i<$Number; i++ ))
  do
  ./exhaustive_remote.sh "blur"
  ./exhaustive_remote.sh "conv"
  ./exhaustive_remote.sh "gris"
  ./exhaustive_remote.sh "madd"
  ./exhaustive_remote.sh "mmm"
  done
fi