# Force CMake version 3.1 or above
cmake_minimum_required (VERSION 3.1)

# This project has the name: H04-points-triangles
project (H09-symbolic-differentiation)

# Create an executable named 'points-triangles' from the source file 'points-triangles.cxx'
add_executable(symbolic_diff src/symbolic_diff.cxx)

# Define C++11 standard
set_property(TARGET symbolic_diff PROPERTY CXX_STANDARD 11)

# Add test called "points-triangles-test" based on the executable "points-triangles"
add_test (symbolic_diff-test symbolic_diff)

# Create an additional target for assignment submission
add_assignment(symbolic_diff src/symbolic_diff.cxx)
