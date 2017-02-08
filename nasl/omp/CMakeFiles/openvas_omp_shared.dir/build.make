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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl

# Include any dependencies generated for this target.
include omp/CMakeFiles/openvas_omp_shared.dir/depend.make

# Include the progress variables for this target.
include omp/CMakeFiles/openvas_omp_shared.dir/progress.make

# Include the compile flags for this target's objects.
include omp/CMakeFiles/openvas_omp_shared.dir/flags.make

omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o: omp/CMakeFiles/openvas_omp_shared.dir/flags.make
omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o: ../omp/xml.c
	$(CMAKE_COMMAND) -E cmake_progress_report /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o"
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/openvas_omp_shared.dir/xml.c.o   -c /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/omp/xml.c

omp/CMakeFiles/openvas_omp_shared.dir/xml.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/openvas_omp_shared.dir/xml.c.i"
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/omp/xml.c > CMakeFiles/openvas_omp_shared.dir/xml.c.i

omp/CMakeFiles/openvas_omp_shared.dir/xml.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/openvas_omp_shared.dir/xml.c.s"
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/omp/xml.c -o CMakeFiles/openvas_omp_shared.dir/xml.c.s

omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o.requires:
.PHONY : omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o.requires

omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o.provides: omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o.requires
	$(MAKE) -f omp/CMakeFiles/openvas_omp_shared.dir/build.make omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o.provides.build
.PHONY : omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o.provides

omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o.provides.build: omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o

omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o: omp/CMakeFiles/openvas_omp_shared.dir/flags.make
omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o: ../omp/omp.c
	$(CMAKE_COMMAND) -E cmake_progress_report /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o"
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/openvas_omp_shared.dir/omp.c.o   -c /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/omp/omp.c

omp/CMakeFiles/openvas_omp_shared.dir/omp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/openvas_omp_shared.dir/omp.c.i"
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/omp/omp.c > CMakeFiles/openvas_omp_shared.dir/omp.c.i

omp/CMakeFiles/openvas_omp_shared.dir/omp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/openvas_omp_shared.dir/omp.c.s"
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/omp/omp.c -o CMakeFiles/openvas_omp_shared.dir/omp.c.s

omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o.requires:
.PHONY : omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o.requires

omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o.provides: omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o.requires
	$(MAKE) -f omp/CMakeFiles/openvas_omp_shared.dir/build.make omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o.provides.build
.PHONY : omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o.provides

omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o.provides.build: omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o

# Object files for target openvas_omp_shared
openvas_omp_shared_OBJECTS = \
"CMakeFiles/openvas_omp_shared.dir/xml.c.o" \
"CMakeFiles/openvas_omp_shared.dir/omp.c.o"

# External object files for target openvas_omp_shared
openvas_omp_shared_EXTERNAL_OBJECTS =

omp/libopenvas_omp.so.8.0.7: omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o
omp/libopenvas_omp.so.8.0.7: omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o
omp/libopenvas_omp.so.8.0.7: omp/CMakeFiles/openvas_omp_shared.dir/build.make
omp/libopenvas_omp.so.8.0.7: omp/CMakeFiles/openvas_omp_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libopenvas_omp.so"
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openvas_omp_shared.dir/link.txt --verbose=$(VERBOSE)
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp && $(CMAKE_COMMAND) -E cmake_symlink_library libopenvas_omp.so.8.0.7 libopenvas_omp.so.8 libopenvas_omp.so

omp/libopenvas_omp.so.8: omp/libopenvas_omp.so.8.0.7

omp/libopenvas_omp.so: omp/libopenvas_omp.so.8.0.7

# Rule to build all files generated by this target.
omp/CMakeFiles/openvas_omp_shared.dir/build: omp/libopenvas_omp.so
.PHONY : omp/CMakeFiles/openvas_omp_shared.dir/build

omp/CMakeFiles/openvas_omp_shared.dir/requires: omp/CMakeFiles/openvas_omp_shared.dir/xml.c.o.requires
omp/CMakeFiles/openvas_omp_shared.dir/requires: omp/CMakeFiles/openvas_omp_shared.dir/omp.c.o.requires
.PHONY : omp/CMakeFiles/openvas_omp_shared.dir/requires

omp/CMakeFiles/openvas_omp_shared.dir/clean:
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp && $(CMAKE_COMMAND) -P CMakeFiles/openvas_omp_shared.dir/cmake_clean.cmake
.PHONY : omp/CMakeFiles/openvas_omp_shared.dir/clean

omp/CMakeFiles/openvas_omp_shared.dir/depend:
	cd /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7 /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/omp /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp /media/snouto/rest/projects/dalton/libs/openvas-libraries-8.0.7/nasl/omp/CMakeFiles/openvas_omp_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : omp/CMakeFiles/openvas_omp_shared.dir/depend

