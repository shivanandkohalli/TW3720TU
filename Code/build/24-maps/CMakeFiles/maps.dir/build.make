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
include 24-maps/CMakeFiles/maps.dir/depend.make

# Include the progress variables for this target.
include 24-maps/CMakeFiles/maps.dir/progress.make

# Include the compile flags for this target's objects.
include 24-maps/CMakeFiles/maps.dir/flags.make

24-maps/CMakeFiles/maps.dir/src/maps.cxx.o: 24-maps/CMakeFiles/maps.dir/flags.make
24-maps/CMakeFiles/maps.dir/src/maps.cxx.o: ../24-maps/src/maps.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object 24-maps/CMakeFiles/maps.dir/src/maps.cxx.o"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/24-maps && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/maps.dir/src/maps.cxx.o -c /home/shiva/Code/Cpp_shiv/TW3720TU/Code/24-maps/src/maps.cxx

24-maps/CMakeFiles/maps.dir/src/maps.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/maps.dir/src/maps.cxx.i"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/24-maps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shiva/Code/Cpp_shiv/TW3720TU/Code/24-maps/src/maps.cxx > CMakeFiles/maps.dir/src/maps.cxx.i

24-maps/CMakeFiles/maps.dir/src/maps.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/maps.dir/src/maps.cxx.s"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/24-maps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shiva/Code/Cpp_shiv/TW3720TU/Code/24-maps/src/maps.cxx -o CMakeFiles/maps.dir/src/maps.cxx.s

24-maps/CMakeFiles/maps.dir/src/maps.cxx.o.requires:
.PHONY : 24-maps/CMakeFiles/maps.dir/src/maps.cxx.o.requires

24-maps/CMakeFiles/maps.dir/src/maps.cxx.o.provides: 24-maps/CMakeFiles/maps.dir/src/maps.cxx.o.requires
	$(MAKE) -f 24-maps/CMakeFiles/maps.dir/build.make 24-maps/CMakeFiles/maps.dir/src/maps.cxx.o.provides.build
.PHONY : 24-maps/CMakeFiles/maps.dir/src/maps.cxx.o.provides

24-maps/CMakeFiles/maps.dir/src/maps.cxx.o.provides.build: 24-maps/CMakeFiles/maps.dir/src/maps.cxx.o

# Object files for target maps
maps_OBJECTS = \
"CMakeFiles/maps.dir/src/maps.cxx.o"

# External object files for target maps
maps_EXTERNAL_OBJECTS =

24-maps/maps: 24-maps/CMakeFiles/maps.dir/src/maps.cxx.o
24-maps/maps: 24-maps/CMakeFiles/maps.dir/build.make
24-maps/maps: 24-maps/CMakeFiles/maps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable maps"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/24-maps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/maps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
24-maps/CMakeFiles/maps.dir/build: 24-maps/maps
.PHONY : 24-maps/CMakeFiles/maps.dir/build

24-maps/CMakeFiles/maps.dir/requires: 24-maps/CMakeFiles/maps.dir/src/maps.cxx.o.requires
.PHONY : 24-maps/CMakeFiles/maps.dir/requires

24-maps/CMakeFiles/maps.dir/clean:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/24-maps && $(CMAKE_COMMAND) -P CMakeFiles/maps.dir/cmake_clean.cmake
.PHONY : 24-maps/CMakeFiles/maps.dir/clean

24-maps/CMakeFiles/maps.dir/depend:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shiva/Code/Cpp_shiv/TW3720TU/Code /home/shiva/Code/Cpp_shiv/TW3720TU/Code/24-maps /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/24-maps /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/24-maps/CMakeFiles/maps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 24-maps/CMakeFiles/maps.dir/depend

