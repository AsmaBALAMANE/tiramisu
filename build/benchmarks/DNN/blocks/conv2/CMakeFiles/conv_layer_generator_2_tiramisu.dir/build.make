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
include benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/depend.make

# Include the progress variables for this target.
include benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/progress.make

# Include the compile flags for this target's objects.
include benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/flags.make

benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.o: benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/flags.make
benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.o: ../benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.o"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/conv2 && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.o -c /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu.cpp

benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.i"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/conv2 && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu.cpp > CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.i

benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.s"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/conv2 && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu.cpp -o CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.s

# Object files for target conv_layer_generator_2_tiramisu
conv_layer_generator_2_tiramisu_OBJECTS = \
"CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.o"

# External object files for target conv_layer_generator_2_tiramisu
conv_layer_generator_2_tiramisu_EXTERNAL_OBJECTS =

../benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu: benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/conv_layer_generator_2_tiramisu.cpp.o
../benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu: benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/build.make
../benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu: libtiramisu.so
../benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu: benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/conv2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/conv_layer_generator_2_tiramisu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/build: ../benchmarks/DNN/blocks/conv2/conv_layer_generator_2_tiramisu

.PHONY : benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/build

benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/clean:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/conv2 && $(CMAKE_COMMAND) -P CMakeFiles/conv_layer_generator_2_tiramisu.dir/cmake_clean.cmake
.PHONY : benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/clean

benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/depend:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/blocks/conv2 /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/conv2 /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/DNN/blocks/conv2/CMakeFiles/conv_layer_generator_2_tiramisu.dir/depend

