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
include 23-linalg/CMakeFiles/linalg.dir/depend.make

# Include the progress variables for this target.
include 23-linalg/CMakeFiles/linalg.dir/progress.make

# Include the compile flags for this target's objects.
include 23-linalg/CMakeFiles/linalg.dir/flags.make

23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o: 23-linalg/CMakeFiles/linalg.dir/flags.make
23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o: ../23-linalg/src/linalg.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object 23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/23-linalg && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/linalg.dir/src/linalg.cxx.o -c /home/shiva/Code/Cpp_shiv/TW3720TU/Code/23-linalg/src/linalg.cxx

23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linalg.dir/src/linalg.cxx.i"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/23-linalg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shiva/Code/Cpp_shiv/TW3720TU/Code/23-linalg/src/linalg.cxx > CMakeFiles/linalg.dir/src/linalg.cxx.i

23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linalg.dir/src/linalg.cxx.s"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/23-linalg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shiva/Code/Cpp_shiv/TW3720TU/Code/23-linalg/src/linalg.cxx -o CMakeFiles/linalg.dir/src/linalg.cxx.s

23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o.requires:
.PHONY : 23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o.requires

23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o.provides: 23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o.requires
	$(MAKE) -f 23-linalg/CMakeFiles/linalg.dir/build.make 23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o.provides.build
.PHONY : 23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o.provides

23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o.provides.build: 23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o

# Object files for target linalg
linalg_OBJECTS = \
"CMakeFiles/linalg.dir/src/linalg.cxx.o"

# External object files for target linalg
linalg_EXTERNAL_OBJECTS =

23-linalg/linalg: 23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o
23-linalg/linalg: 23-linalg/CMakeFiles/linalg.dir/build.make
23-linalg/linalg: 23-linalg/CMakeFiles/linalg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable linalg"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/23-linalg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linalg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
23-linalg/CMakeFiles/linalg.dir/build: 23-linalg/linalg
.PHONY : 23-linalg/CMakeFiles/linalg.dir/build

23-linalg/CMakeFiles/linalg.dir/requires: 23-linalg/CMakeFiles/linalg.dir/src/linalg.cxx.o.requires
.PHONY : 23-linalg/CMakeFiles/linalg.dir/requires

23-linalg/CMakeFiles/linalg.dir/clean:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/23-linalg && $(CMAKE_COMMAND) -P CMakeFiles/linalg.dir/cmake_clean.cmake
.PHONY : 23-linalg/CMakeFiles/linalg.dir/clean

23-linalg/CMakeFiles/linalg.dir/depend:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shiva/Code/Cpp_shiv/TW3720TU/Code /home/shiva/Code/Cpp_shiv/TW3720TU/Code/23-linalg /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/23-linalg /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/23-linalg/CMakeFiles/linalg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 23-linalg/CMakeFiles/linalg.dir/depend
