#ifndef AGENT_H
#define AGENT_H

#include <memory>
#include "BehaviorTree.h"
#include <glm/glm.hpp>
#include <vector>
#include "Environment.h"
#include <functional>

// Forward declaration of Terrain class
class Terrain;

// Add this custom hash function for glm::vec3
namespace std {
    template<>
    struct hash<glm::vec3> {
        size_t operator()(const glm::vec3& v) const {
            return hash<float>()(v.x) ^ (hash<float>()(v.y) << 1) ^ (hash<float>()(v.z) << 2);
        }
    };
}

class Agent {
public:
    Agent(int id);
    void update(float deltaTime, const Terrain& terrain, const Environment& environment, const std::vector<Agent*>& nearbyAgents);
    void setBehaviorTree(std::unique_ptr<BehaviorNode> tree);
    glm::vec3 getPosition() const { return position; }
    void setPosition(const glm::vec3& pos) { position = pos; }
    void setGoal(const glm::vec3& goal);
    void pathfind(const Terrain& terrain);
    int getId() const { return agent_id; }
private:
    int agent_id;
    std::unique_ptr<BehaviorNode> behavior_tree;
    glm::vec3 position;
    float speed = 5.0f; // Adjust as needed
    glm::vec3 goal;
    std::vector<glm::vec3> path;
};

#endif // AGENT_H