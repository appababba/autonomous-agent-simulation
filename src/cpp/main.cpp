#include <iostream>
#include <memory>
#include "Agent.h"
#include "MoveAction.h"

std::unique_ptr<BehaviorNode> createSimpleBehaviorTree() {
	auto sequence = std::make_unique<SequenceNode>();
	sequence->addChild(std::make_unique<MoveAction>());
	// Add more actions as needed
	return sequence;
}

int main() {
	const int num_agents = 5;
	std::vector<Agent> agents;

	for (int i = 0; i < num_agents; ++i) {
		agents.emplace_back(i);
		agents.back().setBehaviorTree(createSimpleBehaviorTree());
	}

	// Update agents
	for (auto& agent : agents) {
		agent.update();
	}

	return 0;
}
