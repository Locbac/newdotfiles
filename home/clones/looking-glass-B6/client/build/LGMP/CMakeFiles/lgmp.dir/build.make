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
include LGMP/CMakeFiles/lgmp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include LGMP/CMakeFiles/lgmp.dir/compiler_depend.make

# Include the progress variables for this target.
include LGMP/CMakeFiles/lgmp.dir/progress.make

# Include the compile flags for this target's objects.
include LGMP/CMakeFiles/lgmp.dir/flags.make

LGMP/CMakeFiles/lgmp.dir/src/host.c.o: LGMP/CMakeFiles/lgmp.dir/flags.make
LGMP/CMakeFiles/lgmp.dir/src/host.c.o: /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/host.c
LGMP/CMakeFiles/lgmp.dir/src/host.c.o: LGMP/CMakeFiles/lgmp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object LGMP/CMakeFiles/lgmp.dir/src/host.c.o"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT LGMP/CMakeFiles/lgmp.dir/src/host.c.o -MF CMakeFiles/lgmp.dir/src/host.c.o.d -o CMakeFiles/lgmp.dir/src/host.c.o -c /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/host.c

LGMP/CMakeFiles/lgmp.dir/src/host.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lgmp.dir/src/host.c.i"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/host.c > CMakeFiles/lgmp.dir/src/host.c.i

LGMP/CMakeFiles/lgmp.dir/src/host.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lgmp.dir/src/host.c.s"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/host.c -o CMakeFiles/lgmp.dir/src/host.c.s

LGMP/CMakeFiles/lgmp.dir/src/client.c.o: LGMP/CMakeFiles/lgmp.dir/flags.make
LGMP/CMakeFiles/lgmp.dir/src/client.c.o: /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/client.c
LGMP/CMakeFiles/lgmp.dir/src/client.c.o: LGMP/CMakeFiles/lgmp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object LGMP/CMakeFiles/lgmp.dir/src/client.c.o"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT LGMP/CMakeFiles/lgmp.dir/src/client.c.o -MF CMakeFiles/lgmp.dir/src/client.c.o.d -o CMakeFiles/lgmp.dir/src/client.c.o -c /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/client.c

LGMP/CMakeFiles/lgmp.dir/src/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lgmp.dir/src/client.c.i"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/client.c > CMakeFiles/lgmp.dir/src/client.c.i

LGMP/CMakeFiles/lgmp.dir/src/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lgmp.dir/src/client.c.s"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/client.c -o CMakeFiles/lgmp.dir/src/client.c.s

LGMP/CMakeFiles/lgmp.dir/src/status.c.o: LGMP/CMakeFiles/lgmp.dir/flags.make
LGMP/CMakeFiles/lgmp.dir/src/status.c.o: /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/status.c
LGMP/CMakeFiles/lgmp.dir/src/status.c.o: LGMP/CMakeFiles/lgmp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object LGMP/CMakeFiles/lgmp.dir/src/status.c.o"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT LGMP/CMakeFiles/lgmp.dir/src/status.c.o -MF CMakeFiles/lgmp.dir/src/status.c.o.d -o CMakeFiles/lgmp.dir/src/status.c.o -c /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/status.c

LGMP/CMakeFiles/lgmp.dir/src/status.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lgmp.dir/src/status.c.i"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/status.c > CMakeFiles/lgmp.dir/src/status.c.i

LGMP/CMakeFiles/lgmp.dir/src/status.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lgmp.dir/src/status.c.s"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp/src/status.c -o CMakeFiles/lgmp.dir/src/status.c.s

# Object files for target lgmp
lgmp_OBJECTS = \
"CMakeFiles/lgmp.dir/src/host.c.o" \
"CMakeFiles/lgmp.dir/src/client.c.o" \
"CMakeFiles/lgmp.dir/src/status.c.o"

# External object files for target lgmp
lgmp_EXTERNAL_OBJECTS =

LGMP/liblgmp.a: LGMP/CMakeFiles/lgmp.dir/src/host.c.o
LGMP/liblgmp.a: LGMP/CMakeFiles/lgmp.dir/src/client.c.o
LGMP/liblgmp.a: LGMP/CMakeFiles/lgmp.dir/src/status.c.o
LGMP/liblgmp.a: LGMP/CMakeFiles/lgmp.dir/build.make
LGMP/liblgmp.a: LGMP/CMakeFiles/lgmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library liblgmp.a"
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && $(CMAKE_COMMAND) -P CMakeFiles/lgmp.dir/cmake_clean_target.cmake
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lgmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
LGMP/CMakeFiles/lgmp.dir/build: LGMP/liblgmp.a
.PHONY : LGMP/CMakeFiles/lgmp.dir/build

LGMP/CMakeFiles/lgmp.dir/clean:
	cd /home/amon/clones/looking-glass-B6/client/build/LGMP && $(CMAKE_COMMAND) -P CMakeFiles/lgmp.dir/cmake_clean.cmake
.PHONY : LGMP/CMakeFiles/lgmp.dir/clean

LGMP/CMakeFiles/lgmp.dir/depend:
	cd /home/amon/clones/looking-glass-B6/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amon/clones/looking-glass-B6/client /home/amon/clones/looking-glass-B6/repos/LGMP/lgmp /home/amon/clones/looking-glass-B6/client/build /home/amon/clones/looking-glass-B6/client/build/LGMP /home/amon/clones/looking-glass-B6/client/build/LGMP/CMakeFiles/lgmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : LGMP/CMakeFiles/lgmp.dir/depend

