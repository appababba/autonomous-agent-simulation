#include "Agent.h"
#include <iostream>

Agent::Agent(int id) : agent_id(id), behavior_tree(nullptr) {}

void Agent::update() {
    std::cout << "Agent " << agent_id << " is updating." << std::endl;
    if (behavior_tree) {
        behavior_tree->execute();
    }
}

void Agent::setBehaviorTree(std::unique_ptr<BehaviorNode> tree) {
    behavior_tree = std::move(tree);
}