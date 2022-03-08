cmake_minimum_required(VERSION 3.10)
project(gdnative_cpp_example)

set(CMAKE_CXX_STANDARD 17)

file(GLOB SRC
        src/*.cpp
        src/*.h)

add_library(gdexample SHARED
        ${SRC})

target_include_directories(gdexample PUBLIC
        godot-cpp/include
        godot-cpp/include/core
        godot-cpp/include/gen
        godot-cpp/godot-headers)

target_link_directories(gdexample PUBLIC
        godot-cpp/bin/)

target_link_libraries(gdexample PUBLIC
        godot-cpp.linux.debug.64)

#set_target_properties(gdexample PROPERTIES LIBRARY_OUTPUT_PATH demo/bin/x11)
add_custom_command(TARGET gdexample
        POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_BINARY_DIR}/libgdexample.so ${PROJECT_SOURCE_DIR}/demo/bin/x11)

