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

# Utility rule file for tiramisu_run_vgg_block.

# Include the progress variables for this target.
include benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block.dir/progress.make

benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "run generated tiramisu executable in /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/blocks/vggBlock"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/blocks/vggBlock && /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/blocks/vggBlock/vgg_block_generator_tiramisu

tiramisu_run_vgg_block: benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block
tiramisu_run_vgg_block: benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block.dir/build.make

.PHONY : tiramisu_run_vgg_block

# Rule to build all files generated by this target.
benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block.dir/build: tiramisu_run_vgg_block

.PHONY : benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block.dir/build

benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block.dir/clean:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/vggBlock && $(CMAKE_COMMAND) -P CMakeFiles/tiramisu_run_vgg_block.dir/cmake_clean.cmake
.PHONY : benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block.dir/clean

benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block.dir/depend:
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/DNN/blocks/vggBlock /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/vggBlock /Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/DNN/blocks/vggBlock/CMakeFiles/tiramisu_run_vgg_block.dir/depend

