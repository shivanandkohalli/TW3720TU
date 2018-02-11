# Force CMake version 3.1 or above
cmake_minimum_required (VERSION 3.1)

# This project has the name: H01-swap
project (Final-project)

# Create an executable named 'swap' from the source file 'swap.cxx'
add_executable(final src/final.cxx)

# Define C++11 standard
set_property(TARGET final PROPERTY CXX_STANDARD 11)

# Add test called "swap-test" based on the executable "swap"
add_test (final-test final)

# Create an additional target for assignment submission
add_assignment(final src/final.cxx)
