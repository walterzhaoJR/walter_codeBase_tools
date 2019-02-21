cmake_minimum_required(VERSION 2.8)

project(demo3)

aux_source_directory(. DIR_FILE)

add_subdirectory(math)

add_executable(main ${DIR_FILE})

target_link_libraries(main MathFunctions)
