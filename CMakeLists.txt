cmake_minimum_required(VERSION 3.12)
project(C99 C)

set(CMAKE_C_STANDARD 99)

add_executable(Main main.c)
add_executable(demo0 demo0.c zhc.c ./u/strdic.c u/sort.c)
add_executable(snake snake.c zhc.c ./u/strdic.c u/sort.c)
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
add_executable(Base128 u/Base128.c u/Base128Lib.c zhc.c)
add_executable(FileXor u/FileXor.c)
add_executable(b b.c)
add_executable(Base64 u/Base64.c ./u/Base64Lib.c ./zhc.c)
add_executable(Base128_Old u/Base128_old.c)
add_executable(Base128_dir u/encode.c)
add_executable(getFileSize getFileSize.c)
add_executable(TEA u/TEA.c)
add_executable(qmc u/qmc.c u/qmcLib.c zhc.c)
#[[
list(APPEND SOURCES ${CMAKE_SOURCE_DIR}/logo.rc)
 C:\zhc\f\e.txt]]
add_executable(TwoFilesXor TwoFilesXor.c)
#######################################
add_executable(test test.c)
add_executable(kwm u/kwm.c)
add_executable(cat_file u/cat_file.c)
add_executable(zhc zhc.c)
add_executable(s0 s/s0.c ./zhc.c)
add_executable(cmpDate ./u/cmpDate.c zhc.c)
add_executable(BigDecimal ./u/BigDecimal.c zhc.c)
add_executable(aes_128_main ./u/aes_128/aes.c ./u/aes_128/main.c ./u/Base64Lib.c ./zhc.c)
add_executable(splitFile ./u/splitFile.c ./zhc.c)
add_executable(unicode ./s/unicode.c)

find_package(Threads REQUIRED)
target_link_libraries(demo0 Threads::Threads)
target_link_libraries(demo1 curses)
