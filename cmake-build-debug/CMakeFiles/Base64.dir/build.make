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
CMAKE_COMMAND = /home/zhc/bin/clion-2019.1.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/zhc/bin/clion-2019.1.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhc/code/code/C99

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhc/code/code/C99/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Base64.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Base64.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Base64.dir/flags.make

CMakeFiles/Base64.dir/u/Base64.c.o: CMakeFiles/Base64.dir/flags.make
CMakeFiles/Base64.dir/u/Base64.c.o: ../u/Base64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhc/code/code/C99/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Base64.dir/u/Base64.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Base64.dir/u/Base64.c.o   -c /home/zhc/code/code/C99/u/Base64.c

CMakeFiles/Base64.dir/u/Base64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Base64.dir/u/Base64.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhc/code/code/C99/u/Base64.c > CMakeFiles/Base64.dir/u/Base64.c.i

CMakeFiles/Base64.dir/u/Base64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Base64.dir/u/Base64.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhc/code/code/C99/u/Base64.c -o CMakeFiles/Base64.dir/u/Base64.c.s

# Object files for target Base64
Base64_OBJECTS = \
"CMakeFiles/Base64.dir/u/Base64.c.o"

# External object files for target Base64
Base64_EXTERNAL_OBJECTS =

Base64: CMakeFiles/Base64.dir/u/Base64.c.o
Base64: CMakeFiles/Base64.dir/build.make
Base64: CMakeFiles/Base64.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhc/code/code/C99/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Base64"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Base64.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Base64.dir/build: Base64

.PHONY : CMakeFiles/Base64.dir/build

CMakeFiles/Base64.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Base64.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Base64.dir/clean

CMakeFiles/Base64.dir/depend:
	cd /home/zhc/code/code/C99/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhc/code/code/C99 /home/zhc/code/code/C99 /home/zhc/code/code/C99/cmake-build-debug /home/zhc/code/code/C99/cmake-build-debug /home/zhc/code/code/C99/cmake-build-debug/CMakeFiles/Base64.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Base64.dir/depend

