# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.13

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\zhc\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\191.6183.77\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\zhc\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\191.6183.77\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\zhc\code\C99

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\zhc\code\C99\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/FileXor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FileXor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FileXor.dir/flags.make

CMakeFiles/FileXor.dir/u/FileXor.c.obj: CMakeFiles/FileXor.dir/flags.make
CMakeFiles/FileXor.dir/u/FileXor.c.obj: ../u/FileXor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\zhc\code\C99\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/FileXor.dir/u/FileXor.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\FileXor.dir\u\FileXor.c.obj   -c C:\zhc\code\C99\u\FileXor.c

CMakeFiles/FileXor.dir/u/FileXor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/FileXor.dir/u/FileXor.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\zhc\code\C99\u\FileXor.c > CMakeFiles\FileXor.dir\u\FileXor.c.i

CMakeFiles/FileXor.dir/u/FileXor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/FileXor.dir/u/FileXor.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\zhc\code\C99\u\FileXor.c -o CMakeFiles\FileXor.dir\u\FileXor.c.s

# Object files for target FileXor
FileXor_OBJECTS = \
"CMakeFiles/FileXor.dir/u/FileXor.c.obj"

# External object files for target FileXor
FileXor_EXTERNAL_OBJECTS =

FileXor.exe: CMakeFiles/FileXor.dir/u/FileXor.c.obj
FileXor.exe: CMakeFiles/FileXor.dir/build.make
FileXor.exe: CMakeFiles/FileXor.dir/linklibs.rsp
FileXor.exe: CMakeFiles/FileXor.dir/objects1.rsp
FileXor.exe: CMakeFiles/FileXor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\zhc\code\C99\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable FileXor.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FileXor.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FileXor.dir/build: FileXor.exe

.PHONY : CMakeFiles/FileXor.dir/build

CMakeFiles/FileXor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\FileXor.dir\cmake_clean.cmake
.PHONY : CMakeFiles/FileXor.dir/clean

CMakeFiles/FileXor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\zhc\code\C99 C:\zhc\code\C99 C:\zhc\code\C99\cmake-build-debug C:\zhc\code\C99\cmake-build-debug C:\zhc\code\C99\cmake-build-debug\CMakeFiles\FileXor.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FileXor.dir/depend

