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
include CMakeFiles/test_152.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_152.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_152.dir/flags.make

generated_fct_test_152.o: test_152_fct_generator
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating generated_fct_test_152.o"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu && /Users/mac/Desktop/PFE_Asma/tiramisu/build/test_152_fct_generator

CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.o: CMakeFiles/test_152.dir/flags.make
CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.o: ../tests/wrapper_test_152.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.o -c /Users/mac/Desktop/PFE_Asma/tiramisu/tests/wrapper_test_152.cpp

CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/Desktop/PFE_Asma/tiramisu/tests/wrapper_test_152.cpp > CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.i

CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/Desktop/PFE_Asma/tiramisu/tests/wrapper_test_152.cpp -o CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.s

# Object files for target test_152
test_152_OBJECTS = \
"CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.o"

# External object files for target test_152
test_152_EXTERNAL_OBJECTS = \
"/Users/mac/Desktop/PFE_Asma/tiramisu/build/generated_fct_test_152.o"

test_152: CMakeFiles/test_152.dir/tests/wrapper_test_152.cpp.o
test_152: generated_fct_test_152.o
test_152: CMakeFiles/test_152.dir/build.make
test_152: libtiramisu.dylib
test_152: ../3rdParty/Halide/lib/libHalide.a
test_152: ../3rdParty/isl/build/lib/libisl.dylib
test_152: CMakeFiles/test_152.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_152"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_152.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_152.dir/build: test_152

.PHONY : CMakeFiles/test_152.dir/build

CMakeFiles/test_152.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_152.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_152.dir/clean

CMakeFiles/test_152.dir/depend: generated_fct_test_152.o
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles/test_152.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_152.dir/depend

