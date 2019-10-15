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
include CMakeFiles/bench_warp_affine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bench_warp_affine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bench_warp_affine.dir/flags.make

generated_fct_warp_affine.o: bench_tiramisu_warp_affine_generator
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating generated_fct_warp_affine.o"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu && /Users/mac/Desktop/PFE_Asma/tiramisu/build/bench_tiramisu_warp_affine_generator

generated_fct_warp_affine_ref.o:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating generated_fct_warp_affine_ref.o"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu && /Users/mac/Desktop/PFE_Asma/tiramisu/build/bench_halide_warp_affine_generator

CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.o: CMakeFiles/bench_warp_affine.dir/flags.make
CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.o: ../benchmarks/halide/wrapper_warp_affine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.o -c /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/halide/wrapper_warp_affine.cpp

CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/halide/wrapper_warp_affine.cpp > CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.i

CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks/halide/wrapper_warp_affine.cpp -o CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.s

# Object files for target bench_warp_affine
bench_warp_affine_OBJECTS = \
"CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.o"

# External object files for target bench_warp_affine
bench_warp_affine_EXTERNAL_OBJECTS = \
"/Users/mac/Desktop/PFE_Asma/tiramisu/build/generated_fct_warp_affine.o" \
"/Users/mac/Desktop/PFE_Asma/tiramisu/build/generated_fct_warp_affine_ref.o"

bench_warp_affine: CMakeFiles/bench_warp_affine.dir/benchmarks/halide/wrapper_warp_affine.cpp.o
bench_warp_affine: generated_fct_warp_affine.o
bench_warp_affine: generated_fct_warp_affine_ref.o
bench_warp_affine: CMakeFiles/bench_warp_affine.dir/build.make
bench_warp_affine: libtiramisu.dylib
bench_warp_affine: ../3rdParty/Halide/lib/libHalide.a
bench_warp_affine: ../3rdParty/isl/build/lib/libisl.dylib
bench_warp_affine: CMakeFiles/bench_warp_affine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable bench_warp_affine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench_warp_affine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bench_warp_affine.dir/build: bench_warp_affine

.PHONY : CMakeFiles/bench_warp_affine.dir/build

CMakeFiles/bench_warp_affine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bench_warp_affine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bench_warp_affine.dir/clean

CMakeFiles/bench_warp_affine.dir/depend: generated_fct_warp_affine.o
CMakeFiles/bench_warp_affine.dir/depend: generated_fct_warp_affine_ref.o
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles/bench_warp_affine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bench_warp_affine.dir/depend
