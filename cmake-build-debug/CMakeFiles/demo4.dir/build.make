# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/zhc/bin/clion-2019.3.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/zhc/bin/clion-2019.3.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhc/code/code/C99

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhc/code/code/C99/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/demo4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/demo4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo4.dir/flags.make

CMakeFiles/demo4.dir/demo4.c.o: CMakeFiles/demo4.dir/flags.make
CMakeFiles/demo4.dir/demo4.c.o: ../demo4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhc/code/code/C99/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/demo4.dir/demo4.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/demo4.dir/demo4.c.o   -c /home/zhc/code/code/C99/demo4.c

CMakeFiles/demo4.dir/demo4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/demo4.dir/demo4.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhc/code/code/C99/demo4.c > CMakeFiles/demo4.dir/demo4.c.i

CMakeFiles/demo4.dir/demo4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/demo4.dir/demo4.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhc/code/code/C99/demo4.c -o CMakeFiles/demo4.dir/demo4.c.s

# Object files for target demo4
demo4_OBJECTS = \
"CMakeFiles/demo4.dir/demo4.c.o"

# External object files for target demo4
demo4_EXTERNAL_OBJECTS =

demo4: CMakeFiles/demo4.dir/demo4.c.o
demo4: CMakeFiles/demo4.dir/build.make
demo4: CMakeFiles/demo4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhc/code/code/C99/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable demo4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/demo4.dir/build: demo4

.PHONY : CMakeFiles/demo4.dir/build

CMakeFiles/demo4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/demo4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/demo4.dir/clean

CMakeFiles/demo4.dir/depend:
	cd /home/zhc/code/code/C99/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhc/code/code/C99 /home/zhc/code/code/C99 /home/zhc/code/code/C99/cmake-build-debug /home/zhc/code/code/C99/cmake-build-debug /home/zhc/code/code/C99/cmake-build-debug/CMakeFiles/demo4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo4.dir/depend

