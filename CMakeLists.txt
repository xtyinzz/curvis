cmake_minimum_required(VERSION 3.2)
project(curvis)

set(CURVIS_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)
include_directories(${CURVIS_INCLUDE_DIR})

add_library(Boost INTERFACE)
target_include_directories(Boost INTERFACE "/usr/include")

add_library(Eigen INTERFACE)
target_include_directories(Eigen INTERFACE "/usr/include")

add_library(LINK_LIBS INTERFACE)
target_link_libraries(LINK_LIBS INTERFACE Boost Eigen)


message(-status, ${LINK_LIBS})

add_subdirectory(test)


