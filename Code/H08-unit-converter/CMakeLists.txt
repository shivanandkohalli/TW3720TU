# Force CMake version 3.1 or above
cmake_minimum_required (VERSION 3.1)

# This project has the name: H04-points-triangles
project (H08-unit-converter)

# Create an executable named 'points-triangles' from the source file 'points-triangles.cxx'
add_executable(unit_convertor src/unit_convertor.cxx)

# Define C++11 standard
set_property(TARGET unit_convertor PROPERTY CXX_STANDARD 11)

# Add test called "points-triangles-test" based on the executable "points-triangles"
add_test (unit_convertor-test unit_convertor)

# Create an additional target for assignment submission
add_assignment(unit_convertor src/unit_convertor.cxx)
