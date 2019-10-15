#include <tiramisu/tiramisu.h>
#include "config.h"
#include "unrol_explor.h"
using namespace tiramisu;

int main(int argc, char **argv){
    tiramisu::init("mmm_tiramisu");

    constant c0("c0",LITTLE), c1("c1", LITTLE);

    var i0("i0", 0, c0), i1("i1", 0, c0), i2("i2", 0, c1), i03("i03"), i01("i01"), i02("i02"), i04("i04"),i05("i05"), i06("i06");

    input input00("input00", {i0,i1}, p_int32);

    input input01("input01", {i0,i1}, p_int32);
    //C.set_expression(C(i, j, k - 1) + A(i, k) * B(k, j));
    computation comp_init("comp_init", {i0,i1},expr(0)) ;
    computation comp0("comp0", {i0,i1,i2},comp_init(i0,i1)+ input00(i0, i2) * input01(i2,i1));
    //comp0.set_expression(comp0(i0,i1)+ input00(i0, i2) * input01(i2,i1),true);
    //comp0.dump_computation_features_structure();

    comp_init.tile(i0, i1, 32, 32, i01, i02, i03, i04);
    comp0.tile(i0, i1, 32, 32, i01, i02, i03, i04);
    comp0.after(comp_init,2);
    comp0.unroll(i2,unroll_factor);
    comp0.parallelize(i01);


    buffer buf00("buf00", {LITTLE,LITTLE}, p_int32, a_input);
    buffer buf01("buf01", {LITTLE,LITTLE}, p_int32, a_input);
    buffer buf0("buf0", {LITTLE, LITTLE}, p_int32, a_output);
    
    input00.store_in(&buf00);
    input01.store_in(&buf01);
    comp_init.store_in(&buf0);
    comp0.store_in(&buf0,{i0,i1});

    tiramisu::codegen({&buf00, &buf01, &buf0}, "mmm.o");

    return 0;
}