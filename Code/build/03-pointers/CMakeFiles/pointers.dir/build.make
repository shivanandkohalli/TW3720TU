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
include 03-pointers/CMakeFiles/pointers.dir/depend.make

# Include the progress variables for this target.
include 03-pointers/CMakeFiles/pointers.dir/progress.make

# Include the compile flags for this target's objects.
include 03-pointers/CMakeFiles/pointers.dir/flags.make

03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o: 03-pointers/CMakeFiles/pointers.dir/flags.make
03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o: ../03-pointers/src/pointers.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object 03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/03-pointers && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pointers.dir/src/pointers.cxx.o -c /home/shiva/Code/Cpp_shiv/TW3720TU/Code/03-pointers/src/pointers.cxx

03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pointers.dir/src/pointers.cxx.i"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/03-pointers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shiva/Code/Cpp_shiv/TW3720TU/Code/03-pointers/src/pointers.cxx > CMakeFiles/pointers.dir/src/pointers.cxx.i

03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pointers.dir/src/pointers.cxx.s"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/03-pointers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shiva/Code/Cpp_shiv/TW3720TU/Code/03-pointers/src/pointers.cxx -o CMakeFiles/pointers.dir/src/pointers.cxx.s

03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o.requires:
.PHONY : 03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o.requires

03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o.provides: 03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o.requires
	$(MAKE) -f 03-pointers/CMakeFiles/pointers.dir/build.make 03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o.provides.build
.PHONY : 03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o.provides

03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o.provides.build: 03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o

# Object files for target pointers
pointers_OBJECTS = \
"CMakeFiles/pointers.dir/src/pointers.cxx.o"

# External object files for target pointers
pointers_EXTERNAL_OBJECTS =

03-pointers/pointers: 03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o
03-pointers/pointers: 03-pointers/CMakeFiles/pointers.dir/build.make
03-pointers/pointers: 03-pointers/CMakeFiles/pointers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable pointers"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/03-pointers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pointers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
03-pointers/CMakeFiles/pointers.dir/build: 03-pointers/pointers
.PHONY : 03-pointers/CMakeFiles/pointers.dir/build

03-pointers/CMakeFiles/pointers.dir/requires: 03-pointers/CMakeFiles/pointers.dir/src/pointers.cxx.o.requires
.PHONY : 03-pointers/CMakeFiles/pointers.dir/requires

03-pointers/CMakeFiles/pointers.dir/clean:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/03-pointers && $(CMAKE_COMMAND) -P CMakeFiles/pointers.dir/cmake_clean.cmake
.PHONY : 03-pointers/CMakeFiles/pointers.dir/clean

03-pointers/CMakeFiles/pointers.dir/depend:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shiva/Code/Cpp_shiv/TW3720TU/Code /home/shiva/Code/Cpp_shiv/TW3720TU/Code/03-pointers /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/03-pointers /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/03-pointers/CMakeFiles/pointers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 03-pointers/CMakeFiles/pointers.dir/depend

