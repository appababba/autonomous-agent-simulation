#include "BehaviorTree.h"

void SequenceNode::addChild(std::unique_ptr<BehaviorNode> child) {
    children.push_back(std::move(child));
}

bool SequenceNode::execute() {
    for (const auto& child : children) {
        if (!child->execute()) {
            return false;
        }
    }
    return true;
}

void SelectorNode::addChild(std::unique_ptr<BehaviorNode> child) {
    children.push_back(std::move(child));
}

bool SelectorNode::execute() {
    for (const auto& child : children) {
        if (child->execute()) {
            return true;
        }
    }
    return false;
}

// Note: ActionNode::execute() is pure virtual, so we don't implement it here