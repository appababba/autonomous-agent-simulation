# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rorycameron/autonomous-agent-simulation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rorycameron/autonomous-agent-simulation/build

# Include any dependencies generated for this target.
include CMakeFiles/agent_simulation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/agent_simulation.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/agent_simulation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/agent_simulation.dir/flags.make

CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.o: /Users/rorycameron/autonomous-agent-simulation/src/cpp/main.cpp
CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.o -MF CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.o.d -o CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/src/cpp/main.cpp

CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/src/cpp/main.cpp > CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.i

CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/src/cpp/main.cpp -o CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.s

CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.o: /Users/rorycameron/autonomous-agent-simulation/src/cpp/Agent.cpp
CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.o -MF CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.o.d -o CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/src/cpp/Agent.cpp

CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/src/cpp/Agent.cpp > CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.i

CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/src/cpp/Agent.cpp -o CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.s

CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.o: /Users/rorycameron/autonomous-agent-simulation/src/cpp/BehaviorTree.cpp
CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.o -MF CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.o.d -o CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/src/cpp/BehaviorTree.cpp

CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/src/cpp/BehaviorTree.cpp > CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.i

CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/src/cpp/BehaviorTree.cpp -o CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.s

CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.o: /Users/rorycameron/autonomous-agent-simulation/src/cpp/MoveAction.cpp
CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.o -MF CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.o.d -o CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/src/cpp/MoveAction.cpp

CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/src/cpp/MoveAction.cpp > CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.i

CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/src/cpp/MoveAction.cpp -o CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.s

CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.o: /Users/rorycameron/autonomous-agent-simulation/src/cpp/Renderer.cpp
CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.o -MF CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.o.d -o CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/src/cpp/Renderer.cpp

CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/src/cpp/Renderer.cpp > CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.i

CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/src/cpp/Renderer.cpp -o CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.s

CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.o: /Users/rorycameron/autonomous-agent-simulation/src/cpp/Terrain.cpp
CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.o -MF CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.o.d -o CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/src/cpp/Terrain.cpp

CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/src/cpp/Terrain.cpp > CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.i

CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/src/cpp/Terrain.cpp -o CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.s

CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.o: /Users/rorycameron/autonomous-agent-simulation/src/cpp/Environment.cpp
CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.o -MF CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.o.d -o CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/src/cpp/Environment.cpp

CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/src/cpp/Environment.cpp > CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.i

CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/src/cpp/Environment.cpp -o CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.s

CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.o: /Users/rorycameron/autonomous-agent-simulation/src/cpp/DataLogger.cpp
CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.o -MF CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.o.d -o CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/src/cpp/DataLogger.cpp

CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/src/cpp/DataLogger.cpp > CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.i

CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/src/cpp/DataLogger.cpp -o CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.s

CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.o: /Users/rorycameron/autonomous-agent-simulation/src/cpp/QuadTree.cpp
CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.o -MF CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.o.d -o CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/src/cpp/QuadTree.cpp

CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/src/cpp/QuadTree.cpp > CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.i

CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/src/cpp/QuadTree.cpp -o CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.s

CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.o: /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui.cpp
CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.o -MF CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.o.d -o CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui.cpp

CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui.cpp > CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.i

CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui.cpp -o CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.s

CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.o: /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_demo.cpp
CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.o -MF CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.o.d -o CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_demo.cpp

CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_demo.cpp > CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.i

CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_demo.cpp -o CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.s

CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.o: /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_draw.cpp
CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.o -MF CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.o.d -o CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_draw.cpp

CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_draw.cpp > CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.i

CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_draw.cpp -o CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.s

CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.o: /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_tables.cpp
CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.o -MF CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.o.d -o CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_tables.cpp

CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_tables.cpp > CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.i

CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_tables.cpp -o CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.s

CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.o: /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_widgets.cpp
CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.o -MF CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_widgets.cpp

CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_widgets.cpp > CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.i

CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/external/imgui/imgui_widgets.cpp -o CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.s

CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.o: /Users/rorycameron/autonomous-agent-simulation/external/imgui/backends/imgui_impl_glfw.cpp
CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.o -MF CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.o.d -o CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/external/imgui/backends/imgui_impl_glfw.cpp

CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/external/imgui/backends/imgui_impl_glfw.cpp > CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.i

CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/external/imgui/backends/imgui_impl_glfw.cpp -o CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.s

CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/agent_simulation.dir/flags.make
CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o: /Users/rorycameron/autonomous-agent-simulation/external/imgui/backends/imgui_impl_opengl3.cpp
CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/agent_simulation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o -MF CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o -c /Users/rorycameron/autonomous-agent-simulation/external/imgui/backends/imgui_impl_opengl3.cpp

CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rorycameron/autonomous-agent-simulation/external/imgui/backends/imgui_impl_opengl3.cpp > CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.i

CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rorycameron/autonomous-agent-simulation/external/imgui/backends/imgui_impl_opengl3.cpp -o CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.s

# Object files for target agent_simulation
agent_simulation_OBJECTS = \
"CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.o" \
"CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.o" \
"CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.o" \
"CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.o" \
"CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.o" \
"CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.o" \
"CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.o" \
"CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.o" \
"CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.o" \
"CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.o" \
"CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.o" \
"CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.o" \
"CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.o" \
"CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.o" \
"CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o"

# External object files for target agent_simulation
agent_simulation_EXTERNAL_OBJECTS =

agent_simulation: CMakeFiles/agent_simulation.dir/src/cpp/main.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/src/cpp/Agent.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/src/cpp/BehaviorTree.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/src/cpp/MoveAction.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/src/cpp/Renderer.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/src/cpp/Terrain.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/src/cpp/Environment.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/src/cpp/DataLogger.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/src/cpp/QuadTree.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/external/imgui/imgui.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/external/imgui/imgui_demo.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/external/imgui/imgui_draw.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/external/imgui/imgui_tables.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/external/imgui/imgui_widgets.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_glfw.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/external/imgui/backends/imgui_impl_opengl3.cpp.o
agent_simulation: CMakeFiles/agent_simulation.dir/build.make
agent_simulation: /opt/homebrew/lib/libglfw.3.4.dylib
agent_simulation: /opt/homebrew/Cellar/gdal/3.9.2_1/lib/libgdal.dylib
agent_simulation: CMakeFiles/agent_simulation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX executable agent_simulation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/agent_simulation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/agent_simulation.dir/build: agent_simulation
.PHONY : CMakeFiles/agent_simulation.dir/build

CMakeFiles/agent_simulation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/agent_simulation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/agent_simulation.dir/clean

CMakeFiles/agent_simulation.dir/depend:
	cd /Users/rorycameron/autonomous-agent-simulation/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rorycameron/autonomous-agent-simulation /Users/rorycameron/autonomous-agent-simulation /Users/rorycameron/autonomous-agent-simulation/build /Users/rorycameron/autonomous-agent-simulation/build /Users/rorycameron/autonomous-agent-simulation/build/CMakeFiles/agent_simulation.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/agent_simulation.dir/depend

