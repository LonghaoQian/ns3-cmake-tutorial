#######################################
# Required CMake version#
#######################################
cmake_minimum_required( VERSION 3.0 )
######################################
# Project name                        #
######################################
project(ns3-test-project CXX)
set(CMAKE_CXX_STANDARD 17)
set(MSVC_FLAGS "/W4;/MP;$<$<CONFIG:DEBUG>:/ZI;/Od>$<$<CONFIG:RELEASE>:/O2>")
set(GNU_FLAGS
    "-Wall;-Werror;-Wextra;-Wpedantic;$<$<CONFIG:DEBUG>:-O0;-g>$<$<CONFIG:RELEASE>:-O3>"
)
# display compiler
if (MSVC)
    message("-- The compiler is MSVC")
else()
    message("-- The compiler is NOT MSVC")
endif()
# you must specify build type
if (DEFINED CMAKE_BUILD_TYPE)
    # display build type
    message("-- build type is set to " ${CMAKE_BUILD_TYPE})
else()
    message(FATAL_ERROR "CMAKE_BUILD_TYPE undefined! use: cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug to define a type")
endif()
###########################Eigen package########################
find_package (Eigen3 3.3 REQUIRED NO_MODULE)
###########################NS3 lib###############################
# detect .so and header file
include(NSlibs.cmake)
# Set output folder to ./bin/
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
message("dynamic libs are in : " ${NS3_PATH})
message("dynamic libs are in : " ${NS3_HEADER_PATH})
########################local lib#################################
add_subdirectory(lib)

# comnpile examples
set(example_list
    example_1
    example_2
)
# build target
foreach(example ${example_list})
    add_executable(${example} src/${example}.cpp)
    # set include directory to SYSTEM to suppress warnings from ns3 header files
    target_include_directories(${example} SYSTEM PRIVATE ${NS3_HEADER_PATH})    
    target_link_libraries(${example} "${NS3_LIBRARIES}")
    target_compile_options(${example} PRIVATE $<$<CXX_COMPILER_ID:MSVC>:${MSVC_FLAGS}>
                           $<$<CXX_COMPILER_ID:GNU>:${GNU_FLAGS}>)
endforeach()

# build eigen target
add_executable(example_eigen src/example_eigen.cpp)
# set include directory to SYSTEM to suppress warnings from ns3 header files
target_include_directories(example_eigen SYSTEM PRIVATE ${NS3_HEADER_PATH})
target_link_libraries(example_eigen 
                      "${NS3_LIBRARIES}"
                      Eigen3::Eigen
                      AuxModule)
target_compile_options(example_eigen PRIVATE $<$<CXX_COMPILER_ID:MSVC>:${MSVC_FLAGS}>
                       $<$<CXX_COMPILER_ID:GNU>:${GNU_FLAGS}>)