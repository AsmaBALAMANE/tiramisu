# Install script for directory: /Users/mac/Desktop/PFE_Asma/tiramisu/benchmarks

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
    set(CMAKE_INSTALL_CONFIG_NAME "DEBUG")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/convolution/direct/cpu/cmake_install.cmake")
  include("/Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/bn/cpu/cmake_install.cmake")
  include("/Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/relu/cpu/cmake_install.cmake")
  include("/Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/layers/maxpool/cpu/cmake_install.cmake")
  include("/Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/conv2/cmake_install.cmake")
  include("/Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/LSTM/cpu/cmake_install.cmake")
  include("/Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/vggBlock/cmake_install.cmake")
  include("/Users/mac/Desktop/PFE_Asma/tiramisu/build/benchmarks/DNN/blocks/fusedresNet/cmake_install.cmake")

endif()

