# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilariryan/x86

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilariryan/x86/build

# Include any dependencies generated for this target.
include CMakeFiles/x86.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/x86.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/x86.dir/flags.make

CMakeFiles/x86.dir/hw/board.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/board.cpp.o: ../hw/board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/x86.dir/hw/board.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/board.cpp.o -c /home/ilariryan/x86/hw/board.cpp

CMakeFiles/x86.dir/hw/board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/board.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/board.cpp > CMakeFiles/x86.dir/hw/board.cpp.i

CMakeFiles/x86.dir/hw/board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/board.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/board.cpp -o CMakeFiles/x86.dir/hw/board.cpp.s

CMakeFiles/x86.dir/hw/bus.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/bus.cpp.o: ../hw/bus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/x86.dir/hw/bus.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/bus.cpp.o -c /home/ilariryan/x86/hw/bus.cpp

CMakeFiles/x86.dir/hw/bus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/bus.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/bus.cpp > CMakeFiles/x86.dir/hw/bus.cpp.i

CMakeFiles/x86.dir/hw/bus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/bus.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/bus.cpp -o CMakeFiles/x86.dir/hw/bus.cpp.s

CMakeFiles/x86.dir/hw/CMOS.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/CMOS.cpp.o: ../hw/CMOS.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/x86.dir/hw/CMOS.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/CMOS.cpp.o -c /home/ilariryan/x86/hw/CMOS.cpp

CMakeFiles/x86.dir/hw/CMOS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/CMOS.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/CMOS.cpp > CMakeFiles/x86.dir/hw/CMOS.cpp.i

CMakeFiles/x86.dir/hw/CMOS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/CMOS.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/CMOS.cpp -o CMakeFiles/x86.dir/hw/CMOS.cpp.s

CMakeFiles/x86.dir/hw/cpu.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/cpu.cpp.o: ../hw/cpu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/x86.dir/hw/cpu.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/cpu.cpp.o -c /home/ilariryan/x86/hw/cpu.cpp

CMakeFiles/x86.dir/hw/cpu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/cpu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/cpu.cpp > CMakeFiles/x86.dir/hw/cpu.cpp.i

CMakeFiles/x86.dir/hw/cpu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/cpu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/cpu.cpp -o CMakeFiles/x86.dir/hw/cpu.cpp.s

CMakeFiles/x86.dir/hw/DMA.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/DMA.cpp.o: ../hw/DMA.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/x86.dir/hw/DMA.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/DMA.cpp.o -c /home/ilariryan/x86/hw/DMA.cpp

CMakeFiles/x86.dir/hw/DMA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/DMA.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/DMA.cpp > CMakeFiles/x86.dir/hw/DMA.cpp.i

CMakeFiles/x86.dir/hw/DMA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/DMA.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/DMA.cpp -o CMakeFiles/x86.dir/hw/DMA.cpp.s

CMakeFiles/x86.dir/hw/pic.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/pic.cpp.o: ../hw/pic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/x86.dir/hw/pic.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/pic.cpp.o -c /home/ilariryan/x86/hw/pic.cpp

CMakeFiles/x86.dir/hw/pic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/pic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/pic.cpp > CMakeFiles/x86.dir/hw/pic.cpp.i

CMakeFiles/x86.dir/hw/pic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/pic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/pic.cpp -o CMakeFiles/x86.dir/hw/pic.cpp.s

CMakeFiles/x86.dir/hw/IOBus.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/IOBus.cpp.o: ../hw/IOBus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/x86.dir/hw/IOBus.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/IOBus.cpp.o -c /home/ilariryan/x86/hw/IOBus.cpp

CMakeFiles/x86.dir/hw/IOBus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/IOBus.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/IOBus.cpp > CMakeFiles/x86.dir/hw/IOBus.cpp.i

CMakeFiles/x86.dir/hw/IOBus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/IOBus.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/IOBus.cpp -o CMakeFiles/x86.dir/hw/IOBus.cpp.s

CMakeFiles/x86.dir/main.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/x86.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/main.cpp.o -c /home/ilariryan/x86/main.cpp

CMakeFiles/x86.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/main.cpp > CMakeFiles/x86.dir/main.cpp.i

CMakeFiles/x86.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/main.cpp -o CMakeFiles/x86.dir/main.cpp.s

CMakeFiles/x86.dir/modrm.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/modrm.cpp.o: ../modrm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/x86.dir/modrm.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/modrm.cpp.o -c /home/ilariryan/x86/modrm.cpp

CMakeFiles/x86.dir/modrm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/modrm.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/modrm.cpp > CMakeFiles/x86.dir/modrm.cpp.i

CMakeFiles/x86.dir/modrm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/modrm.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/modrm.cpp -o CMakeFiles/x86.dir/modrm.cpp.s

CMakeFiles/x86.dir/ops_0x0.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0x0.cpp.o: ../ops_0x0.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/x86.dir/ops_0x0.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0x0.cpp.o -c /home/ilariryan/x86/ops_0x0.cpp

CMakeFiles/x86.dir/ops_0x0.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0x0.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0x0.cpp > CMakeFiles/x86.dir/ops_0x0.cpp.i

CMakeFiles/x86.dir/ops_0x0.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0x0.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0x0.cpp -o CMakeFiles/x86.dir/ops_0x0.cpp.s

CMakeFiles/x86.dir/ops_0x1.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0x1.cpp.o: ../ops_0x1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/x86.dir/ops_0x1.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0x1.cpp.o -c /home/ilariryan/x86/ops_0x1.cpp

CMakeFiles/x86.dir/ops_0x1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0x1.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0x1.cpp > CMakeFiles/x86.dir/ops_0x1.cpp.i

CMakeFiles/x86.dir/ops_0x1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0x1.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0x1.cpp -o CMakeFiles/x86.dir/ops_0x1.cpp.s

CMakeFiles/x86.dir/ops_0x2.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0x2.cpp.o: ../ops_0x2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/x86.dir/ops_0x2.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0x2.cpp.o -c /home/ilariryan/x86/ops_0x2.cpp

CMakeFiles/x86.dir/ops_0x2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0x2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0x2.cpp > CMakeFiles/x86.dir/ops_0x2.cpp.i

CMakeFiles/x86.dir/ops_0x2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0x2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0x2.cpp -o CMakeFiles/x86.dir/ops_0x2.cpp.s

CMakeFiles/x86.dir/ops_0x3.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0x3.cpp.o: ../ops_0x3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/x86.dir/ops_0x3.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0x3.cpp.o -c /home/ilariryan/x86/ops_0x3.cpp

CMakeFiles/x86.dir/ops_0x3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0x3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0x3.cpp > CMakeFiles/x86.dir/ops_0x3.cpp.i

CMakeFiles/x86.dir/ops_0x3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0x3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0x3.cpp -o CMakeFiles/x86.dir/ops_0x3.cpp.s

CMakeFiles/x86.dir/ops_0x5.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0x5.cpp.o: ../ops_0x5.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/x86.dir/ops_0x5.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0x5.cpp.o -c /home/ilariryan/x86/ops_0x5.cpp

CMakeFiles/x86.dir/ops_0x5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0x5.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0x5.cpp > CMakeFiles/x86.dir/ops_0x5.cpp.i

CMakeFiles/x86.dir/ops_0x5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0x5.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0x5.cpp -o CMakeFiles/x86.dir/ops_0x5.cpp.s

CMakeFiles/x86.dir/ops_0x7.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0x7.cpp.o: ../ops_0x7.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/x86.dir/ops_0x7.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0x7.cpp.o -c /home/ilariryan/x86/ops_0x7.cpp

CMakeFiles/x86.dir/ops_0x7.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0x7.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0x7.cpp > CMakeFiles/x86.dir/ops_0x7.cpp.i

CMakeFiles/x86.dir/ops_0x7.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0x7.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0x7.cpp -o CMakeFiles/x86.dir/ops_0x7.cpp.s

CMakeFiles/x86.dir/ops_0x8.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0x8.cpp.o: ../ops_0x8.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/x86.dir/ops_0x8.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0x8.cpp.o -c /home/ilariryan/x86/ops_0x8.cpp

CMakeFiles/x86.dir/ops_0x8.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0x8.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0x8.cpp > CMakeFiles/x86.dir/ops_0x8.cpp.i

CMakeFiles/x86.dir/ops_0x8.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0x8.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0x8.cpp -o CMakeFiles/x86.dir/ops_0x8.cpp.s

CMakeFiles/x86.dir/ops_0x9.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0x9.cpp.o: ../ops_0x9.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/x86.dir/ops_0x9.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0x9.cpp.o -c /home/ilariryan/x86/ops_0x9.cpp

CMakeFiles/x86.dir/ops_0x9.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0x9.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0x9.cpp > CMakeFiles/x86.dir/ops_0x9.cpp.i

CMakeFiles/x86.dir/ops_0x9.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0x9.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0x9.cpp -o CMakeFiles/x86.dir/ops_0x9.cpp.s

CMakeFiles/x86.dir/ops_0xA.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0xA.cpp.o: ../ops_0xA.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/x86.dir/ops_0xA.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0xA.cpp.o -c /home/ilariryan/x86/ops_0xA.cpp

CMakeFiles/x86.dir/ops_0xA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0xA.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0xA.cpp > CMakeFiles/x86.dir/ops_0xA.cpp.i

CMakeFiles/x86.dir/ops_0xA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0xA.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0xA.cpp -o CMakeFiles/x86.dir/ops_0xA.cpp.s

CMakeFiles/x86.dir/ops_0xB.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0xB.cpp.o: ../ops_0xB.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/x86.dir/ops_0xB.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0xB.cpp.o -c /home/ilariryan/x86/ops_0xB.cpp

CMakeFiles/x86.dir/ops_0xB.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0xB.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0xB.cpp > CMakeFiles/x86.dir/ops_0xB.cpp.i

CMakeFiles/x86.dir/ops_0xB.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0xB.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0xB.cpp -o CMakeFiles/x86.dir/ops_0xB.cpp.s

CMakeFiles/x86.dir/ops_0xC.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0xC.cpp.o: ../ops_0xC.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object CMakeFiles/x86.dir/ops_0xC.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0xC.cpp.o -c /home/ilariryan/x86/ops_0xC.cpp

CMakeFiles/x86.dir/ops_0xC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0xC.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0xC.cpp > CMakeFiles/x86.dir/ops_0xC.cpp.i

CMakeFiles/x86.dir/ops_0xC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0xC.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0xC.cpp -o CMakeFiles/x86.dir/ops_0xC.cpp.s

CMakeFiles/x86.dir/ops_0xD.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0xD.cpp.o: ../ops_0xD.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building CXX object CMakeFiles/x86.dir/ops_0xD.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0xD.cpp.o -c /home/ilariryan/x86/ops_0xD.cpp

CMakeFiles/x86.dir/ops_0xD.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0xD.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0xD.cpp > CMakeFiles/x86.dir/ops_0xD.cpp.i

CMakeFiles/x86.dir/ops_0xD.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0xD.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0xD.cpp -o CMakeFiles/x86.dir/ops_0xD.cpp.s

CMakeFiles/x86.dir/ops_0xE.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0xE.cpp.o: ../ops_0xE.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building CXX object CMakeFiles/x86.dir/ops_0xE.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0xE.cpp.o -c /home/ilariryan/x86/ops_0xE.cpp

CMakeFiles/x86.dir/ops_0xE.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0xE.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0xE.cpp > CMakeFiles/x86.dir/ops_0xE.cpp.i

CMakeFiles/x86.dir/ops_0xE.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0xE.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0xE.cpp -o CMakeFiles/x86.dir/ops_0xE.cpp.s

CMakeFiles/x86.dir/ops_0xF.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_0xF.cpp.o: ../ops_0xF.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Building CXX object CMakeFiles/x86.dir/ops_0xF.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_0xF.cpp.o -c /home/ilariryan/x86/ops_0xF.cpp

CMakeFiles/x86.dir/ops_0xF.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_0xF.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_0xF.cpp > CMakeFiles/x86.dir/ops_0xF.cpp.i

CMakeFiles/x86.dir/ops_0xF.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_0xF.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_0xF.cpp -o CMakeFiles/x86.dir/ops_0xF.cpp.s

CMakeFiles/x86.dir/ops_f8.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/ops_f8.cpp.o: ../ops_f8.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Building CXX object CMakeFiles/x86.dir/ops_f8.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/ops_f8.cpp.o -c /home/ilariryan/x86/ops_f8.cpp

CMakeFiles/x86.dir/ops_f8.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/ops_f8.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/ops_f8.cpp > CMakeFiles/x86.dir/ops_f8.cpp.i

CMakeFiles/x86.dir/ops_f8.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/ops_f8.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/ops_f8.cpp -o CMakeFiles/x86.dir/ops_f8.cpp.s

CMakeFiles/x86.dir/hw/ram.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/ram.cpp.o: ../hw/ram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_25) "Building CXX object CMakeFiles/x86.dir/hw/ram.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/ram.cpp.o -c /home/ilariryan/x86/hw/ram.cpp

CMakeFiles/x86.dir/hw/ram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/ram.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/ram.cpp > CMakeFiles/x86.dir/hw/ram.cpp.i

CMakeFiles/x86.dir/hw/ram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/ram.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/ram.cpp -o CMakeFiles/x86.dir/hw/ram.cpp.s

CMakeFiles/x86.dir/hw/rom.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/rom.cpp.o: ../hw/rom.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_26) "Building CXX object CMakeFiles/x86.dir/hw/rom.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/rom.cpp.o -c /home/ilariryan/x86/hw/rom.cpp

CMakeFiles/x86.dir/hw/rom.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/rom.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/rom.cpp > CMakeFiles/x86.dir/hw/rom.cpp.i

CMakeFiles/x86.dir/hw/rom.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/rom.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/rom.cpp -o CMakeFiles/x86.dir/hw/rom.cpp.s

CMakeFiles/x86.dir/hw/display.cpp.o: CMakeFiles/x86.dir/flags.make
CMakeFiles/x86.dir/hw/display.cpp.o: ../hw/display.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_27) "Building CXX object CMakeFiles/x86.dir/hw/display.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/x86.dir/hw/display.cpp.o -c /home/ilariryan/x86/hw/display.cpp

CMakeFiles/x86.dir/hw/display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/x86.dir/hw/display.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilariryan/x86/hw/display.cpp > CMakeFiles/x86.dir/hw/display.cpp.i

CMakeFiles/x86.dir/hw/display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/x86.dir/hw/display.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilariryan/x86/hw/display.cpp -o CMakeFiles/x86.dir/hw/display.cpp.s

# Object files for target x86
x86_OBJECTS = \
"CMakeFiles/x86.dir/hw/board.cpp.o" \
"CMakeFiles/x86.dir/hw/bus.cpp.o" \
"CMakeFiles/x86.dir/hw/CMOS.cpp.o" \
"CMakeFiles/x86.dir/hw/cpu.cpp.o" \
"CMakeFiles/x86.dir/hw/DMA.cpp.o" \
"CMakeFiles/x86.dir/hw/pic.cpp.o" \
"CMakeFiles/x86.dir/hw/IOBus.cpp.o" \
"CMakeFiles/x86.dir/main.cpp.o" \
"CMakeFiles/x86.dir/modrm.cpp.o" \
"CMakeFiles/x86.dir/ops_0x0.cpp.o" \
"CMakeFiles/x86.dir/ops_0x1.cpp.o" \
"CMakeFiles/x86.dir/ops_0x2.cpp.o" \
"CMakeFiles/x86.dir/ops_0x3.cpp.o" \
"CMakeFiles/x86.dir/ops_0x5.cpp.o" \
"CMakeFiles/x86.dir/ops_0x7.cpp.o" \
"CMakeFiles/x86.dir/ops_0x8.cpp.o" \
"CMakeFiles/x86.dir/ops_0x9.cpp.o" \
"CMakeFiles/x86.dir/ops_0xA.cpp.o" \
"CMakeFiles/x86.dir/ops_0xB.cpp.o" \
"CMakeFiles/x86.dir/ops_0xC.cpp.o" \
"CMakeFiles/x86.dir/ops_0xD.cpp.o" \
"CMakeFiles/x86.dir/ops_0xE.cpp.o" \
"CMakeFiles/x86.dir/ops_0xF.cpp.o" \
"CMakeFiles/x86.dir/ops_f8.cpp.o" \
"CMakeFiles/x86.dir/hw/ram.cpp.o" \
"CMakeFiles/x86.dir/hw/rom.cpp.o" \
"CMakeFiles/x86.dir/hw/display.cpp.o"

# External object files for target x86
x86_EXTERNAL_OBJECTS =

x86: CMakeFiles/x86.dir/hw/board.cpp.o
x86: CMakeFiles/x86.dir/hw/bus.cpp.o
x86: CMakeFiles/x86.dir/hw/CMOS.cpp.o
x86: CMakeFiles/x86.dir/hw/cpu.cpp.o
x86: CMakeFiles/x86.dir/hw/DMA.cpp.o
x86: CMakeFiles/x86.dir/hw/pic.cpp.o
x86: CMakeFiles/x86.dir/hw/IOBus.cpp.o
x86: CMakeFiles/x86.dir/main.cpp.o
x86: CMakeFiles/x86.dir/modrm.cpp.o
x86: CMakeFiles/x86.dir/ops_0x0.cpp.o
x86: CMakeFiles/x86.dir/ops_0x1.cpp.o
x86: CMakeFiles/x86.dir/ops_0x2.cpp.o
x86: CMakeFiles/x86.dir/ops_0x3.cpp.o
x86: CMakeFiles/x86.dir/ops_0x5.cpp.o
x86: CMakeFiles/x86.dir/ops_0x7.cpp.o
x86: CMakeFiles/x86.dir/ops_0x8.cpp.o
x86: CMakeFiles/x86.dir/ops_0x9.cpp.o
x86: CMakeFiles/x86.dir/ops_0xA.cpp.o
x86: CMakeFiles/x86.dir/ops_0xB.cpp.o
x86: CMakeFiles/x86.dir/ops_0xC.cpp.o
x86: CMakeFiles/x86.dir/ops_0xD.cpp.o
x86: CMakeFiles/x86.dir/ops_0xE.cpp.o
x86: CMakeFiles/x86.dir/ops_0xF.cpp.o
x86: CMakeFiles/x86.dir/ops_f8.cpp.o
x86: CMakeFiles/x86.dir/hw/ram.cpp.o
x86: CMakeFiles/x86.dir/hw/rom.cpp.o
x86: CMakeFiles/x86.dir/hw/display.cpp.o
x86: CMakeFiles/x86.dir/build.make
x86: /usr/lib/x86_64-linux-gnu/libSDLmain.a
x86: /usr/lib/x86_64-linux-gnu/libSDL.so
x86: CMakeFiles/x86.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilariryan/x86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_28) "Linking CXX executable x86"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/x86.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/x86.dir/build: x86

.PHONY : CMakeFiles/x86.dir/build

CMakeFiles/x86.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/x86.dir/cmake_clean.cmake
.PHONY : CMakeFiles/x86.dir/clean

CMakeFiles/x86.dir/depend:
	cd /home/ilariryan/x86/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilariryan/x86 /home/ilariryan/x86 /home/ilariryan/x86/build /home/ilariryan/x86/build /home/ilariryan/x86/build/CMakeFiles/x86.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/x86.dir/depend

