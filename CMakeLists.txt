cmake_minimum_required(VERSION 3.10)

project(vcpkg-template)

find_package(fmt CONFIG REQUIRED)

add_executable(vcpkg-template src/main.cpp)

target_link_libraries(vcpkg-template PRIVATE fmt::fmt)