# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /root/H/home/zhc/exe/clion-2019.1.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /root/H/home/zhc/exe/clion-2019.1.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/H/home/zhc/code/C99

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/H/home/zhc/code/C99

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/home/zhc/exe/clion-2019.1.3/bin/cmake/linux/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/home/zhc/exe/clion-2019.1.3/bin/cmake/linux/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /root/H/home/zhc/code/C99/CMakeFiles /root/H/home/zhc/code/C99/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /root/H/home/zhc/code/C99/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named getFileSize

# Build rule for target.
getFileSize: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 getFileSize
.PHONY : getFileSize

# fast build rule for target.
getFileSize/fast:
	$(MAKE) -f CMakeFiles/getFileSize.dir/build.make CMakeFiles/getFileSize.dir/build
.PHONY : getFileSize/fast

#=============================================================================
# Target rules for targets named demo4

# Build rule for target.
demo4: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 demo4
.PHONY : demo4

# fast build rule for target.
demo4/fast:
	$(MAKE) -f CMakeFiles/demo4.dir/build.make CMakeFiles/demo4.dir/build
.PHONY : demo4/fast

#=============================================================================
# Target rules for targets named Base128

# Build rule for target.
Base128: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Base128
.PHONY : Base128

# fast build rule for target.
Base128/fast:
	$(MAKE) -f CMakeFiles/Base128.dir/build.make CMakeFiles/Base128.dir/build
.PHONY : Base128/fast

#=============================================================================
# Target rules for targets named Base128_Old

# Build rule for target.
Base128_Old: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Base128_Old
.PHONY : Base128_Old

# fast build rule for target.
Base128_Old/fast:
	$(MAKE) -f CMakeFiles/Base128_Old.dir/build.make CMakeFiles/Base128_Old.dir/build
.PHONY : Base128_Old/fast

#=============================================================================
# Target rules for targets named demo5

# Build rule for target.
demo5: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 demo5
.PHONY : demo5

# fast build rule for target.
demo5/fast:
	$(MAKE) -f CMakeFiles/demo5.dir/build.make CMakeFiles/demo5.dir/build
.PHONY : demo5/fast

#=============================================================================
# Target rules for targets named demo1

# Build rule for target.
demo1: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 demo1
.PHONY : demo1

# fast build rule for target.
demo1/fast:
	$(MAKE) -f CMakeFiles/demo1.dir/build.make CMakeFiles/demo1.dir/build
.PHONY : demo1/fast

#=============================================================================
# Target rules for targets named demo3

# Build rule for target.
demo3: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 demo3
.PHONY : demo3

# fast build rule for target.
demo3/fast:
	$(MAKE) -f CMakeFiles/demo3.dir/build.make CMakeFiles/demo3.dir/build
.PHONY : demo3/fast

#=============================================================================
# Target rules for targets named demo2

# Build rule for target.
demo2: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 demo2
.PHONY : demo2

# fast build rule for target.
demo2/fast:
	$(MAKE) -f CMakeFiles/demo2.dir/build.make CMakeFiles/demo2.dir/build
.PHONY : demo2/fast

#=============================================================================
# Target rules for targets named b

# Build rule for target.
b : cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 b
.PHONY : b

# fast build rule for target.
b/fast:
	$(MAKE) -f CMakeFiles/b.dir/build.make CMakeFiles/b.dir/build
.PHONY : b/fast

#=============================================================================
# Target rules for targets named Main

# Build rule for target.
Main: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Main
.PHONY : Main

# fast build rule for target.
Main/fast:
	$(MAKE) -f CMakeFiles/Main.dir/build.make CMakeFiles/Main.dir/build
.PHONY : Main/fast

#=============================================================================
# Target rules for targets named test8

# Build rule for target.
test8: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test8
.PHONY : test8

# fast build rule for target.
test8/fast:
	$(MAKE) -f CMakeFiles/test8.dir/build.make CMakeFiles/test8.dir/build
.PHONY : test8/fast

#=============================================================================
# Target rules for targets named FileXor

# Build rule for target.
FileXor: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 FileXor
.PHONY : FileXor

# fast build rule for target.
FileXor/fast:
	$(MAKE) -f CMakeFiles/FileXor.dir/build.make CMakeFiles/FileXor.dir/build
.PHONY : FileXor/fast

#=============================================================================
# Target rules for targets named demo0

# Build rule for target.
demo0: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 demo0
.PHONY : demo0

# fast build rule for target.
demo0/fast:
	$(MAKE) -f CMakeFiles/demo0.dir/build.make CMakeFiles/demo0.dir/build
.PHONY : demo0/fast

#=============================================================================
# Target rules for targets named test6

# Build rule for target.
test6: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test6
.PHONY : test6

# fast build rule for target.
test6/fast:
	$(MAKE) -f CMakeFiles/test6.dir/build.make CMakeFiles/test6.dir/build
.PHONY : test6/fast

#=============================================================================
# Target rules for targets named test7

# Build rule for target.
test7: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test7
.PHONY : test7

# fast build rule for target.
test7/fast:
	$(MAKE) -f CMakeFiles/test7.dir/build.make CMakeFiles/test7.dir/build
.PHONY : test7/fast

#=============================================================================
# Target rules for targets named Base128_dir

# Build rule for target.
Base128_dir: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Base128_dir
.PHONY : Base128_dir

# fast build rule for target.
Base128_dir/fast:
	$(MAKE) -f CMakeFiles/Base128_dir.dir/build.make CMakeFiles/Base128_dir.dir/build
.PHONY : Base128_dir/fast

#=============================================================================
# Target rules for targets named test10

# Build rule for target.
test10: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test10
.PHONY : test10

# fast build rule for target.
test10/fast:
	$(MAKE) -f CMakeFiles/test10.dir/build.make CMakeFiles/test10.dir/build
.PHONY : test10/fast

#=============================================================================
# Target rules for targets named test9

# Build rule for target.
test9: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test9
.PHONY : test9

# fast build rule for target.
test9/fast:
	$(MAKE) -f CMakeFiles/test9.dir/build.make CMakeFiles/test9.dir/build
.PHONY : test9/fast

#=============================================================================
# Target rules for targets named Base64

# Build rule for target.
Base64: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Base64
.PHONY : Base64

# fast build rule for target.
Base64/fast:
	$(MAKE) -f CMakeFiles/Base64.dir/build.make CMakeFiles/Base64.dir/build
.PHONY : Base64/fast

b.o: b.c.o

.PHONY : b.o

# target to build an object file
b.c.o:
	$(MAKE) -f CMakeFiles/b.dir/build.make CMakeFiles/b.dir/b.c.o
.PHONY : b.c.o

b.i: b.c.i

.PHONY : b.i

# target to preprocess a source file
b.c.i:
	$(MAKE) -f CMakeFiles/b.dir/build.make CMakeFiles/b.dir/b.c.i
.PHONY : b.c.i

b.s: b.c.s

.PHONY : b.s

# target to generate assembly for a file
b.c.s:
	$(MAKE) -f CMakeFiles/b.dir/build.make CMakeFiles/b.dir/b.c.s
.PHONY : b.c.s

demo0.o: demo0.c.o

.PHONY : demo0.o

# target to build an object file
demo0.c.o:
	$(MAKE) -f CMakeFiles/demo0.dir/build.make CMakeFiles/demo0.dir/demo0.c.o
.PHONY : demo0.c.o

demo0.i: demo0.c.i

.PHONY : demo0.i

# target to preprocess a source file
demo0.c.i:
	$(MAKE) -f CMakeFiles/demo0.dir/build.make CMakeFiles/demo0.dir/demo0.c.i
.PHONY : demo0.c.i

demo0.s: demo0.c.s

.PHONY : demo0.s

# target to generate assembly for a file
demo0.c.s:
	$(MAKE) -f CMakeFiles/demo0.dir/build.make CMakeFiles/demo0.dir/demo0.c.s
.PHONY : demo0.c.s

demo1.o: demo1.c.o

.PHONY : demo1.o

# target to build an object file
demo1.c.o:
	$(MAKE) -f CMakeFiles/demo1.dir/build.make CMakeFiles/demo1.dir/demo1.c.o
.PHONY : demo1.c.o

demo1.i: demo1.c.i

.PHONY : demo1.i

# target to preprocess a source file
demo1.c.i:
	$(MAKE) -f CMakeFiles/demo1.dir/build.make CMakeFiles/demo1.dir/demo1.c.i
.PHONY : demo1.c.i

demo1.s: demo1.c.s

.PHONY : demo1.s

# target to generate assembly for a file
demo1.c.s:
	$(MAKE) -f CMakeFiles/demo1.dir/build.make CMakeFiles/demo1.dir/demo1.c.s
.PHONY : demo1.c.s

demo2.o: demo2.c.o

.PHONY : demo2.o

# target to build an object file
demo2.c.o:
	$(MAKE) -f CMakeFiles/demo2.dir/build.make CMakeFiles/demo2.dir/demo2.c.o
.PHONY : demo2.c.o

demo2.i: demo2.c.i

.PHONY : demo2.i

# target to preprocess a source file
demo2.c.i:
	$(MAKE) -f CMakeFiles/demo2.dir/build.make CMakeFiles/demo2.dir/demo2.c.i
.PHONY : demo2.c.i

demo2.s: demo2.c.s

.PHONY : demo2.s

# target to generate assembly for a file
demo2.c.s:
	$(MAKE) -f CMakeFiles/demo2.dir/build.make CMakeFiles/demo2.dir/demo2.c.s
.PHONY : demo2.c.s

demo3.o: demo3.c.o

.PHONY : demo3.o

# target to build an object file
demo3.c.o:
	$(MAKE) -f CMakeFiles/demo3.dir/build.make CMakeFiles/demo3.dir/demo3.c.o
.PHONY : demo3.c.o

demo3.i: demo3.c.i

.PHONY : demo3.i

# target to preprocess a source file
demo3.c.i:
	$(MAKE) -f CMakeFiles/demo3.dir/build.make CMakeFiles/demo3.dir/demo3.c.i
.PHONY : demo3.c.i

demo3.s: demo3.c.s

.PHONY : demo3.s

# target to generate assembly for a file
demo3.c.s:
	$(MAKE) -f CMakeFiles/demo3.dir/build.make CMakeFiles/demo3.dir/demo3.c.s
.PHONY : demo3.c.s

demo4.o: demo4.c.o

.PHONY : demo4.o

# target to build an object file
demo4.c.o:
	$(MAKE) -f CMakeFiles/demo4.dir/build.make CMakeFiles/demo4.dir/demo4.c.o
.PHONY : demo4.c.o

demo4.i: demo4.c.i

.PHONY : demo4.i

# target to preprocess a source file
demo4.c.i:
	$(MAKE) -f CMakeFiles/demo4.dir/build.make CMakeFiles/demo4.dir/demo4.c.i
.PHONY : demo4.c.i

demo4.s: demo4.c.s

.PHONY : demo4.s

# target to generate assembly for a file
demo4.c.s:
	$(MAKE) -f CMakeFiles/demo4.dir/build.make CMakeFiles/demo4.dir/demo4.c.s
.PHONY : demo4.c.s

demo5.o: demo5.c.o

.PHONY : demo5.o

# target to build an object file
demo5.c.o:
	$(MAKE) -f CMakeFiles/demo5.dir/build.make CMakeFiles/demo5.dir/demo5.c.o
.PHONY : demo5.c.o

demo5.i: demo5.c.i

.PHONY : demo5.i

# target to preprocess a source file
demo5.c.i:
	$(MAKE) -f CMakeFiles/demo5.dir/build.make CMakeFiles/demo5.dir/demo5.c.i
.PHONY : demo5.c.i

demo5.s: demo5.c.s

.PHONY : demo5.s

# target to generate assembly for a file
demo5.c.s:
	$(MAKE) -f CMakeFiles/demo5.dir/build.make CMakeFiles/demo5.dir/demo5.c.s
.PHONY : demo5.c.s

getFileSize.o: getFileSize.c.o

.PHONY : getFileSize.o

# target to build an object file
getFileSize.c.o:
	$(MAKE) -f CMakeFiles/getFileSize.dir/build.make CMakeFiles/getFileSize.dir/getFileSize.c.o
.PHONY : getFileSize.c.o

getFileSize.i: getFileSize.c.i

.PHONY : getFileSize.i

# target to preprocess a source file
getFileSize.c.i:
	$(MAKE) -f CMakeFiles/getFileSize.dir/build.make CMakeFiles/getFileSize.dir/getFileSize.c.i
.PHONY : getFileSize.c.i

getFileSize.s: getFileSize.c.s

.PHONY : getFileSize.s

# target to generate assembly for a file
getFileSize.c.s:
	$(MAKE) -f CMakeFiles/getFileSize.dir/build.make CMakeFiles/getFileSize.dir/getFileSize.c.s
.PHONY : getFileSize.c.s

main.o: main.c.o

.PHONY : main.o

# target to build an object file
main.c.o:
	$(MAKE) -f CMakeFiles/Main.dir/build.make CMakeFiles/Main.dir/main.c.o
.PHONY : main.c.o

main.i: main.c.i

.PHONY : main.i

# target to preprocess a source file
main.c.i:
	$(MAKE) -f CMakeFiles/Main.dir/build.make CMakeFiles/Main.dir/main.c.i
.PHONY : main.c.i

main.s: main.c.s

.PHONY : main.s

# target to generate assembly for a file
main.c.s:
	$(MAKE) -f CMakeFiles/Main.dir/build.make CMakeFiles/Main.dir/main.c.s
.PHONY : main.c.s

test10.o: test10.c.o

.PHONY : test10.o

# target to build an object file
test10.c.o:
	$(MAKE) -f CMakeFiles/test10.dir/build.make CMakeFiles/test10.dir/test10.c.o
.PHONY : test10.c.o

test10.i: test10.c.i

.PHONY : test10.i

# target to preprocess a source file
test10.c.i:
	$(MAKE) -f CMakeFiles/test10.dir/build.make CMakeFiles/test10.dir/test10.c.i
.PHONY : test10.c.i

test10.s: test10.c.s

.PHONY : test10.s

# target to generate assembly for a file
test10.c.s:
	$(MAKE) -f CMakeFiles/test10.dir/build.make CMakeFiles/test10.dir/test10.c.s
.PHONY : test10.c.s

test6.o: test6.c.o

.PHONY : test6.o

# target to build an object file
test6.c.o:
	$(MAKE) -f CMakeFiles/test6.dir/build.make CMakeFiles/test6.dir/test6.c.o
.PHONY : test6.c.o

test6.i: test6.c.i

.PHONY : test6.i

# target to preprocess a source file
test6.c.i:
	$(MAKE) -f CMakeFiles/test6.dir/build.make CMakeFiles/test6.dir/test6.c.i
.PHONY : test6.c.i

test6.s: test6.c.s

.PHONY : test6.s

# target to generate assembly for a file
test6.c.s:
	$(MAKE) -f CMakeFiles/test6.dir/build.make CMakeFiles/test6.dir/test6.c.s
.PHONY : test6.c.s

test7.o: test7.c.o

.PHONY : test7.o

# target to build an object file
test7.c.o:
	$(MAKE) -f CMakeFiles/test7.dir/build.make CMakeFiles/test7.dir/test7.c.o
.PHONY : test7.c.o

test7.i: test7.c.i

.PHONY : test7.i

# target to preprocess a source file
test7.c.i:
	$(MAKE) -f CMakeFiles/test7.dir/build.make CMakeFiles/test7.dir/test7.c.i
.PHONY : test7.c.i

test7.s: test7.c.s

.PHONY : test7.s

# target to generate assembly for a file
test7.c.s:
	$(MAKE) -f CMakeFiles/test7.dir/build.make CMakeFiles/test7.dir/test7.c.s
.PHONY : test7.c.s

test8.o: test8.c.o

.PHONY : test8.o

# target to build an object file
test8.c.o:
	$(MAKE) -f CMakeFiles/test8.dir/build.make CMakeFiles/test8.dir/test8.c.o
.PHONY : test8.c.o

test8.i: test8.c.i

.PHONY : test8.i

# target to preprocess a source file
test8.c.i:
	$(MAKE) -f CMakeFiles/test8.dir/build.make CMakeFiles/test8.dir/test8.c.i
.PHONY : test8.c.i

test8.s: test8.c.s

.PHONY : test8.s

# target to generate assembly for a file
test8.c.s:
	$(MAKE) -f CMakeFiles/test8.dir/build.make CMakeFiles/test8.dir/test8.c.s
.PHONY : test8.c.s

test9.o: test9.c.o

.PHONY : test9.o

# target to build an object file
test9.c.o:
	$(MAKE) -f CMakeFiles/test9.dir/build.make CMakeFiles/test9.dir/test9.c.o
.PHONY : test9.c.o

test9.i: test9.c.i

.PHONY : test9.i

# target to preprocess a source file
test9.c.i:
	$(MAKE) -f CMakeFiles/test9.dir/build.make CMakeFiles/test9.dir/test9.c.i
.PHONY : test9.c.i

test9.s: test9.c.s

.PHONY : test9.s

# target to generate assembly for a file
test9.c.s:
	$(MAKE) -f CMakeFiles/test9.dir/build.make CMakeFiles/test9.dir/test9.c.s
.PHONY : test9.c.s

u/Base128.o: u/Base128.c.o

.PHONY : u/Base128.o

# target to build an object file
u/Base128.c.o:
	$(MAKE) -f CMakeFiles/Base128.dir/build.make CMakeFiles/Base128.dir/u/Base128.c.o
.PHONY : u/Base128.c.o

u/Base128.i: u/Base128.c.i

.PHONY : u/Base128.i

# target to preprocess a source file
u/Base128.c.i:
	$(MAKE) -f CMakeFiles/Base128.dir/build.make CMakeFiles/Base128.dir/u/Base128.c.i
.PHONY : u/Base128.c.i

u/Base128.s: u/Base128.c.s

.PHONY : u/Base128.s

# target to generate assembly for a file
u/Base128.c.s:
	$(MAKE) -f CMakeFiles/Base128.dir/build.make CMakeFiles/Base128.dir/u/Base128.c.s
.PHONY : u/Base128.c.s

u/Base128_old.o: u/Base128_old.c.o

.PHONY : u/Base128_old.o

# target to build an object file
u/Base128_old.c.o:
	$(MAKE) -f CMakeFiles/Base128_Old.dir/build.make CMakeFiles/Base128_Old.dir/u/Base128_old.c.o
.PHONY : u/Base128_old.c.o

u/Base128_old.i: u/Base128_old.c.i

.PHONY : u/Base128_old.i

# target to preprocess a source file
u/Base128_old.c.i:
	$(MAKE) -f CMakeFiles/Base128_Old.dir/build.make CMakeFiles/Base128_Old.dir/u/Base128_old.c.i
.PHONY : u/Base128_old.c.i

u/Base128_old.s: u/Base128_old.c.s

.PHONY : u/Base128_old.s

# target to generate assembly for a file
u/Base128_old.c.s:
	$(MAKE) -f CMakeFiles/Base128_Old.dir/build.make CMakeFiles/Base128_Old.dir/u/Base128_old.c.s
.PHONY : u/Base128_old.c.s

u/Base64.o: u/Base64.c.o

.PHONY : u/Base64.o

# target to build an object file
u/Base64.c.o:
	$(MAKE) -f CMakeFiles/Base64.dir/build.make CMakeFiles/Base64.dir/u/Base64.c.o
.PHONY : u/Base64.c.o

u/Base64.i: u/Base64.c.i

.PHONY : u/Base64.i

# target to preprocess a source file
u/Base64.c.i:
	$(MAKE) -f CMakeFiles/Base64.dir/build.make CMakeFiles/Base64.dir/u/Base64.c.i
.PHONY : u/Base64.c.i

u/Base64.s: u/Base64.c.s

.PHONY : u/Base64.s

# target to generate assembly for a file
u/Base64.c.s:
	$(MAKE) -f CMakeFiles/Base64.dir/build.make CMakeFiles/Base64.dir/u/Base64.c.s
.PHONY : u/Base64.c.s

u/FileXor.o: u/FileXor.c.o

.PHONY : u/FileXor.o

# target to build an object file
u/FileXor.c.o:
	$(MAKE) -f CMakeFiles/FileXor.dir/build.make CMakeFiles/FileXor.dir/u/FileXor.c.o
.PHONY : u/FileXor.c.o

u/FileXor.i: u/FileXor.c.i

.PHONY : u/FileXor.i

# target to preprocess a source file
u/FileXor.c.i:
	$(MAKE) -f CMakeFiles/FileXor.dir/build.make CMakeFiles/FileXor.dir/u/FileXor.c.i
.PHONY : u/FileXor.c.i

u/FileXor.s: u/FileXor.c.s

.PHONY : u/FileXor.s

# target to generate assembly for a file
u/FileXor.c.s:
	$(MAKE) -f CMakeFiles/FileXor.dir/build.make CMakeFiles/FileXor.dir/u/FileXor.c.s
.PHONY : u/FileXor.c.s

u/encode.o: u/encode.c.o

.PHONY : u/encode.o

# target to build an object file
u/encode.c.o:
	$(MAKE) -f CMakeFiles/Base128_dir.dir/build.make CMakeFiles/Base128_dir.dir/u/encode.c.o
.PHONY : u/encode.c.o

u/encode.i: u/encode.c.i

.PHONY : u/encode.i

# target to preprocess a source file
u/encode.c.i:
	$(MAKE) -f CMakeFiles/Base128_dir.dir/build.make CMakeFiles/Base128_dir.dir/u/encode.c.i
.PHONY : u/encode.c.i

u/encode.s: u/encode.c.s

.PHONY : u/encode.s

# target to generate assembly for a file
u/encode.c.s:
	$(MAKE) -f CMakeFiles/Base128_dir.dir/build.make CMakeFiles/Base128_dir.dir/u/encode.c.s
.PHONY : u/encode.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... getFileSize"
	@echo "... demo4"
	@echo "... Base128"
	@echo "... edit_cache"
	@echo "... Base128_Old"
	@echo "... demo5"
	@echo "... demo1"
	@echo "... demo3"
	@echo "... demo2"
	@echo "... b"
	@echo "... Main"
	@echo "... test8"
	@echo "... rebuild_cache"
	@echo "... FileXor"
	@echo "... demo0"
	@echo "... test6"
	@echo "... test7"
	@echo "... Base128_dir"
	@echo "... test10"
	@echo "... test9"
	@echo "... Base64"
	@echo "... b.o"
	@echo "... b.i"
	@echo "... b.s"
	@echo "... demo0.o"
	@echo "... demo0.i"
	@echo "... demo0.s"
	@echo "... demo1.o"
	@echo "... demo1.i"
	@echo "... demo1.s"
	@echo "... demo2.o"
	@echo "... demo2.i"
	@echo "... demo2.s"
	@echo "... demo3.o"
	@echo "... demo3.i"
	@echo "... demo3.s"
	@echo "... demo4.o"
	@echo "... demo4.i"
	@echo "... demo4.s"
	@echo "... demo5.o"
	@echo "... demo5.i"
	@echo "... demo5.s"
	@echo "... getFileSize.o"
	@echo "... getFileSize.i"
	@echo "... getFileSize.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... test10.o"
	@echo "... test10.i"
	@echo "... test10.s"
	@echo "... test6.o"
	@echo "... test6.i"
	@echo "... test6.s"
	@echo "... test7.o"
	@echo "... test7.i"
	@echo "... test7.s"
	@echo "... test8.o"
	@echo "... test8.i"
	@echo "... test8.s"
	@echo "... test9.o"
	@echo "... test9.i"
	@echo "... test9.s"
	@echo "... u/Base128.o"
	@echo "... u/Base128.i"
	@echo "... u/Base128.s"
	@echo "... u/Base128_old.o"
	@echo "... u/Base128_old.i"
	@echo "... u/Base128_old.s"
	@echo "... u/Base64.o"
	@echo "... u/Base64.i"
	@echo "... u/Base64.s"
	@echo "... u/FileXor.o"
	@echo "... u/FileXor.i"
	@echo "... u/FileXor.s"
	@echo "... u/encode.o"
	@echo "... u/encode.i"
	@echo "... u/encode.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

