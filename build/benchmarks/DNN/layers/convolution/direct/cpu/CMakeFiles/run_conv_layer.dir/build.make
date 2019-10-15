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

# Utility rule file for run_conv_layer.

# Include the progress variables for this target.
include benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer.dir/progress.make

benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "run generated tiramisu executable in /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/convolution/direct/cpu"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/convolution/direct/cpu && /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/convolution/direct/cpu/conv_layer_wrapper

run_conv_layer: benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer
run_conv_layer: benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer.dir/build.make

.PHONY : run_conv_layer

# Rule to build all files generated by this target.
benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer.dir/build: run_conv_layer

.PHONY : benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer.dir/build

benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer.dir/clean:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/convolution/direct/cpu && $(CMAKE_COMMAND) -P CMakeFiles/run_conv_layer.dir/cmake_clean.cmake
.PHONY : benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer.dir/clean

benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer.dir/depend:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/layers/convolution/direct/cpu /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/convolution/direct/cpu /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/DNN/layers/convolution/direct/cpu/CMakeFiles/run_conv_layer.dir/depend
