#include <tiramisu/tiramisu.h>
#include "config.h"
#include "unrol_explor.h"
using namespace tiramisu;

int main(int argc, char **argv){
    tiramisu::init("conv_tiramisu");

    // parameters
    // N: parameters[0]
    // K: parameters[1]
    // FIn: parameters[2]
    // FOut: parameters[3]
    // BATCH_SIZE: parameters[4]
    var i("i", 0, 5);
    input parameters("parameters",{i}, p_int32);
    constant C_N0("C_N0",N+K);
    constant C_N("C_N", N);
    constant C_N1("C_N1", N-K);    
    constant C_N2("C_N2", N-K-K);
    constant C_K("C_K",K+1 );
    constant C_FIn("C_FIn", FIn);
    constant C_FOut("C_FOut", FOut);
    constant C_BATCH_SIZE("C_BATCH_SIZE", BATCH_SIZE);

    var z1("z1", 0, C_FOut), k_x("k_x",0,C_K), k_y("k_y",0,C_K), k_z("k_z",0,C_FIn); // filter variables
    var x("x", 0, C_N0 ), y("y", 0, C_N0),  z("z", 0, C_FOut), n("n", 0, C_BATCH_SIZE ); // input
    var x1("x1", 0, C_N), y1("y1", 0, C_N); // conv


    // Input computations
    input c_input("c_input",{n, z, y, x} , p_int32);
    input bias("bias", {z1}, p_int32);
    input filter("filter", {z1, k_z , k_y, k_x}, p_int32);

    // conv computations
    computation conv_init("conv_init",{n, z, y1, x1}, expr(0));
    computation comp0("comp0",{n, z, y1, x1, k_z, k_y, k_x }, conv_init(n, z, y1, x1) + filter(z, k_z, k_y, k_x) * c_input(n, k_z, y1 + k_y, x1 + k_x));
    //comp0.dump_computation_features_structure();
    
    // Schedule

    conv_init.tag_parallel_level(0);
    comp0.after(conv_init, 2);
    comp0.unroll(k_x, unroll_factor);
    comp0.parallelize(n);

    /*comp0.interchange(i0, i1);
    comp0.tile(i0, i1,i2, 64, 64,64, i01, i02, i03, i04,i05,i06);
    comp0.unroll(i02, 32);
    comp0.parallelize(i01);
    comp0.after(comp_init, 2);*/
  

    // Layer III
    buffer parameters_buf("parameters_buf", {expr(5)}, p_int32, a_input);
    buffer input_buf("input_buf", {expr(C_BATCH_SIZE), expr(C_FIn), expr(C_N0), expr(C_N0)}, p_int32, a_input);
    buffer conv_buf("conv_buf", {expr(C_BATCH_SIZE), expr(C_FOut), expr(C_N), expr(C_N)}, p_int32, a_output);
    buffer filter_buf("filter_buf", {expr(C_FOut), expr(C_FIn), expr(C_K), expr(C_K)}, p_int32, a_input);
    buffer bias_buf("bias_buf", {expr(C_FOut)}, p_int32, a_input);
    buffer conv2_buf("conv2_buf", {expr(C_BATCH_SIZE), expr(C_FOut), expr(C_N1), expr(C_N1)}, p_int32, a_output);
    buffer bias2_buf("bias2_buf", {expr(C_FOut)}, p_int32, a_input);
    buffer filter2_buf("filter2_buf", {expr(C_FOut), expr(C_FIn), expr(C_K), expr(C_K)}, p_int32, a_input);
    buffer maxpool_buf("maxpool_buf", {expr(C_BATCH_SIZE), expr(C_FOut), expr(C_N2), expr(C_N2)}, p_int32, a_output);


    parameters.store_in(&parameters_buf);
    c_input.store_in(&input_buf);

    bias.store_in(&bias_buf);
    filter.store_in(&filter_buf);
    conv_init.store_in(&conv_buf);
    comp0.store_in(&conv_buf,{n, z, y1, x1});
    
    tiramisu::codegen({&parameters_buf, &input_buf, &filter_buf, &bias_buf, &conv_buf},  "conv.o");
    return 0;
}