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
include CMakeFiles/tutorial_developers_02.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tutorial_developers_02.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tutorial_developers_02.dir/flags.make

generated_fct_developers_tutorial_02.o: developers_tutorial_02_fct_generator
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating generated_fct_developers_tutorial_02.o"
	cd /Users/mac/Desktop/PFE_Asma/tiramisu && /Users/mac/Desktop/PFE_Asma/tiramisu/build/developers_tutorial_02_fct_generator

CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.o: CMakeFiles/tutorial_developers_02.dir/flags.make
CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.o: ../tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.o -c /Users/mac/Desktop/PFE_Asma/tiramisu/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp

CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/Desktop/PFE_Asma/tiramisu/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp > CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.i

CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/Desktop/PFE_Asma/tiramisu/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp -o CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.s

# Object files for target tutorial_developers_02
tutorial_developers_02_OBJECTS = \
"CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.o"

# External object files for target tutorial_developers_02
tutorial_developers_02_EXTERNAL_OBJECTS = \
"/Users/mac/Desktop/PFE_Asma/tiramisu/build/generated_fct_developers_tutorial_02.o"

tutorial_developers_02: CMakeFiles/tutorial_developers_02.dir/tutorials/developers/tutorial_02/wrapper_tutorial_02.cpp.o
tutorial_developers_02: generated_fct_developers_tutorial_02.o
tutorial_developers_02: CMakeFiles/tutorial_developers_02.dir/build.make
tutorial_developers_02: libtiramisu.dylib
tutorial_developers_02: ../3rdParty/Halide/lib/libHalide.a
tutorial_developers_02: ../3rdParty/isl/build/lib/libisl.dylib
tutorial_developers_02: CMakeFiles/tutorial_developers_02.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tutorial_developers_02"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial_developers_02.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tutorial_developers_02.dir/build: tutorial_developers_02

.PHONY : CMakeFiles/tutorial_developers_02.dir/build

CMakeFiles/tutorial_developers_02.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tutorial_developers_02.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tutorial_developers_02.dir/clean

CMakeFiles/tutorial_developers_02.dir/depend: generated_fct_developers_tutorial_02.o
	cd /Users/mac/Desktop/PFE_Asma/tiramisu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build /Users/mac/Desktop/PFE_Asma/tiramisu/build/CMakeFiles/tutorial_developers_02.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tutorial_developers_02.dir/depend

