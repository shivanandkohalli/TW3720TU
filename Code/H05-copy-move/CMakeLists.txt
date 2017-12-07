# Force CMake version 3.1 or above
cmake_minimum_required (VERSION 3.1)

# This project has the name: H05-copy-move
project (H05-copy-move)

add_executable(hcopy-move src/hcopy-move.cxx)

# Define C++11 standard
set_property(TARGET hcopy-move PROPERTY CXX_STANDARD 11)

add_test (hcopy-move-test hcopy-move)

# Create an additional target for assignment submission
add_assignment(hcopy-move src/hcopy-move.cxx)
