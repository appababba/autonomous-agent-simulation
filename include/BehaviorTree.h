#ifndef BEHAVIORTREE_H
#define BEHAVIORTREE_H

#include <vector>
#include <memory>

class BehaviorNode {
public:
    virtual ~BehaviorNode() = default;
    virtual bool execute() = 0;
};

class SequenceNode : public BehaviorNode {
public:
    void addChild(std::unique_ptr<BehaviorNode> child);
    bool execute() override;

private:
    std::vector<std::unique_ptr<BehaviorNode>> children;
};

class SelectorNode : public BehaviorNode {
public:
    void addChild(std::unique_ptr<BehaviorNode> child);
    bool execute() override;

private:
    std::vector<std::unique_ptr<BehaviorNode>> children;
};

class ActionNode : public BehaviorNode {
public:
    virtual bool execute() override = 0;
};

#endif // BEHAVIORTREE_H