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
include 04-passing-arguments/CMakeFiles/passing-arguments.dir/depend.make

# Include the progress variables for this target.
include 04-passing-arguments/CMakeFiles/passing-arguments.dir/progress.make

# Include the compile flags for this target's objects.
include 04-passing-arguments/CMakeFiles/passing-arguments.dir/flags.make

04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o: 04-passing-arguments/CMakeFiles/passing-arguments.dir/flags.make
04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o: ../04-passing-arguments/src/passing-arguments.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object 04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/04-passing-arguments && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o -c /home/shiva/Code/Cpp_shiv/TW3720TU/Code/04-passing-arguments/src/passing-arguments.cxx

04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.i"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/04-passing-arguments && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shiva/Code/Cpp_shiv/TW3720TU/Code/04-passing-arguments/src/passing-arguments.cxx > CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.i

04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.s"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/04-passing-arguments && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shiva/Code/Cpp_shiv/TW3720TU/Code/04-passing-arguments/src/passing-arguments.cxx -o CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.s

04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o.requires:
.PHONY : 04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o.requires

04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o.provides: 04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o.requires
	$(MAKE) -f 04-passing-arguments/CMakeFiles/passing-arguments.dir/build.make 04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o.provides.build
.PHONY : 04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o.provides

04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o.provides.build: 04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o

# Object files for target passing-arguments
passing__arguments_OBJECTS = \
"CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o"

# External object files for target passing-arguments
passing__arguments_EXTERNAL_OBJECTS =

04-passing-arguments/passing-arguments: 04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o
04-passing-arguments/passing-arguments: 04-passing-arguments/CMakeFiles/passing-arguments.dir/build.make
04-passing-arguments/passing-arguments: 04-passing-arguments/CMakeFiles/passing-arguments.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable passing-arguments"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/04-passing-arguments && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/passing-arguments.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
04-passing-arguments/CMakeFiles/passing-arguments.dir/build: 04-passing-arguments/passing-arguments
.PHONY : 04-passing-arguments/CMakeFiles/passing-arguments.dir/build

04-passing-arguments/CMakeFiles/passing-arguments.dir/requires: 04-passing-arguments/CMakeFiles/passing-arguments.dir/src/passing-arguments.cxx.o.requires
.PHONY : 04-passing-arguments/CMakeFiles/passing-arguments.dir/requires

04-passing-arguments/CMakeFiles/passing-arguments.dir/clean:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/04-passing-arguments && $(CMAKE_COMMAND) -P CMakeFiles/passing-arguments.dir/cmake_clean.cmake
.PHONY : 04-passing-arguments/CMakeFiles/passing-arguments.dir/clean

04-passing-arguments/CMakeFiles/passing-arguments.dir/depend:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shiva/Code/Cpp_shiv/TW3720TU/Code /home/shiva/Code/Cpp_shiv/TW3720TU/Code/04-passing-arguments /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/04-passing-arguments /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/04-passing-arguments/CMakeFiles/passing-arguments.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 04-passing-arguments/CMakeFiles/passing-arguments.dir/depend

