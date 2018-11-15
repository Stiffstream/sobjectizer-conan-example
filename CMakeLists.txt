cmake_minimum_required(VERSION 2.8)

project(hello_world)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

find_package(sobjectizer)

add_executable(hello_world hello_world.cpp)
target_link_libraries(hello_world sobjectizer::SharedLib)
