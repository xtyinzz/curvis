cmake_minimum_required(VERSION 3.2)
project(test)

# set exec path
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
message(-status, ${PROJECT_SOURCE_DIR}, ${CURVIS_INCLUDE_DIR})

file(GLOB SOURCE_FILES "*.cpp")

foreach (test ${SOURCE_FILES})
  get_filename_component(tname ${test} NAME_WE)
  add_executable(${tname} ${test})
  target_link_libraries(${tname} ${LINK_LIBS})
endforeach (test)




