# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.13.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.13.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mac/Desktop/PFE_Asma/tiramisu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mac/Desktop/PFE_Asma/tiramisu/build

# Include any dependencies generated for this target.
include benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/depend.make

# Include the progress variables for this target.
include benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/progress.make

# Include the compile flags for this target's objects.
include benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/flags.make

benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.o: benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/flags.make
benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.o: ../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.o"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/relu/cpu && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.o -c /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu.cpp

benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.i"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/relu/cpu && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu.cpp > CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.i

benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.s"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/relu/cpu && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu.cpp -o CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.s

# Object files for target wrapper_nn_relu
wrapper_nn_relu_OBJECTS = \
"CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.o"

# External object files for target wrapper_nn_relu
wrapper_nn_relu_EXTERNAL_OBJECTS =

../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu: benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/wrapper_nn_relu.cpp.o
../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu: benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/build.make
../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu: ../benchmarks/DNN/layers/relu/cpu/relu_layer_generator_tiramisu.o
../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu: libtiramisu.dylib
../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu: ../3rdParty/Halide/lib/libHalide.a
../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu: ../3rdParty/isl/build/lib/libisl.dylib
../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu: benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/relu/cpu && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wrapper_nn_relu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/build: ../benchmarks/DNN/layers/relu/cpu/wrapper_nn_relu

.PHONY : benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/build

benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/clean:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/relu/cpu && $(CMAKE_COMMAND) -P CMakeFiles/wrapper_nn_relu.dir/cmake_clean.cmake
.PHONY : benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/clean

benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/depend:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/relu/cpu /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/relu/cpu /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/DNN/layers/relu/cpu/CMakeFiles/wrapper_nn_relu.dir/depend

