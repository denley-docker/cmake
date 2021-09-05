cmake_minimum_required(VERSION 3.9.5)
project(cmake_test)

set(CMAKE_CXX_STANDARD 17)

set(SOURCE_FILES main.cpp)
add_executable(${PROJECT_NAME} ${SOURCE_FILES})
