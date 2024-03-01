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
include audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/compiler_depend.make

# Include the progress variables for this target.
include audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/progress.make

# Include the compile flags for this target's objects.
include audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/flags.make

audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/pipewire.c.o: audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/flags.make
audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/pipewire.c.o: /home/amon/clones/looking-glass-B6/client/audiodevs/PipeWire/pipewire.c
audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/pipewire.c.o: audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/pipewire.c.o"
	cd /home/amon/clones/looking-glass-B6/client/build/audiodevs/PipeWire && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/pipewire.c.o -MF CMakeFiles/audiodev_PipeWire.dir/pipewire.c.o.d -o CMakeFiles/audiodev_PipeWire.dir/pipewire.c.o -c /home/amon/clones/looking-glass-B6/client/audiodevs/PipeWire/pipewire.c

audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/pipewire.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/audiodev_PipeWire.dir/pipewire.c.i"
	cd /home/amon/clones/looking-glass-B6/client/build/audiodevs/PipeWire && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/clones/looking-glass-B6/client/audiodevs/PipeWire/pipewire.c > CMakeFiles/audiodev_PipeWire.dir/pipewire.c.i

audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/pipewire.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/audiodev_PipeWire.dir/pipewire.c.s"
	cd /home/amon/clones/looking-glass-B6/client/build/audiodevs/PipeWire && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/clones/looking-glass-B6/client/audiodevs/PipeWire/pipewire.c -o CMakeFiles/audiodev_PipeWire.dir/pipewire.c.s

# Object files for target audiodev_PipeWire
audiodev_PipeWire_OBJECTS = \
"CMakeFiles/audiodev_PipeWire.dir/pipewire.c.o"

# External object files for target audiodev_PipeWire
audiodev_PipeWire_EXTERNAL_OBJECTS =

audiodevs/PipeWire/libaudiodev_PipeWire.a: audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/pipewire.c.o
audiodevs/PipeWire/libaudiodev_PipeWire.a: audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/build.make
audiodevs/PipeWire/libaudiodev_PipeWire.a: audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amon/clones/looking-glass-B6/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libaudiodev_PipeWire.a"
	cd /home/amon/clones/looking-glass-B6/client/build/audiodevs/PipeWire && $(CMAKE_COMMAND) -P CMakeFiles/audiodev_PipeWire.dir/cmake_clean_target.cmake
	cd /home/amon/clones/looking-glass-B6/client/build/audiodevs/PipeWire && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/audiodev_PipeWire.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/build: audiodevs/PipeWire/libaudiodev_PipeWire.a
.PHONY : audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/build

audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/clean:
	cd /home/amon/clones/looking-glass-B6/client/build/audiodevs/PipeWire && $(CMAKE_COMMAND) -P CMakeFiles/audiodev_PipeWire.dir/cmake_clean.cmake
.PHONY : audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/clean

audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/depend:
	cd /home/amon/clones/looking-glass-B6/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amon/clones/looking-glass-B6/client /home/amon/clones/looking-glass-B6/client/audiodevs/PipeWire /home/amon/clones/looking-glass-B6/client/build /home/amon/clones/looking-glass-B6/client/build/audiodevs/PipeWire /home/amon/clones/looking-glass-B6/client/build/audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : audiodevs/PipeWire/CMakeFiles/audiodev_PipeWire.dir/depend

