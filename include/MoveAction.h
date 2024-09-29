#ifndef MOVEACTION_H
#define MOVEACTION_H

#include "BehaviorTree.h"

class MoveAction : public ActionNode {
public:
    bool execute() override;
};

#endif // MOVEACTION_H