# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dengqu/Downloads/workplace/github/C++/http/CHttp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CHttp.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/CHttp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CHttp.dir/flags.make

CMakeFiles/CHttp.dir/main.cpp.o: CMakeFiles/CHttp.dir/flags.make
CMakeFiles/CHttp.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dengqu/Downloads/workplace/github/C++/http/CHttp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CHttp.dir/main.cpp.o"
	/Users/dengqu/Downloads/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CHttp.dir/main.cpp.o -c /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/main.cpp

CMakeFiles/CHttp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CHttp.dir/main.cpp.i"
	/Users/dengqu/Downloads/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/main.cpp > CMakeFiles/CHttp.dir/main.cpp.i

CMakeFiles/CHttp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CHttp.dir/main.cpp.s"
	/Users/dengqu/Downloads/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/main.cpp -o CMakeFiles/CHttp.dir/main.cpp.s

CMakeFiles/CHttp.dir/AsyHttpService.cpp.o: CMakeFiles/CHttp.dir/flags.make
CMakeFiles/CHttp.dir/AsyHttpService.cpp.o: ../AsyHttpService.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dengqu/Downloads/workplace/github/C++/http/CHttp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CHttp.dir/AsyHttpService.cpp.o"
	/Users/dengqu/Downloads/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CHttp.dir/AsyHttpService.cpp.o -c /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/AsyHttpService.cpp

CMakeFiles/CHttp.dir/AsyHttpService.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CHttp.dir/AsyHttpService.cpp.i"
	/Users/dengqu/Downloads/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/AsyHttpService.cpp > CMakeFiles/CHttp.dir/AsyHttpService.cpp.i

CMakeFiles/CHttp.dir/AsyHttpService.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CHttp.dir/AsyHttpService.cpp.s"
	/Users/dengqu/Downloads/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/AsyHttpService.cpp -o CMakeFiles/CHttp.dir/AsyHttpService.cpp.s

# Object files for target CHttp
CHttp_OBJECTS = \
"CMakeFiles/CHttp.dir/main.cpp.o" \
"CMakeFiles/CHttp.dir/AsyHttpService.cpp.o"

# External object files for target CHttp
CHttp_EXTERNAL_OBJECTS =

CHttp: CMakeFiles/CHttp.dir/main.cpp.o
CHttp: CMakeFiles/CHttp.dir/AsyHttpService.cpp.o
CHttp: CMakeFiles/CHttp.dir/build.make
CHttp: CMakeFiles/CHttp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dengqu/Downloads/workplace/github/C++/http/CHttp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CHttp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CHttp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CHttp.dir/build: CHttp
.PHONY : CMakeFiles/CHttp.dir/build

CMakeFiles/CHttp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CHttp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CHttp.dir/clean

CMakeFiles/CHttp.dir/depend:
	cd /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dengqu/Downloads/workplace/github/C++/http/CHttp /Users/dengqu/Downloads/workplace/github/C++/http/CHttp /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/cmake-build-debug /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/cmake-build-debug /Users/dengqu/Downloads/workplace/github/C++/http/CHttp/cmake-build-debug/CMakeFiles/CHttp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CHttp.dir/depend

