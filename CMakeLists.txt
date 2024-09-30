cmake_minimum_required(VERSION 3.10)
project(agent_simulation)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required packages
find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)
find_package(GDAL REQUIRED)

# Include directories
include_directories(${OPENGL_INCLUDE_DIR})
include_directories(${GDAL_INCLUDE_DIRS})
include_directories(${CMAKE_SOURCE_DIR}/include)

# ImGui
set(IMGUI_DIR ${CMAKE_SOURCE_DIR}/external/imgui)
if(EXISTS ${IMGUI_DIR})
    include_directories(${IMGUI_DIR} ${IMGUI_DIR}/backends)
    set(IMGUI_SOURCES
        ${IMGUI_DIR}/imgui.cpp
        ${IMGUI_DIR}/imgui_demo.cpp
        ${IMGUI_DIR}/imgui_draw.cpp
        ${IMGUI_DIR}/imgui_tables.cpp
        ${IMGUI_DIR}/imgui_widgets.cpp
        ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
        ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
    )
    add_definitions(-DIMGUI_ENABLED)
else()
    message(WARNING "ImGui directory not found. Building without ImGui.")
    set(IMGUI_SOURCES "")
endif()

# Add source files
set(SOURCES
    src/cpp/main.cpp
    src/cpp/Agent.cpp
    src/cpp/BehaviorTree.cpp
    src/cpp/MoveAction.cpp
    src/cpp/Renderer.cpp
    src/cpp/Terrain.cpp
    src/cpp/Environment.cpp
    src/cpp/DataLogger.cpp
    src/cpp/QuadTree.cpp
    ${IMGUI_SOURCES}
)

# Add header files
set(HEADERS
    include/Agent.h
    include/BehaviorTree.h
    include/MoveAction.h
    include/Renderer.h
    include/Terrain.h
    include/Environment.h
    include/DataLogger.h
    include/QuadTree.h
)

# Create executable
add_executable(agent_simulation ${SOURCES} ${HEADERS})

# Link libraries
target_link_libraries(agent_simulation
    ${OPENGL_LIBRARIES}
    glfw
    ${GDAL_LIBRARIES}
)

# Silence deprecated OpenGL warnings on macOS
if(APPLE)
    target_compile_definitions(agent_simulation PRIVATE GL_SILENCE_DEPRECATION)
endif()

# Copy shader files to build directory if the directory exists
if(EXISTS "${CMAKE_SOURCE_DIR}/shaders")
    file(COPY ${CMAKE_SOURCE_DIR}/shaders DESTINATION ${CMAKE_BINARY_DIR})
else()
    message(WARNING "Shaders directory not found. Skipping copy.")
endif()

# Copy any necessary data files if the directory exists
if(EXISTS "${CMAKE_SOURCE_DIR}/data")
    file(COPY ${CMAKE_SOURCE_DIR}/data DESTINATION ${CMAKE_BINARY_DIR})
else()
    message(WARNING "Data directory not found. Skipping copy.")
endif()