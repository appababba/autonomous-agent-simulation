cmake_minimum_required(VERSION 3.10)
project(AutonomousAgentSimulation)

set(CMAKE_CXX_STANDARD 17)

include_directories(include)

add_executable(agent_simulation
    src/cpp/main.cpp
    src/cpp/Agent.cpp
    src/cpp/BehaviorTree.cpp
    src/cpp/MoveAction.cpp
)

target_link_libraries(agent_simulation
    ${CMAKE_SOURCE_DIR}/rust_libs/safety_lib/target/release/libsafety_lib.rlib
)