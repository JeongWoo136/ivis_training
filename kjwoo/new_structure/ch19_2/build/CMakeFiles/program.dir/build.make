# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/build

# Include any dependencies generated for this target.
include CMakeFiles/program.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/program.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/program.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/program.dir/flags.make

CMakeFiles/program.dir/main.cc.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/main.cc.o: /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/main.cc
CMakeFiles/program.dir/main.cc.o: CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/program.dir/main.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/program.dir/main.cc.o -MF CMakeFiles/program.dir/main.cc.o.d -o CMakeFiles/program.dir/main.cc.o -c /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/main.cc

CMakeFiles/program.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/program.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/main.cc > CMakeFiles/program.dir/main.cc.i

CMakeFiles/program.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/program.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/main.cc -o CMakeFiles/program.dir/main.cc.s

# Object files for target program
program_OBJECTS = \
"CMakeFiles/program.dir/main.cc.o"

# External object files for target program
program_EXTERNAL_OBJECTS =

program: CMakeFiles/program.dir/main.cc.o
program: CMakeFiles/program.dir/build.make
program: lib/libshape.a
program: CMakeFiles/program.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable program"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/program.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/program.dir/build: program
.PHONY : CMakeFiles/program.dir/build

CMakeFiles/program.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/program.dir/cmake_clean.cmake
.PHONY : CMakeFiles/program.dir/clean

CMakeFiles/program.dir/depend:
	cd /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2 /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2 /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/build /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/build /home/kjwoo9467/training/ivis_training/kjwoo/new_structure/ch19_2/build/CMakeFiles/program.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/program.dir/depend

