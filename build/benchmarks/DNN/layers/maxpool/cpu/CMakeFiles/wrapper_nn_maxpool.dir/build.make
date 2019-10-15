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
include benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/depend.make

# Include the progress variables for this target.
include benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/progress.make

# Include the compile flags for this target's objects.
include benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/flags.make

benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.o: benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/flags.make
benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.o: ../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.o"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/maxpool/cpu && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.o -c /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool.cpp

benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.i"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/maxpool/cpu && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool.cpp > CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.i

benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.s"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/maxpool/cpu && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool.cpp -o CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.s

# Object files for target wrapper_nn_maxpool
wrapper_nn_maxpool_OBJECTS = \
"CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.o"

# External object files for target wrapper_nn_maxpool
wrapper_nn_maxpool_EXTERNAL_OBJECTS =

../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool: benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/wrapper_nn_maxpool.cpp.o
../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool: benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/build.make
../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool: ../benchmarks/DNN/layers/maxpool/cpu/maxpool_layer_generator_tiramisu.o
../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool: libtiramisu.dylib
../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool: ../3rdParty/Halide/lib/libHalide.a
../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool: ../3rdParty/isl/build/lib/libisl.dylib
../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool: benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/maxpool/cpu && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wrapper_nn_maxpool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/build: ../benchmarks/DNN/layers/maxpool/cpu/wrapper_nn_maxpool

.PHONY : benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/build

benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/clean:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/maxpool/cpu && $(CMAKE_COMMAND) -P CMakeFiles/wrapper_nn_maxpool.dir/cmake_clean.cmake
.PHONY : benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/clean

benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/depend:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/maxpool/cpu /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/maxpool/cpu /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/DNN/layers/maxpool/cpu/CMakeFiles/wrapper_nn_maxpool.dir/depend

