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
include CMakeFiles/demo2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/demo2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo2.dir/flags.make

CMakeFiles/demo2.dir/demo2.c.obj: CMakeFiles/demo2.dir/flags.make
CMakeFiles/demo2.dir/demo2.c.obj: ../demo2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\zhc\code\C99\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/demo2.dir/demo2.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\demo2.dir\demo2.c.obj   -c C:\zhc\code\C99\demo2.c

CMakeFiles/demo2.dir/demo2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/demo2.dir/demo2.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\zhc\code\C99\demo2.c > CMakeFiles\demo2.dir\demo2.c.i

CMakeFiles/demo2.dir/demo2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/demo2.dir/demo2.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\zhc\code\C99\demo2.c -o CMakeFiles\demo2.dir\demo2.c.s

# Object files for target demo2
demo2_OBJECTS = \
"CMakeFiles/demo2.dir/demo2.c.obj"

# External object files for target demo2
demo2_EXTERNAL_OBJECTS =

demo2.exe: CMakeFiles/demo2.dir/demo2.c.obj
demo2.exe: CMakeFiles/demo2.dir/build.make
demo2.exe: CMakeFiles/demo2.dir/linklibs.rsp
demo2.exe: CMakeFiles/demo2.dir/objects1.rsp
demo2.exe: CMakeFiles/demo2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\zhc\code\C99\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable demo2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\demo2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/demo2.dir/build: demo2.exe

.PHONY : CMakeFiles/demo2.dir/build

CMakeFiles/demo2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\demo2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/demo2.dir/clean

CMakeFiles/demo2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\zhc\code\C99 C:\zhc\code\C99 C:\zhc\code\C99\cmake-build-debug C:\zhc\code\C99\cmake-build-debug C:\zhc\code\C99\cmake-build-debug\CMakeFiles\demo2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo2.dir/depend

