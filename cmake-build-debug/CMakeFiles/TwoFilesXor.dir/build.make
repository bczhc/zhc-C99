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
include CMakeFiles/TwoFilesXor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TwoFilesXor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TwoFilesXor.dir/flags.make

CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.o: CMakeFiles/TwoFilesXor.dir/flags.make
CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.o: ../TwoFilesXor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhc/code/code/C99/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.o   -c /home/zhc/code/code/C99/TwoFilesXor.c

CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhc/code/code/C99/TwoFilesXor.c > CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.i

CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhc/code/code/C99/TwoFilesXor.c -o CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.s

# Object files for target TwoFilesXor
TwoFilesXor_OBJECTS = \
"CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.o"

# External object files for target TwoFilesXor
TwoFilesXor_EXTERNAL_OBJECTS =

TwoFilesXor: CMakeFiles/TwoFilesXor.dir/TwoFilesXor.c.o
TwoFilesXor: CMakeFiles/TwoFilesXor.dir/build.make
TwoFilesXor: CMakeFiles/TwoFilesXor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhc/code/code/C99/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable TwoFilesXor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TwoFilesXor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TwoFilesXor.dir/build: TwoFilesXor

.PHONY : CMakeFiles/TwoFilesXor.dir/build

CMakeFiles/TwoFilesXor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TwoFilesXor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TwoFilesXor.dir/clean

CMakeFiles/TwoFilesXor.dir/depend:
	cd /home/zhc/code/code/C99/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhc/code/code/C99 /home/zhc/code/code/C99 /home/zhc/code/code/C99/cmake-build-debug /home/zhc/code/code/C99/cmake-build-debug /home/zhc/code/code/C99/cmake-build-debug/CMakeFiles/TwoFilesXor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TwoFilesXor.dir/depend

