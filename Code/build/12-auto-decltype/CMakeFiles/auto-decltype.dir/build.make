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
include 12-auto-decltype/CMakeFiles/auto-decltype.dir/depend.make

# Include the progress variables for this target.
include 12-auto-decltype/CMakeFiles/auto-decltype.dir/progress.make

# Include the compile flags for this target's objects.
include 12-auto-decltype/CMakeFiles/auto-decltype.dir/flags.make

12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o: 12-auto-decltype/CMakeFiles/auto-decltype.dir/flags.make
12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o: ../12-auto-decltype/src/auto-decltype.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object 12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/12-auto-decltype && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o -c /home/shiva/Code/Cpp_shiv/TW3720TU/Code/12-auto-decltype/src/auto-decltype.cxx

12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.i"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/12-auto-decltype && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shiva/Code/Cpp_shiv/TW3720TU/Code/12-auto-decltype/src/auto-decltype.cxx > CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.i

12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.s"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/12-auto-decltype && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shiva/Code/Cpp_shiv/TW3720TU/Code/12-auto-decltype/src/auto-decltype.cxx -o CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.s

12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o.requires:
.PHONY : 12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o.requires

12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o.provides: 12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o.requires
	$(MAKE) -f 12-auto-decltype/CMakeFiles/auto-decltype.dir/build.make 12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o.provides.build
.PHONY : 12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o.provides

12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o.provides.build: 12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o

# Object files for target auto-decltype
auto__decltype_OBJECTS = \
"CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o"

# External object files for target auto-decltype
auto__decltype_EXTERNAL_OBJECTS =

12-auto-decltype/auto-decltype: 12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o
12-auto-decltype/auto-decltype: 12-auto-decltype/CMakeFiles/auto-decltype.dir/build.make
12-auto-decltype/auto-decltype: 12-auto-decltype/CMakeFiles/auto-decltype.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable auto-decltype"
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/12-auto-decltype && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/auto-decltype.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
12-auto-decltype/CMakeFiles/auto-decltype.dir/build: 12-auto-decltype/auto-decltype
.PHONY : 12-auto-decltype/CMakeFiles/auto-decltype.dir/build

12-auto-decltype/CMakeFiles/auto-decltype.dir/requires: 12-auto-decltype/CMakeFiles/auto-decltype.dir/src/auto-decltype.cxx.o.requires
.PHONY : 12-auto-decltype/CMakeFiles/auto-decltype.dir/requires

12-auto-decltype/CMakeFiles/auto-decltype.dir/clean:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/12-auto-decltype && $(CMAKE_COMMAND) -P CMakeFiles/auto-decltype.dir/cmake_clean.cmake
.PHONY : 12-auto-decltype/CMakeFiles/auto-decltype.dir/clean

12-auto-decltype/CMakeFiles/auto-decltype.dir/depend:
	cd /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shiva/Code/Cpp_shiv/TW3720TU/Code /home/shiva/Code/Cpp_shiv/TW3720TU/Code/12-auto-decltype /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/12-auto-decltype /home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/12-auto-decltype/CMakeFiles/auto-decltype.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 12-auto-decltype/CMakeFiles/auto-decltype.dir/depend

