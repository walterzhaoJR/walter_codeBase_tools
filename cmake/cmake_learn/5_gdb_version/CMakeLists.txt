cmake_minimum_required(VERSION 2.8)

project(Demo4)

set (main_VERSION_MAJOR	1)
set (main_VERSION_MINOR 2)

set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -o0 -Wall -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

set(CMAKE_INCLDE_CURRENT_DIR ON)

configure_file(
"${PROJECT_SOURCE_DIR}/config.h.in"
"${PROJECT_SOURCE_DIR}/config.h"
)

option(USE_MYMATH
"Use provided math implementation" ON
)

if(USE_MYMATH)
 include_directories ("${PROJECT_SOURCE_DIR}/math")
 add_subdirectory(math)
 set (EXTRA_LIBS ${EXTRA_LIBS} MathFunctions)
endif (USE_MYMATH)

aux_source_directory(. DIR_FILE)

add_executable(main ${DIR_FILE})
target_link_libraries(main ${EXTRA_LIBS})
