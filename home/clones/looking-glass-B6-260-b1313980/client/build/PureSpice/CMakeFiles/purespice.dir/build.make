# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/amon/Downloads/looking-glass-B6-260-b1313980/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build

# Include any dependencies generated for this target.
include PureSpice/CMakeFiles/purespice.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include PureSpice/CMakeFiles/purespice.dir/compiler_depend.make

# Include the progress variables for this target.
include PureSpice/CMakeFiles/purespice.dir/progress.make

# Include the compile flags for this target's objects.
include PureSpice/CMakeFiles/purespice.dir/flags.make

PureSpice/CMakeFiles/purespice.dir/src/ps.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/ps.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/ps.c
PureSpice/CMakeFiles/purespice.dir/src/ps.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object PureSpice/CMakeFiles/purespice.dir/src/ps.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/ps.c.o -MF CMakeFiles/purespice.dir/src/ps.c.o.d -o CMakeFiles/purespice.dir/src/ps.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/ps.c

PureSpice/CMakeFiles/purespice.dir/src/ps.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/ps.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/ps.c > CMakeFiles/purespice.dir/src/ps.c.i

PureSpice/CMakeFiles/purespice.dir/src/ps.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/ps.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/ps.c -o CMakeFiles/purespice.dir/src/ps.c.s

PureSpice/CMakeFiles/purespice.dir/src/log.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/log.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/log.c
PureSpice/CMakeFiles/purespice.dir/src/log.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object PureSpice/CMakeFiles/purespice.dir/src/log.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/log.c.o -MF CMakeFiles/purespice.dir/src/log.c.o.d -o CMakeFiles/purespice.dir/src/log.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/log.c

PureSpice/CMakeFiles/purespice.dir/src/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/log.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/log.c > CMakeFiles/purespice.dir/src/log.c.i

PureSpice/CMakeFiles/purespice.dir/src/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/log.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/log.c -o CMakeFiles/purespice.dir/src/log.c.s

PureSpice/CMakeFiles/purespice.dir/src/rsa.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/rsa.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/rsa.c
PureSpice/CMakeFiles/purespice.dir/src/rsa.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object PureSpice/CMakeFiles/purespice.dir/src/rsa.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/rsa.c.o -MF CMakeFiles/purespice.dir/src/rsa.c.o.d -o CMakeFiles/purespice.dir/src/rsa.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/rsa.c

PureSpice/CMakeFiles/purespice.dir/src/rsa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/rsa.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/rsa.c > CMakeFiles/purespice.dir/src/rsa.c.i

PureSpice/CMakeFiles/purespice.dir/src/rsa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/rsa.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/rsa.c -o CMakeFiles/purespice.dir/src/rsa.c.s

PureSpice/CMakeFiles/purespice.dir/src/queue.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/queue.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/queue.c
PureSpice/CMakeFiles/purespice.dir/src/queue.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object PureSpice/CMakeFiles/purespice.dir/src/queue.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/queue.c.o -MF CMakeFiles/purespice.dir/src/queue.c.o.d -o CMakeFiles/purespice.dir/src/queue.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/queue.c

PureSpice/CMakeFiles/purespice.dir/src/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/queue.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/queue.c > CMakeFiles/purespice.dir/src/queue.c.i

PureSpice/CMakeFiles/purespice.dir/src/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/queue.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/queue.c -o CMakeFiles/purespice.dir/src/queue.c.s

PureSpice/CMakeFiles/purespice.dir/src/channel.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/channel.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel.c
PureSpice/CMakeFiles/purespice.dir/src/channel.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object PureSpice/CMakeFiles/purespice.dir/src/channel.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/channel.c.o -MF CMakeFiles/purespice.dir/src/channel.c.o.d -o CMakeFiles/purespice.dir/src/channel.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel.c

PureSpice/CMakeFiles/purespice.dir/src/channel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/channel.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel.c > CMakeFiles/purespice.dir/src/channel.c.i

PureSpice/CMakeFiles/purespice.dir/src/channel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/channel.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel.c -o CMakeFiles/purespice.dir/src/channel.c.s

PureSpice/CMakeFiles/purespice.dir/src/channel_main.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/channel_main.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_main.c
PureSpice/CMakeFiles/purespice.dir/src/channel_main.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object PureSpice/CMakeFiles/purespice.dir/src/channel_main.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/channel_main.c.o -MF CMakeFiles/purespice.dir/src/channel_main.c.o.d -o CMakeFiles/purespice.dir/src/channel_main.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_main.c

PureSpice/CMakeFiles/purespice.dir/src/channel_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/channel_main.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_main.c > CMakeFiles/purespice.dir/src/channel_main.c.i

PureSpice/CMakeFiles/purespice.dir/src/channel_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/channel_main.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_main.c -o CMakeFiles/purespice.dir/src/channel_main.c.s

PureSpice/CMakeFiles/purespice.dir/src/channel_inputs.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/channel_inputs.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_inputs.c
PureSpice/CMakeFiles/purespice.dir/src/channel_inputs.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object PureSpice/CMakeFiles/purespice.dir/src/channel_inputs.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/channel_inputs.c.o -MF CMakeFiles/purespice.dir/src/channel_inputs.c.o.d -o CMakeFiles/purespice.dir/src/channel_inputs.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_inputs.c

PureSpice/CMakeFiles/purespice.dir/src/channel_inputs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/channel_inputs.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_inputs.c > CMakeFiles/purespice.dir/src/channel_inputs.c.i

PureSpice/CMakeFiles/purespice.dir/src/channel_inputs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/channel_inputs.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_inputs.c -o CMakeFiles/purespice.dir/src/channel_inputs.c.s

PureSpice/CMakeFiles/purespice.dir/src/channel_playback.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/channel_playback.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_playback.c
PureSpice/CMakeFiles/purespice.dir/src/channel_playback.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object PureSpice/CMakeFiles/purespice.dir/src/channel_playback.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/channel_playback.c.o -MF CMakeFiles/purespice.dir/src/channel_playback.c.o.d -o CMakeFiles/purespice.dir/src/channel_playback.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_playback.c

PureSpice/CMakeFiles/purespice.dir/src/channel_playback.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/channel_playback.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_playback.c > CMakeFiles/purespice.dir/src/channel_playback.c.i

PureSpice/CMakeFiles/purespice.dir/src/channel_playback.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/channel_playback.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_playback.c -o CMakeFiles/purespice.dir/src/channel_playback.c.s

PureSpice/CMakeFiles/purespice.dir/src/channel_record.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/channel_record.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_record.c
PureSpice/CMakeFiles/purespice.dir/src/channel_record.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object PureSpice/CMakeFiles/purespice.dir/src/channel_record.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/channel_record.c.o -MF CMakeFiles/purespice.dir/src/channel_record.c.o.d -o CMakeFiles/purespice.dir/src/channel_record.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_record.c

PureSpice/CMakeFiles/purespice.dir/src/channel_record.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/channel_record.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_record.c > CMakeFiles/purespice.dir/src/channel_record.c.i

PureSpice/CMakeFiles/purespice.dir/src/channel_record.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/channel_record.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_record.c -o CMakeFiles/purespice.dir/src/channel_record.c.s

PureSpice/CMakeFiles/purespice.dir/src/channel_display.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/channel_display.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_display.c
PureSpice/CMakeFiles/purespice.dir/src/channel_display.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object PureSpice/CMakeFiles/purespice.dir/src/channel_display.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/channel_display.c.o -MF CMakeFiles/purespice.dir/src/channel_display.c.o.d -o CMakeFiles/purespice.dir/src/channel_display.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_display.c

PureSpice/CMakeFiles/purespice.dir/src/channel_display.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/channel_display.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_display.c > CMakeFiles/purespice.dir/src/channel_display.c.i

PureSpice/CMakeFiles/purespice.dir/src/channel_display.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/channel_display.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_display.c -o CMakeFiles/purespice.dir/src/channel_display.c.s

PureSpice/CMakeFiles/purespice.dir/src/channel_cursor.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/channel_cursor.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_cursor.c
PureSpice/CMakeFiles/purespice.dir/src/channel_cursor.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object PureSpice/CMakeFiles/purespice.dir/src/channel_cursor.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/channel_cursor.c.o -MF CMakeFiles/purespice.dir/src/channel_cursor.c.o.d -o CMakeFiles/purespice.dir/src/channel_cursor.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_cursor.c

PureSpice/CMakeFiles/purespice.dir/src/channel_cursor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/channel_cursor.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_cursor.c > CMakeFiles/purespice.dir/src/channel_cursor.c.i

PureSpice/CMakeFiles/purespice.dir/src/channel_cursor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/channel_cursor.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/channel_cursor.c -o CMakeFiles/purespice.dir/src/channel_cursor.c.s

PureSpice/CMakeFiles/purespice.dir/src/agent.c.o: PureSpice/CMakeFiles/purespice.dir/flags.make
PureSpice/CMakeFiles/purespice.dir/src/agent.c.o: /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/agent.c
PureSpice/CMakeFiles/purespice.dir/src/agent.c.o: PureSpice/CMakeFiles/purespice.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object PureSpice/CMakeFiles/purespice.dir/src/agent.c.o"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT PureSpice/CMakeFiles/purespice.dir/src/agent.c.o -MF CMakeFiles/purespice.dir/src/agent.c.o.d -o CMakeFiles/purespice.dir/src/agent.c.o -c /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/agent.c

PureSpice/CMakeFiles/purespice.dir/src/agent.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/purespice.dir/src/agent.c.i"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/agent.c > CMakeFiles/purespice.dir/src/agent.c.i

PureSpice/CMakeFiles/purespice.dir/src/agent.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/purespice.dir/src/agent.c.s"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice/src/agent.c -o CMakeFiles/purespice.dir/src/agent.c.s

# Object files for target purespice
purespice_OBJECTS = \
"CMakeFiles/purespice.dir/src/ps.c.o" \
"CMakeFiles/purespice.dir/src/log.c.o" \
"CMakeFiles/purespice.dir/src/rsa.c.o" \
"CMakeFiles/purespice.dir/src/queue.c.o" \
"CMakeFiles/purespice.dir/src/channel.c.o" \
"CMakeFiles/purespice.dir/src/channel_main.c.o" \
"CMakeFiles/purespice.dir/src/channel_inputs.c.o" \
"CMakeFiles/purespice.dir/src/channel_playback.c.o" \
"CMakeFiles/purespice.dir/src/channel_record.c.o" \
"CMakeFiles/purespice.dir/src/channel_display.c.o" \
"CMakeFiles/purespice.dir/src/channel_cursor.c.o" \
"CMakeFiles/purespice.dir/src/agent.c.o"

# External object files for target purespice
purespice_EXTERNAL_OBJECTS =

PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/ps.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/log.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/rsa.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/queue.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/channel.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/channel_main.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/channel_inputs.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/channel_playback.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/channel_record.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/channel_display.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/channel_cursor.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/src/agent.c.o
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/build.make
PureSpice/libpurespice.a: PureSpice/CMakeFiles/purespice.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking C static library libpurespice.a"
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && $(CMAKE_COMMAND) -P CMakeFiles/purespice.dir/cmake_clean_target.cmake
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/purespice.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
PureSpice/CMakeFiles/purespice.dir/build: PureSpice/libpurespice.a
.PHONY : PureSpice/CMakeFiles/purespice.dir/build

PureSpice/CMakeFiles/purespice.dir/clean:
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice && $(CMAKE_COMMAND) -P CMakeFiles/purespice.dir/cmake_clean.cmake
.PHONY : PureSpice/CMakeFiles/purespice.dir/clean

PureSpice/CMakeFiles/purespice.dir/depend:
	cd /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amon/Downloads/looking-glass-B6-260-b1313980/client /home/amon/Downloads/looking-glass-B6-260-b1313980/repos/PureSpice /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice /home/amon/Downloads/looking-glass-B6-260-b1313980/client/build/PureSpice/CMakeFiles/purespice.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : PureSpice/CMakeFiles/purespice.dir/depend

