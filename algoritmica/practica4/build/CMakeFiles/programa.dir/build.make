# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/i12bapec/practicas/algoritmica/practica4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/i12bapec/practicas/algoritmica/practica4/build

# Include any dependencies generated for this target.
include CMakeFiles/programa.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/programa.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/programa.dir/flags.make

CMakeFiles/programa.dir/algoritmos.cpp.o: CMakeFiles/programa.dir/flags.make
CMakeFiles/programa.dir/algoritmos.cpp.o: ../algoritmos.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/i12bapec/practicas/algoritmica/practica4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/programa.dir/algoritmos.cpp.o"
	/usr/local/opt/gcc-5.3.0-32/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/programa.dir/algoritmos.cpp.o -c /home/i12bapec/practicas/algoritmica/practica4/algoritmos.cpp

CMakeFiles/programa.dir/algoritmos.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/programa.dir/algoritmos.cpp.i"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/i12bapec/practicas/algoritmica/practica4/algoritmos.cpp > CMakeFiles/programa.dir/algoritmos.cpp.i

CMakeFiles/programa.dir/algoritmos.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/programa.dir/algoritmos.cpp.s"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/i12bapec/practicas/algoritmica/practica4/algoritmos.cpp -o CMakeFiles/programa.dir/algoritmos.cpp.s

CMakeFiles/programa.dir/algoritmos.cpp.o.requires:

.PHONY : CMakeFiles/programa.dir/algoritmos.cpp.o.requires

CMakeFiles/programa.dir/algoritmos.cpp.o.provides: CMakeFiles/programa.dir/algoritmos.cpp.o.requires
	$(MAKE) -f CMakeFiles/programa.dir/build.make CMakeFiles/programa.dir/algoritmos.cpp.o.provides.build
.PHONY : CMakeFiles/programa.dir/algoritmos.cpp.o.provides

CMakeFiles/programa.dir/algoritmos.cpp.o.provides.build: CMakeFiles/programa.dir/algoritmos.cpp.o


CMakeFiles/programa.dir/auxiliares.cpp.o: CMakeFiles/programa.dir/flags.make
CMakeFiles/programa.dir/auxiliares.cpp.o: ../auxiliares.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/i12bapec/practicas/algoritmica/practica4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/programa.dir/auxiliares.cpp.o"
	/usr/local/opt/gcc-5.3.0-32/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/programa.dir/auxiliares.cpp.o -c /home/i12bapec/practicas/algoritmica/practica4/auxiliares.cpp

CMakeFiles/programa.dir/auxiliares.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/programa.dir/auxiliares.cpp.i"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/i12bapec/practicas/algoritmica/practica4/auxiliares.cpp > CMakeFiles/programa.dir/auxiliares.cpp.i

CMakeFiles/programa.dir/auxiliares.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/programa.dir/auxiliares.cpp.s"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/i12bapec/practicas/algoritmica/practica4/auxiliares.cpp -o CMakeFiles/programa.dir/auxiliares.cpp.s

CMakeFiles/programa.dir/auxiliares.cpp.o.requires:

.PHONY : CMakeFiles/programa.dir/auxiliares.cpp.o.requires

CMakeFiles/programa.dir/auxiliares.cpp.o.provides: CMakeFiles/programa.dir/auxiliares.cpp.o.requires
	$(MAKE) -f CMakeFiles/programa.dir/build.make CMakeFiles/programa.dir/auxiliares.cpp.o.provides.build
.PHONY : CMakeFiles/programa.dir/auxiliares.cpp.o.provides

CMakeFiles/programa.dir/auxiliares.cpp.o.provides.build: CMakeFiles/programa.dir/auxiliares.cpp.o


CMakeFiles/programa.dir/main.cpp.o: CMakeFiles/programa.dir/flags.make
CMakeFiles/programa.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/i12bapec/practicas/algoritmica/practica4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/programa.dir/main.cpp.o"
	/usr/local/opt/gcc-5.3.0-32/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/programa.dir/main.cpp.o -c /home/i12bapec/practicas/algoritmica/practica4/main.cpp

CMakeFiles/programa.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/programa.dir/main.cpp.i"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/i12bapec/practicas/algoritmica/practica4/main.cpp > CMakeFiles/programa.dir/main.cpp.i

CMakeFiles/programa.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/programa.dir/main.cpp.s"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/i12bapec/practicas/algoritmica/practica4/main.cpp -o CMakeFiles/programa.dir/main.cpp.s

CMakeFiles/programa.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/programa.dir/main.cpp.o.requires

CMakeFiles/programa.dir/main.cpp.o.provides: CMakeFiles/programa.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/programa.dir/build.make CMakeFiles/programa.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/programa.dir/main.cpp.o.provides

CMakeFiles/programa.dir/main.cpp.o.provides.build: CMakeFiles/programa.dir/main.cpp.o


CMakeFiles/programa.dir/mochila.cpp.o: CMakeFiles/programa.dir/flags.make
CMakeFiles/programa.dir/mochila.cpp.o: ../mochila.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/i12bapec/practicas/algoritmica/practica4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/programa.dir/mochila.cpp.o"
	/usr/local/opt/gcc-5.3.0-32/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/programa.dir/mochila.cpp.o -c /home/i12bapec/practicas/algoritmica/practica4/mochila.cpp

CMakeFiles/programa.dir/mochila.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/programa.dir/mochila.cpp.i"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/i12bapec/practicas/algoritmica/practica4/mochila.cpp > CMakeFiles/programa.dir/mochila.cpp.i

CMakeFiles/programa.dir/mochila.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/programa.dir/mochila.cpp.s"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/i12bapec/practicas/algoritmica/practica4/mochila.cpp -o CMakeFiles/programa.dir/mochila.cpp.s

CMakeFiles/programa.dir/mochila.cpp.o.requires:

.PHONY : CMakeFiles/programa.dir/mochila.cpp.o.requires

CMakeFiles/programa.dir/mochila.cpp.o.provides: CMakeFiles/programa.dir/mochila.cpp.o.requires
	$(MAKE) -f CMakeFiles/programa.dir/build.make CMakeFiles/programa.dir/mochila.cpp.o.provides.build
.PHONY : CMakeFiles/programa.dir/mochila.cpp.o.provides

CMakeFiles/programa.dir/mochila.cpp.o.provides.build: CMakeFiles/programa.dir/mochila.cpp.o


CMakeFiles/programa.dir/sistemaMonetario.cpp.o: CMakeFiles/programa.dir/flags.make
CMakeFiles/programa.dir/sistemaMonetario.cpp.o: ../sistemaMonetario.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/i12bapec/practicas/algoritmica/practica4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/programa.dir/sistemaMonetario.cpp.o"
	/usr/local/opt/gcc-5.3.0-32/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/programa.dir/sistemaMonetario.cpp.o -c /home/i12bapec/practicas/algoritmica/practica4/sistemaMonetario.cpp

CMakeFiles/programa.dir/sistemaMonetario.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/programa.dir/sistemaMonetario.cpp.i"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/i12bapec/practicas/algoritmica/practica4/sistemaMonetario.cpp > CMakeFiles/programa.dir/sistemaMonetario.cpp.i

CMakeFiles/programa.dir/sistemaMonetario.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/programa.dir/sistemaMonetario.cpp.s"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/i12bapec/practicas/algoritmica/practica4/sistemaMonetario.cpp -o CMakeFiles/programa.dir/sistemaMonetario.cpp.s

CMakeFiles/programa.dir/sistemaMonetario.cpp.o.requires:

.PHONY : CMakeFiles/programa.dir/sistemaMonetario.cpp.o.requires

CMakeFiles/programa.dir/sistemaMonetario.cpp.o.provides: CMakeFiles/programa.dir/sistemaMonetario.cpp.o.requires
	$(MAKE) -f CMakeFiles/programa.dir/build.make CMakeFiles/programa.dir/sistemaMonetario.cpp.o.provides.build
.PHONY : CMakeFiles/programa.dir/sistemaMonetario.cpp.o.provides

CMakeFiles/programa.dir/sistemaMonetario.cpp.o.provides.build: CMakeFiles/programa.dir/sistemaMonetario.cpp.o


# Object files for target programa
programa_OBJECTS = \
"CMakeFiles/programa.dir/algoritmos.cpp.o" \
"CMakeFiles/programa.dir/auxiliares.cpp.o" \
"CMakeFiles/programa.dir/main.cpp.o" \
"CMakeFiles/programa.dir/mochila.cpp.o" \
"CMakeFiles/programa.dir/sistemaMonetario.cpp.o"

# External object files for target programa
programa_EXTERNAL_OBJECTS =

programa: CMakeFiles/programa.dir/algoritmos.cpp.o
programa: CMakeFiles/programa.dir/auxiliares.cpp.o
programa: CMakeFiles/programa.dir/main.cpp.o
programa: CMakeFiles/programa.dir/mochila.cpp.o
programa: CMakeFiles/programa.dir/sistemaMonetario.cpp.o
programa: CMakeFiles/programa.dir/build.make
programa: CMakeFiles/programa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/i12bapec/practicas/algoritmica/practica4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable programa"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/programa.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/programa.dir/build: programa

.PHONY : CMakeFiles/programa.dir/build

CMakeFiles/programa.dir/requires: CMakeFiles/programa.dir/algoritmos.cpp.o.requires
CMakeFiles/programa.dir/requires: CMakeFiles/programa.dir/auxiliares.cpp.o.requires
CMakeFiles/programa.dir/requires: CMakeFiles/programa.dir/main.cpp.o.requires
CMakeFiles/programa.dir/requires: CMakeFiles/programa.dir/mochila.cpp.o.requires
CMakeFiles/programa.dir/requires: CMakeFiles/programa.dir/sistemaMonetario.cpp.o.requires

.PHONY : CMakeFiles/programa.dir/requires

CMakeFiles/programa.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/programa.dir/cmake_clean.cmake
.PHONY : CMakeFiles/programa.dir/clean

CMakeFiles/programa.dir/depend:
	cd /home/i12bapec/practicas/algoritmica/practica4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/i12bapec/practicas/algoritmica/practica4 /home/i12bapec/practicas/algoritmica/practica4 /home/i12bapec/practicas/algoritmica/practica4/build /home/i12bapec/practicas/algoritmica/practica4/build /home/i12bapec/practicas/algoritmica/practica4/build/CMakeFiles/programa.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/programa.dir/depend

