#include "QuadTree.h"

Quadtree::Quadtree(const AABB& boundary, int capacity)
    : boundary(boundary), capacity(capacity) {}

void Quadtree::insert(Agent* agent) {
    if (!isLeaf()) {
        Quadtree* child = nullptr;
        glm::vec2 pos = glm::vec2(agent->getPosition().x, agent->getPosition().z);
        
        if (pos.y < boundary.center.y) {
            if (pos.x < boundary.center.x)
                child = southWest.get();
            else
                child = southEast.get();
        } else {
            if (pos.x < boundary.center.x)
                child = northWest.get();
            else
                child = northEast.get();
        }

        if (child)
            child->insert(agent);
        return;
    }

    agents.push_back(agent);

    if (agents.size() > capacity) {
        subdivide();
        for (Agent* a : agents) {
            insert(a);
        }
        agents.clear();
    }
}

std::vector<Agent*> Quadtree::query(const AABB& range) {
    std::vector<Agent*> result;

    if (!isLeaf()) {
        if (northWest->boundary.center.x < range.center.x + range.halfDimension.x &&
            northWest->boundary.center.x + northWest->boundary.halfDimension.x > range.center.x - range.halfDimension.x &&
            northWest->boundary.center.y < range.center.y + range.halfDimension.y &&
            northWest->boundary.center.y + northWest->boundary.halfDimension.y > range.center.y - range.halfDimension.y) {
            auto nwResults = northWest->query(range);
            result.insert(result.end(), nwResults.begin(), nwResults.end());
        }
        // Repeat for other quadrants...
    }

    for (Agent* agent : agents) {
        glm::vec2 pos = glm::vec2(agent->getPosition().x, agent->getPosition().z);
        if (pos.x > range.center.x - range.halfDimension.x &&
            pos.x < range.center.x + range.halfDimension.x &&
            pos.y > range.center.y - range.halfDimension.y &&
            pos.y < range.center.y + range.halfDimension.y) {
            result.push_back(agent);
        }
    }

    return result;
}

bool Quadtree::isLeaf() const {
    return !northWest;
}

void Quadtree::subdivide() {
    float childWidth = boundary.halfDimension.x / 2;
    float childHeight = boundary.halfDimension.y / 2;

    northWest = std::make_unique<Quadtree>(AABB{
        glm::vec2(boundary.center.x - childWidth, boundary.center.y + childHeight),
        glm::vec2(childWidth, childHeight)
    }, capacity);

    northEast = std::make_unique<Quadtree>(AABB{
        glm::vec2(boundary.center.x + childWidth, boundary.center.y + childHeight),
        glm::vec2(childWidth, childHeight)
    }, capacity);

    southWest = std::make_unique<Quadtree>(AABB{
        glm::vec2(boundary.center.x - childWidth, boundary.center.y - childHeight),
        glm::vec2(childWidth, childHeight)
    }, capacity);

    southEast = std::make_unique<Quadtree>(AABB{
        glm::vec2(boundary.center.x + childWidth, boundary.center.y - childHeight),
        glm::vec2(childWidth, childHeight)
    }, capacity);
}