#ifndef QUADTREE_H
#define QUADTREE_H

#include <vector>
#include <memory>
#include <glm/glm.hpp>
#include "Agent.h"

struct AABB {
    glm::vec2 center;
    glm::vec2 halfDimension;
};

class Quadtree {
public:
    Quadtree(const AABB& boundary, int capacity);
    void insert(Agent* agent);
    std::vector<Agent*> query(const AABB& range);

private:
    AABB boundary;
    int capacity;
    std::vector<Agent*> agents;
    std::unique_ptr<Quadtree> northWest;
    std::unique_ptr<Quadtree> northEast;
    std::unique_ptr<Quadtree> southWest;
    std::unique_ptr<Quadtree> southEast;

    bool isLeaf() const;
    void subdivide();
};

#endif // QUADTREE_H
