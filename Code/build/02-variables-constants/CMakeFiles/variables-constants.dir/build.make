# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shiva/Code/Cpp_shiv/TW3720TU/Code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build

# Include any dependencies generated for this target.
include 02-variables-constants/CMakeFiles/variables-constants.dir/depend.make

# Include the progress variables for this target.
include 02-variables-constants/CMakeFiles/variables-constants.dir/progress.make

# Include the compile flags for this target's objects.
include 02-variables-constants/CMakeFiles/variables-constants.dir/flags.make

02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o: 02-variables-constants/CMakeFiles/variables-constants.dir/flags.make
02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o: ../02-variables-constants/src/variables-constants.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object 02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/02-variables-constants && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o -c /home/shiva/Code/Cpp_shiv/TW3720TU/Code/02-variables-constants/src/variables-constants.cxx

02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/variables-constants.dir/src/variables-constants.cxx.i"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/02-variables-constants && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shiva/Code/Cpp_shiv/TW3720TU/Code/02-variables-constants/src/variables-constants.cxx > CMakeFiles/variables-constants.dir/src/variables-constants.cxx.i

02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/variables-constants.dir/src/variables-constants.cxx.s"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/02-variables-constants && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shiva/Code/Cpp_shiv/TW3720TU/Code/02-variables-constants/src/variables-constants.cxx -o CMakeFiles/variables-constants.dir/src/variables-constants.cxx.s

02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o.requires:
.PHONY : 02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o.requires

02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o.provides: 02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o.requires
	$(MAKE) -f 02-variables-constants/CMakeFiles/variables-constants.dir/build.make 02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o.provides.build
.PHONY : 02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o.provides

02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o.provides.build: 02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o

# Object files for target variables-constants
variables__constants_OBJECTS = \
"CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o"

# External object files for target variables-constants
variables__constants_EXTERNAL_OBJECTS =

02-variables-constants/variables-constants: 02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o
02-variables-constants/variables-constants: 02-variables-constants/CMakeFiles/variables-constants.dir/build.make
02-variables-constants/variables-constants: 02-variables-constants/CMakeFiles/variables-constants.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable variables-constants"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/02-variables-constants && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/variables-constants.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
02-variables-constants/CMakeFiles/variables-constants.dir/build: 02-variables-constants/variables-constants
.PHONY : 02-variables-constants/CMakeFiles/variables-constants.dir/build

02-variables-constants/CMakeFiles/variables-constants.dir/requires: 02-variables-constants/CMakeFiles/variables-constants.dir/src/variables-constants.cxx.o.requires
.PHONY : 02-variables-constants/CMakeFiles/variables-constants.dir/requires

02-variables-constants/CMakeFiles/variables-constants.dir/clean:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/02-variables-constants && $(CMAKE_COMMAND) -P CMakeFiles/variables-constants.dir/cmake_clean.cmake
.PHONY : 02-variables-constants/CMakeFiles/variables-constants.dir/clean

02-variables-constants/CMakeFiles/variables-constants.dir/depend:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shiva/Code/Cpp_shiv/TW3720TU/Code /home/shiva/Code/Cpp_shiv/TW3720TU/Code/02-variables-constants /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/02-variables-constants /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/02-variables-constants/CMakeFiles/variables-constants.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 02-variables-constants/CMakeFiles/variables-constants.dir/depend

