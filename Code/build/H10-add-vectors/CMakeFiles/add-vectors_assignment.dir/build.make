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

# Utility rule file for add-vectors_assignment.

# Include the progress variables for this target.
include H10-add-vectors/CMakeFiles/add-vectors_assignment.dir/progress.make

H10-add-vectors/CMakeFiles/add-vectors_assignment: H10-add-vectors/add-vectors
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E copy /home/shiva/Code/Cpp_shiv/TW3720TU/Code/H10-add-vectors/src/add-vectors.cxx add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E echo "=== Start Environment " >> add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E echo "PROJECT_NAME = H10-add-vectors" >> add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E echo "CMAKE_SYSTEM = Linux-4.4.0-97-generic" >> add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E echo "CMAKE_VERSION = 3.2.2" >> add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E echo "CMAKE_CXX_COMPILER_ID = GNU" >> add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E echo "CMAKE_CXX_COMPILER_VERSION = 4.8.4" >> add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E echo "=== End Environment " >> add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E echo "=== Start of output from execution of binary add-vectors" >> add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && ./add-vectors >> add-vectors.log
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && /usr/bin/cmake -E echo "=== End of output from execution of binary add-vectors" >> add-vectors.log

add-vectors_assignment: H10-add-vectors/CMakeFiles/add-vectors_assignment
add-vectors_assignment: H10-add-vectors/CMakeFiles/add-vectors_assignment.dir/build.make
.PHONY : add-vectors_assignment

# Rule to build all files generated by this target.
H10-add-vectors/CMakeFiles/add-vectors_assignment.dir/build: add-vectors_assignment
.PHONY : H10-add-vectors/CMakeFiles/add-vectors_assignment.dir/build

H10-add-vectors/CMakeFiles/add-vectors_assignment.dir/clean:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors && $(CMAKE_COMMAND) -P CMakeFiles/add-vectors_assignment.dir/cmake_clean.cmake
.PHONY : H10-add-vectors/CMakeFiles/add-vectors_assignment.dir/clean

H10-add-vectors/CMakeFiles/add-vectors_assignment.dir/depend:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shiva/Code/Cpp_shiv/TW3720TU/Code /home/shiva/Code/Cpp_shiv/TW3720TU/Code/H10-add-vectors /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors/CMakeFiles/add-vectors_assignment.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : H10-add-vectors/CMakeFiles/add-vectors_assignment.dir/depend

