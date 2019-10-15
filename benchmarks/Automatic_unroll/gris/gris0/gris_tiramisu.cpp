#include <tiramisu/tiramisu.h>
#include "config.h"
#include "unrol_explor.h"
using namespace tiramisu;

int main(int argc, char **argv){
    tiramisu::init("gris_tiramisu");

    constant C_X("C_X",born_x);
    constant C_Y("C_Y", born_y);

    var x("x", 0, C_X), y("y", 0, C_Y);

    // Input computations
    input r_input("r_input",{x,y} , p_float32);
    input g_input("g_input",{x,y} , p_float32);
    input b_input("b_input",{x,y} , p_float32);

    
    // blur computations: The algorithm

    computation comp0("comp0",{x,y}, cast(p_float32, red) * r_input(x, y) + cast(p_float32, green) *  g_input(x, y) + cast(p_float32, blue) * b_input(x, y) );
    //comp0.dump_computation_features_structure();
    
    // Schedule
     comp0.unroll(y, unroll_factor);
     comp0.parallelize(x);

    /*comp0.interchange(i0, i1);
    comp0.tile(i0, i1,i2, 64, 64,64, i01, i02, i03, i04,i05,i06);
    comp0.unroll(i02, 32);
    comp0.parallelize(i01);
    comp0.after(comp_init, 2);*/
  

    // Layer III

    buffer r_buf("r_buf", {born_x,born_y},p_float32, a_input);
    buffer g_buf("g_buf", {born_x,born_y},p_float32, a_input);
    buffer b_buf("b_buf", {born_x,born_y},p_float32, a_input);
    buffer gris_buf("gris_buf", {born_x,born_y}, p_float32, a_output);


    r_input.store_in(&r_buf);
    g_input.store_in(&g_buf);
    b_input.store_in(&b_buf);
    comp0.store_in(&gris_buf,{x,y});
    
    tiramisu::codegen({&r_buf,&g_buf,&b_buf, &gris_buf},  "gris.o");
    return 0;
}