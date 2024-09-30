#include "MoveAction.h"
#include <iostream>
#include <chrono>

bool MoveAction::execute() {
    static auto lastPrintTime = std::chrono::steady_clock::now();
    auto currentTime = std::chrono::steady_clock::now();
    
    if (std::chrono::duration_cast<std::chrono::seconds>(currentTime - lastPrintTime).count() >= 1) {
        std::cout << "Agent is moving." << std::endl;
        lastPrintTime = currentTime;
    }
    
    // Implement movement logic here
    return true;
}
