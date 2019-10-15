#!/bin/bash
# This script allow generating confugurated Data_set using code_generator-unrolling 
# Number of functions for each data_type (int or float )
# bach size for each compute node 
#export DATA_DIRECTORY=/Users/mac/Desktop/PFE_Asma/tiramisu/utils/code_generator-unrolling/cmake-build-debug/
export DATA_DIRECTORY=/data/scratch/b_asma/tiramisu_Extraction/tiramisu/utils/code_generator-unrolling/cmake-build-debug/
export Code_START=0
if [ "$#" -gt 0 ]; then
   Code_START="$1"  
fi
#int baches
echo "****** INT BACHES ******"
export INT_BACH_SIZE=25
export INT_TYPE_NAME_GENERATOR=p_int32
export INT_TYPE_NAME_WRAPPER=int32_t
cd ${DATA_DIRECTORY}
echo "nb_codes : \"${INT_BACH_SIZE}\"
nb_stages (number of computations) : \"1\"
default_type_tiramisu : \"${INT_TYPE_NAME_GENERATOR}\"
default_type_warpper : \"${INT_TYPE_NAME_WRAPPER}\"
assignment_prob : \"0\"
assignment_input_prob : \"1\"
max_nb_dims (number of nested loops) : \"4\"
max_nb_inputs : \"10\"
max_offset (stencils) : \"2\"
convolutions_prob : \"0\"
same_padding_prob (convolutions): \"0.1\"
tile_sizes : \"32 64 128\"
unrolling_factors : \"all\"
scheduling_commands : \"interchanging tiling unrolling\"
shedules (all, random) : \"all\"
nb_rand_schedules : \"10\"" &>'inputs.txt'
 echo ${Code_START} |./restructured 
 echo "${INT_BACH_SIZE} Codes was generated from the Function${Code_START} "
 mv samples samples${Code_START}
 let Code_START=Code_START+INT_BACH_SIZE
#float baches 
echo "****** FLOAT BACHES ******"
export FLOAT_BACH_SIZE=25
export FLOAT_TYPE_NAME_GENERATOR=p_float32
export FLOAT_TYPE_NAME_WRAPPER=float
cd ${DATA_DIRECTORY}
echo "nb_codes : \"${FLOAT_BACH_SIZE}\"
nb_stages (number of computations) : \"1\"
default_type_tiramisu : \"${FLOAT_TYPE_NAME_GENERATOR}\"
default_type_warpper : \"${FLOAT_TYPE_NAME_WRAPPER}\"
assignment_prob : \"0\"
assignment_input_prob : \"1\"
max_nb_dims (number of nested loops) : \"4\"
max_nb_inputs : \"10\"
max_offset (stencils) : \"2\"
convolutions_prob : \"0\"
same_padding_prob (convolutions): \"0.1\"
tile_sizes : \"32 64 128\"
unrolling_factors : \"all\"
scheduling_commands : \"interchanging tiling unrolling\"
shedules (all, random) : \"all\"
nb_rand_schedules : \"10\"" &>'inputs.txt'

 echo ${Code_START} |./restructured 
 echo "${FLOAT_BACH_SIZE} Codes was generated from the Function${Code_START} "
 mv samples samples${Code_START}


#float baches 