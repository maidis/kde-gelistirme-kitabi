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

# Utility rule file for tutorial1_automoc.

# Include the progress variables for this target.
include CMakeFiles/tutorial1_automoc.dir/progress.make

CMakeFiles/tutorial1_automoc:
	/usr/bin/automoc4 /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/tutorial1_automoc.cpp /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00 /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build /usr/lib64/qt4/bin/moc-qt4 /usr/bin/cmake

tutorial1_automoc: CMakeFiles/tutorial1_automoc
tutorial1_automoc: CMakeFiles/tutorial1_automoc.dir/build.make
.PHONY : tutorial1_automoc

# Rule to build all files generated by this target.
CMakeFiles/tutorial1_automoc.dir/build: tutorial1_automoc
.PHONY : CMakeFiles/tutorial1_automoc.dir/build

CMakeFiles/tutorial1_automoc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tutorial1_automoc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tutorial1_automoc.dir/clean

CMakeFiles/tutorial1_automoc.dir/depend:
	cd /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00 /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00 /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build /home/maidis/Gelistirme/c++/kde-gelistirme-kitabi/icerik/05/00/build/CMakeFiles/tutorial1_automoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tutorial1_automoc.dir/depend

