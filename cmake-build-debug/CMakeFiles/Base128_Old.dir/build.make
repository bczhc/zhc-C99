# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /root/myHome/zhc/bin/clion-2019.1.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /root/myHome/zhc/bin/clion-2019.1.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/myHome/zhc/code/code/C99

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/myHome/zhc/code/code/C99/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Base128_Old.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Base128_Old.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Base128_Old.dir/flags.make

CMakeFiles/Base128_Old.dir/u/Base128_old.c.o: CMakeFiles/Base128_Old.dir/flags.make
CMakeFiles/Base128_Old.dir/u/Base128_old.c.o: ../u/Base128_old.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/myHome/zhc/code/code/C99/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Base128_Old.dir/u/Base128_old.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Base128_Old.dir/u/Base128_old.c.o   -c /root/myHome/zhc/code/code/C99/u/Base128_old.c

CMakeFiles/Base128_Old.dir/u/Base128_old.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Base128_Old.dir/u/Base128_old.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/myHome/zhc/code/code/C99/u/Base128_old.c > CMakeFiles/Base128_Old.dir/u/Base128_old.c.i

CMakeFiles/Base128_Old.dir/u/Base128_old.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Base128_Old.dir/u/Base128_old.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/myHome/zhc/code/code/C99/u/Base128_old.c -o CMakeFiles/Base128_Old.dir/u/Base128_old.c.s

# Object files for target Base128_Old
Base128_Old_OBJECTS = \
"CMakeFiles/Base128_Old.dir/u/Base128_old.c.o"

# External object files for target Base128_Old
Base128_Old_EXTERNAL_OBJECTS =

Base128_Old: CMakeFiles/Base128_Old.dir/u/Base128_old.c.o
Base128_Old: CMakeFiles/Base128_Old.dir/build.make
Base128_Old: CMakeFiles/Base128_Old.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/myHome/zhc/code/code/C99/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Base128_Old"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Base128_Old.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Base128_Old.dir/build: Base128_Old

.PHONY : CMakeFiles/Base128_Old.dir/build

CMakeFiles/Base128_Old.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Base128_Old.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Base128_Old.dir/clean

CMakeFiles/Base128_Old.dir/depend:
	cd /root/myHome/zhc/code/code/C99/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/myHome/zhc/code/code/C99 /root/myHome/zhc/code/code/C99 /root/myHome/zhc/code/code/C99/cmake-build-debug /root/myHome/zhc/code/code/C99/cmake-build-debug /root/myHome/zhc/code/code/C99/cmake-build-debug/CMakeFiles/Base128_Old.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Base128_Old.dir/depend

