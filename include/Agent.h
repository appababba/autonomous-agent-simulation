#ifndef AGENT_H
#define AGENT_H

#include <memory>
#include "BehaviorTree.h"

class Agent {
public:
    Agent(int id);
    void update();
    void setBehaviorTree(std::unique_ptr<BehaviorNode> tree);

private:
    int agent_id;
    std::unique_ptr<BehaviorNode> behavior_tree;
};

#endif // AGENT_H