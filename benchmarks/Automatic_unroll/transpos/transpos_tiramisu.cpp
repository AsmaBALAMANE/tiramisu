#include <tiramisu/tiramisu.h>
#include "../config.h"
using namespace tiramisu;

int main(int argc, char **argv){
    tiramisu::init("transpos_tiramisu");

    constant c0("c0",LITTLE), c1("c1", LITTLE);

    var i0("i0", 0, c0), i1("i1", 0, c1), i03("i03"), i01("i01"), i02("i02"), i04("i04"),i05("i05"), i06("i06");

    input input00("input00", {i0,i1}, p_int32);

    computation comp0("comp0", {i0,i1},p_int32);

    comp0.set_expression(input00(i1,i0),true);
    comp0.dump_computation_features_structure();

    //comp0.interchange(i0, i1);
   // comp0.tile(i0, i1, 32, 32, i01, i02, i04,i05);
   // comp0.unroll(i05, 32);
    comp0.parallelize(i0);
   
    buffer buf00("buf00", {LITTLE,LITTLE}, p_int32, a_input);
    buffer buf0("buf0", {LITTLE, LITTLE}, p_int32, a_output);
    
    input00.store_in(&buf00);
    comp0.store_in(&buf0);

    tiramisu::codegen({&buf00, &buf0}, "transpos.o");

    return 0;
}