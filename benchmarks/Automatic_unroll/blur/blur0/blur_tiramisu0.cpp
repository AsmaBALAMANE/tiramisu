#include <tiramisu/tiramisu.h>
#include "config.h"
#include "unrol_explor.h"
using namespace tiramisu;

int main(int argc, char **argv){
    tiramisu::init("blur_tiramisu");

    constant C_X("C_X",born_x);
    constant C_Y("C_Y", born_y);
    constant C_C("C_C", born_c);

    var x("x", 0, C_X), y("y", 0, C_Y), c("c", 0, C_C);

    // Input computations
    input b_input("c_input",{x,y,c} , p_int32);

    // blur computations: The algorithm

    computation blur_x("blur_x",{x,y,c}, (b_input(x, y, c) + b_input(x+1, y, c) + b_input(x+2, y, c))/3);
    computation comp0("comp0",{x,y,c},( blur_x(x, y, c) + blur_x(x, y+1, c) + blur_x(x, y+2, c)) /3 );
    //comp0.dump_computation_features_structure();
    
    // Schedule
    comp0.after(blur_x, 0);
    comp0.parallelize(x);
  

    // Layer III

    buffer input_buf("input_buf", {born_x,born_y,born_c},p_int32, a_input);
    buffer blurx_buf("blurx_buf", {born_x,born_y,born_c}, p_int32, a_output);


    b_input.store_in(&input_buf);

    blur_x.store_in(&blurx_buf);
    comp0.store_in(&blurx_buf,{x,y,c});
    
    tiramisu::codegen({&input_buf, &blurx_buf},  "blur.o");
    return 0;
}