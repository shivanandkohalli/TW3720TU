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
include 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/depend.make

# Include the progress variables for this target.
include 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/progress.make

# Include the compile flags for this target's objects.
include 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/flags.make

16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o: 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/flags.make
16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o: ../16-templates-sfinae/src/templates-sfinae.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/16-templates-sfinae && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o -c /home/shiva/Code/Cpp_shiv/TW3720TU/Code/16-templates-sfinae/src/templates-sfinae.cxx

16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.i"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/16-templates-sfinae && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shiva/Code/Cpp_shiv/TW3720TU/Code/16-templates-sfinae/src/templates-sfinae.cxx > CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.i

16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.s"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/16-templates-sfinae && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shiva/Code/Cpp_shiv/TW3720TU/Code/16-templates-sfinae/src/templates-sfinae.cxx -o CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.s

16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o.requires:
.PHONY : 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o.requires

16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o.provides: 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o.requires
	$(MAKE) -f 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/build.make 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o.provides.build
.PHONY : 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o.provides

16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o.provides.build: 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o

# Object files for target templates-sfinae
templates__sfinae_OBJECTS = \
"CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o"

# External object files for target templates-sfinae
templates__sfinae_EXTERNAL_OBJECTS =

16-templates-sfinae/templates-sfinae: 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o
16-templates-sfinae/templates-sfinae: 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/build.make
16-templates-sfinae/templates-sfinae: 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable templates-sfinae"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/16-templates-sfinae && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/templates-sfinae.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
16-templates-sfinae/CMakeFiles/templates-sfinae.dir/build: 16-templates-sfinae/templates-sfinae
.PHONY : 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/build

16-templates-sfinae/CMakeFiles/templates-sfinae.dir/requires: 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/src/templates-sfinae.cxx.o.requires
.PHONY : 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/requires

16-templates-sfinae/CMakeFiles/templates-sfinae.dir/clean:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/16-templates-sfinae && $(CMAKE_COMMAND) -P CMakeFiles/templates-sfinae.dir/cmake_clean.cmake
.PHONY : 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/clean

16-templates-sfinae/CMakeFiles/templates-sfinae.dir/depend:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shiva/Code/Cpp_shiv/TW3720TU/Code /home/shiva/Code/Cpp_shiv/TW3720TU/Code/16-templates-sfinae /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/16-templates-sfinae /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/16-templates-sfinae/CMakeFiles/templates-sfinae.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 16-templates-sfinae/CMakeFiles/templates-sfinae.dir/depend

