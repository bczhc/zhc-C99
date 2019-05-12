cmake_minimum_required(VERSION 3.12)
project(C99 C)

set(CMAKE_C_STANDARD 99)

add_executable(Main main.c)
add_executable(demo0 demo0.c)
add_executable(demo1 demo1.c)
add_executable(demo2 demo2.c)
add_executable(demo3 demo3.c)
add_executable(demo4 demo4.c)
add_executable(demo5 demo5.c)
add_executable(test6 test6.c)
add_executable(test7 test7.c)
add_executable(test8 test8.c)
add_executable(test9 test9.c)
add_executable(test10 test10.c)
add_executable(Base128 u/Base128.c)
add_executable(FileXor u/FileXor.c)
add_executable(b b.c)
add_executable(Base64 u/Base64.c)
#[[
list(APPEND SOURCES ${CMAKE_SOURCE_DIR}/logo.rc)
 C:\zhc\f\e.txt]]
