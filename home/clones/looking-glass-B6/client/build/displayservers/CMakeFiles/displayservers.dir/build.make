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
include displayservers/CMakeFiles/displayservers.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include displayservers/CMakeFiles/displayservers.dir/compiler_depend.make

# Include the progress variables for this target.
include displayservers/CMakeFiles/displayservers.dir/progress.make

# Include the compile flags for this target's objects.
include displayservers/CMakeFiles/displayservers.dir/flags.make

displayservers/CMakeFiles/displayservers.dir/__/src/displayservers.c.o: displayservers/CMakeFiles/displayservers.dir/flags.make
displayservers/CMakeFiles/displayservers.dir/__/src/displayservers.c.o: src/displayservers.c
displayservers/CMakeFiles/displayservers.dir/__/src/displayservers.c.o: displayservers/CMakeFiles/displayservers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object displayservers/CMakeFiles/displayservers.dir/__/src/displayservers.c.o"
	cd /home/amon/clones/looking-glass-B6/client/build/displayservers && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT displayservers/CMakeFiles/displayservers.dir/__/src/displayservers.c.o -MF CMakeFiles/displayservers.dir/__/src/displayservers.c.o.d -o CMakeFiles/displayservers.dir/__/src/displayservers.c.o -c /home/amon/clones/looking-glass-B6/client/build/src/displayservers.c

displayservers/CMakeFiles/displayservers.dir/__/src/displayservers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/displayservers.dir/__/src/displayservers.c.i"
	cd /home/amon/clones/looking-glass-B6/client/build/displayservers && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/clones/looking-glass-B6/client/build/src/displayservers.c > CMakeFiles/displayservers.dir/__/src/displayservers.c.i

displayservers/CMakeFiles/displayservers.dir/__/src/displayservers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/displayservers.dir/__/src/displayservers.c.s"
	cd /home/amon/clones/looking-glass-B6/client/build/displayservers && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/clones/looking-glass-B6/client/build/src/displayservers.c -o CMakeFiles/displayservers.dir/__/src/displayservers.c.s

# Object files for target displayservers
displayservers_OBJECTS = \
"CMakeFiles/displayservers.dir/__/src/displayservers.c.o"

# External object files for target displayservers
displayservers_EXTERNAL_OBJECTS =

displayservers/libdisplayservers.a: displayservers/CMakeFiles/displayservers.dir/__/src/displayservers.c.o
displayservers/libdisplayservers.a: displayservers/CMakeFiles/displayservers.dir/build.make
displayservers/libdisplayservers.a: displayservers/CMakeFiles/displayservers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libdisplayservers.a"
	cd /home/amon/clones/looking-glass-B6/client/build/displayservers && $(CMAKE_COMMAND) -P CMakeFiles/displayservers.dir/cmake_clean_target.cmake
	cd /home/amon/clones/looking-glass-B6/client/build/displayservers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/displayservers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
displayservers/CMakeFiles/displayservers.dir/build: displayservers/libdisplayservers.a
.PHONY : displayservers/CMakeFiles/displayservers.dir/build

displayservers/CMakeFiles/displayservers.dir/clean:
	cd /home/amon/clones/looking-glass-B6/client/build/displayservers && $(CMAKE_COMMAND) -P CMakeFiles/displayservers.dir/cmake_clean.cmake
.PHONY : displayservers/CMakeFiles/displayservers.dir/clean

displayservers/CMakeFiles/displayservers.dir/depend:
	cd /home/amon/clones/looking-glass-B6/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amon/clones/looking-glass-B6/client /home/amon/clones/looking-glass-B6/client/displayservers /home/amon/clones/looking-glass-B6/client/build /home/amon/clones/looking-glass-B6/client/build/displayservers /home/amon/clones/looking-glass-B6/client/build/displayservers/CMakeFiles/displayservers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : displayservers/CMakeFiles/displayservers.dir/depend

