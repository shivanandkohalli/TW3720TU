# Force CMake version 3.1 or above
cmake_minimum_required (VERSION 3.1)

# This project has the name: H04-points-triangles
project (H07-templates)

# Create an executable named 'points-triangles' from the source file 'points-triangles.cxx'
add_executable(templates_ex src/templates_ex.cxx)

# Define C++11 standard
set_property(TARGET templates_ex PROPERTY CXX_STANDARD 11)

# Add test called "points-triangles-test" based on the executable "points-triangles"
add_test (templates_ex-test templates_ex)

# Create an additional target for assignment submission
add_assignment(templates_ex src/templates_ex.cxx)
