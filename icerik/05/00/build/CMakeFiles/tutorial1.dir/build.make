# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build

# Include any dependencies generated for this target.
include CMakeFiles/tutorial1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tutorial1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tutorial1.dir/flags.make

CMakeFiles/tutorial1.dir/tutorial1_automoc.o: CMakeFiles/tutorial1.dir/flags.make
CMakeFiles/tutorial1.dir/tutorial1_automoc.o: tutorial1_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tutorial1.dir/tutorial1_automoc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial1.dir/tutorial1_automoc.o -c /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/tutorial1_automoc.cpp

CMakeFiles/tutorial1.dir/tutorial1_automoc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial1.dir/tutorial1_automoc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/tutorial1_automoc.cpp > CMakeFiles/tutorial1.dir/tutorial1_automoc.i

CMakeFiles/tutorial1.dir/tutorial1_automoc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial1.dir/tutorial1_automoc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/tutorial1_automoc.cpp -o CMakeFiles/tutorial1.dir/tutorial1_automoc.s

CMakeFiles/tutorial1.dir/tutorial1_automoc.o.requires:
.PHONY : CMakeFiles/tutorial1.dir/tutorial1_automoc.o.requires

CMakeFiles/tutorial1.dir/tutorial1_automoc.o.provides: CMakeFiles/tutorial1.dir/tutorial1_automoc.o.requires
	$(MAKE) -f CMakeFiles/tutorial1.dir/build.make CMakeFiles/tutorial1.dir/tutorial1_automoc.o.provides.build
.PHONY : CMakeFiles/tutorial1.dir/tutorial1_automoc.o.provides

CMakeFiles/tutorial1.dir/tutorial1_automoc.o.provides.build: CMakeFiles/tutorial1.dir/tutorial1_automoc.o

CMakeFiles/tutorial1.dir/main.o: CMakeFiles/tutorial1.dir/flags.make
CMakeFiles/tutorial1.dir/main.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tutorial1.dir/main.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial1.dir/main.o -c /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/main.cpp

CMakeFiles/tutorial1.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial1.dir/main.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/main.cpp > CMakeFiles/tutorial1.dir/main.i

CMakeFiles/tutorial1.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial1.dir/main.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/main.cpp -o CMakeFiles/tutorial1.dir/main.s

CMakeFiles/tutorial1.dir/main.o.requires:
.PHONY : CMakeFiles/tutorial1.dir/main.o.requires

CMakeFiles/tutorial1.dir/main.o.provides: CMakeFiles/tutorial1.dir/main.o.requires
	$(MAKE) -f CMakeFiles/tutorial1.dir/build.make CMakeFiles/tutorial1.dir/main.o.provides.build
.PHONY : CMakeFiles/tutorial1.dir/main.o.provides

CMakeFiles/tutorial1.dir/main.o.provides.build: CMakeFiles/tutorial1.dir/main.o

# Object files for target tutorial1
tutorial1_OBJECTS = \
"CMakeFiles/tutorial1.dir/tutorial1_automoc.o" \
"CMakeFiles/tutorial1.dir/main.o"

# External object files for target tutorial1
tutorial1_EXTERNAL_OBJECTS =

tutorial1: CMakeFiles/tutorial1.dir/tutorial1_automoc.o
tutorial1: CMakeFiles/tutorial1.dir/main.o
tutorial1: CMakeFiles/tutorial1.dir/build.make
tutorial1: /usr/lib64/libkdeui.so.5.10.2
tutorial1: /usr/lib64/libkdecore.so.5.10.2
tutorial1: /usr/lib64/libQtDBus.so
tutorial1: /usr/lib64/libQtCore.so
tutorial1: /usr/lib64/libQtGui.so
tutorial1: /usr/lib64/libQtSvg.so
tutorial1: CMakeFiles/tutorial1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable tutorial1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial1.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D_filename=/home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/tutorial1.shell -D_library_path_variable=LD_LIBRARY_PATH -D_ld_library_path="/home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/lib/./:/usr/local/lib64:/usr/lib64/kde4/devel:/usr/lib64" -D_executable=/home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/tutorial1 -P /usr/share/kde4/apps/cmake/modules/kde4_exec_via_sh.cmake

# Rule to build all files generated by this target.
CMakeFiles/tutorial1.dir/build: tutorial1
.PHONY : CMakeFiles/tutorial1.dir/build

CMakeFiles/tutorial1.dir/requires: CMakeFiles/tutorial1.dir/tutorial1_automoc.o.requires
CMakeFiles/tutorial1.dir/requires: CMakeFiles/tutorial1.dir/main.o.requires
.PHONY : CMakeFiles/tutorial1.dir/requires

CMakeFiles/tutorial1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tutorial1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tutorial1.dir/clean

CMakeFiles/tutorial1.dir/depend:
	cd /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00 /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00 /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/CMakeFiles/tutorial1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tutorial1.dir/depend

