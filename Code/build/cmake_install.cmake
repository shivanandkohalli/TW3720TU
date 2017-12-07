# Install script for directory: /home/shiva/Code/Cpp_shiv/TW3720TU/Code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/00-git-bisect/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/01-hello/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/02-variables-constants/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/03-pointers/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/04-passing-arguments/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/05-namespaces/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/06-dot-product/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/07-dot-product-struct/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/08-dot-product-struct2/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/09-copy-move/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/10-integration/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/11-polymorphism/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/12-auto-decltype/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/13-templates/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/14-templates-partial-specialisation/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/15-traits/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/16-templates-sfinae/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/17-templates-sfinae2/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/18-complex-conjugate/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/19-templates-variadic/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/20-containers/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/21-algorithm/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/22-stack-queue/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/23-linalg/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/24-maps/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H01-swap/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H02-arrays/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H03-reverse-engineering/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H04-points-triangles/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H05-copy-move/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H06-derivatives/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H07-templates/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H08-unit-converter/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H09-symbolic-differentiation/cmake_install.cmake")
  include("/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/H10-add-vectors/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/shiva/Code/Cpp_shiv/TW3720TU/Code/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
