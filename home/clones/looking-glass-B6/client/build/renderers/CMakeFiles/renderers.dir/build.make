# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amon/clones/looking-glass-B6/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amon/clones/looking-glass-B6/client/build

# Include any dependencies generated for this target.
include renderers/CMakeFiles/renderers.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include renderers/CMakeFiles/renderers.dir/compiler_depend.make

# Include the progress variables for this target.
include renderers/CMakeFiles/renderers.dir/progress.make

# Include the compile flags for this target's objects.
include renderers/CMakeFiles/renderers.dir/flags.make

renderers/CMakeFiles/renderers.dir/__/src/renderers.c.o: renderers/CMakeFiles/renderers.dir/flags.make
renderers/CMakeFiles/renderers.dir/__/src/renderers.c.o: src/renderers.c
renderers/CMakeFiles/renderers.dir/__/src/renderers.c.o: renderers/CMakeFiles/renderers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object renderers/CMakeFiles/renderers.dir/__/src/renderers.c.o"
	cd /home/amon/clones/looking-glass-B6/client/build/renderers && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT renderers/CMakeFiles/renderers.dir/__/src/renderers.c.o -MF CMakeFiles/renderers.dir/__/src/renderers.c.o.d -o CMakeFiles/renderers.dir/__/src/renderers.c.o -c /home/amon/clones/looking-glass-B6/client/build/src/renderers.c

renderers/CMakeFiles/renderers.dir/__/src/renderers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/renderers.dir/__/src/renderers.c.i"
	cd /home/amon/clones/looking-glass-B6/client/build/renderers && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/clones/looking-glass-B6/client/build/src/renderers.c > CMakeFiles/renderers.dir/__/src/renderers.c.i

renderers/CMakeFiles/renderers.dir/__/src/renderers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/renderers.dir/__/src/renderers.c.s"
	cd /home/amon/clones/looking-glass-B6/client/build/renderers && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/clones/looking-glass-B6/client/build/src/renderers.c -o CMakeFiles/renderers.dir/__/src/renderers.c.s

# Object files for target renderers
renderers_OBJECTS = \
"CMakeFiles/renderers.dir/__/src/renderers.c.o"

# External object files for target renderers
renderers_EXTERNAL_OBJECTS =

renderers/librenderers.a: renderers/CMakeFiles/renderers.dir/__/src/renderers.c.o
renderers/librenderers.a: renderers/CMakeFiles/renderers.dir/build.make
renderers/librenderers.a: renderers/CMakeFiles/renderers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library librenderers.a"
	cd /home/amon/clones/looking-glass-B6/client/build/renderers && $(CMAKE_COMMAND) -P CMakeFiles/renderers.dir/cmake_clean_target.cmake
	cd /home/amon/clones/looking-glass-B6/client/build/renderers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/renderers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
renderers/CMakeFiles/renderers.dir/build: renderers/librenderers.a
.PHONY : renderers/CMakeFiles/renderers.dir/build

renderers/CMakeFiles/renderers.dir/clean:
	cd /home/amon/clones/looking-glass-B6/client/build/renderers && $(CMAKE_COMMAND) -P CMakeFiles/renderers.dir/cmake_clean.cmake
.PHONY : renderers/CMakeFiles/renderers.dir/clean

renderers/CMakeFiles/renderers.dir/depend:
	cd /home/amon/clones/looking-glass-B6/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amon/clones/looking-glass-B6/client /home/amon/clones/looking-glass-B6/client/renderers /home/amon/clones/looking-glass-B6/client/build /home/amon/clones/looking-glass-B6/client/build/renderers /home/amon/clones/looking-glass-B6/client/build/renderers/CMakeFiles/renderers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : renderers/CMakeFiles/renderers.dir/depend

