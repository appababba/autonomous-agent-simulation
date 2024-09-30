#include "Agent.h"
#include "Terrain.h"
#include "Environment.h"
#include <iostream>
#include <random>
#include <queue>
#include <unordered_set>
#include <algorithm>

Agent::Agent(int id) : agent_id(id), behavior_tree(nullptr), position(0.0f, 0.0f, 0.0f) {}

void Agent::update(float deltaTime, const Terrain& terrain, const Environment& environment, const std::vector<Agent*>& nearbyAgents) {
    if (path.empty()) {
        pathfind(terrain);
    }

    if (!path.empty()) {
        glm::vec3 nextPos = path.front();
        glm::vec3 direction = glm::normalize(nextPos - position);
        position += direction * speed * deltaTime;

        if (glm::distance(position, nextPos) < 0.1f) {
            path.erase(path.begin());
        }
    }

    // Update Y position based on terrain
    position.y = terrain.getElevation(position.x, position.z) + 0.5f;

    if (behavior_tree) {
        behavior_tree->execute();
    }
}

void Agent::setGoal(const glm::vec3& newGoal) {
    goal = newGoal;
}

void Agent::pathfind(const Terrain& terrain) {
    // A* pathfinding implementation
    struct Node {
        glm::vec3 pos;
        float g, h;
        Node* parent;
        Node(glm::vec3 p, float g, float h, Node* par) : pos(p), g(g), h(h), parent(par) {}
    };

    auto compare = [](const Node* a, const Node* b) { return a->g + a->h > b->g + b->h; };
    std::priority_queue<Node*, std::vector<Node*>, decltype(compare)> openSet(compare);
    std::unordered_set<glm::vec3> closedSet;

    Node* start = new Node(position, 0, glm::distance(position, goal), nullptr);
    openSet.push(start);

    while (!openSet.empty()) {
        Node* current = openSet.top();
        openSet.pop();

        if (glm::distance(current->pos, goal) < 0.1f) {
            // Reconstruct path
            path.clear();
            while (current) {
                path.push_back(current->pos);
                current = current->parent;
            }
            std::reverse(path.begin(), path.end());
            return;
        }

        closedSet.insert(current->pos);

        // Generate neighbors
        for (int dx = -1; dx <= 1; ++dx) {
            for (int dz = -1; dz <= 1; ++dz) {
                if (dx == 0 && dz == 0) continue;

                glm::vec3 neighborPos = current->pos + glm::vec3(dx, 0, dz);
                if (closedSet.find(neighborPos) != closedSet.end()) continue;

                float newG = current->g + glm::distance(current->pos, neighborPos);
                float newH = glm::distance(neighborPos, goal);

                Node* neighbor = new Node(neighborPos, newG, newH, current);
                openSet.push(neighbor);
            }
        }
    }
}

void Agent::setBehaviorTree(std::unique_ptr<BehaviorNode> tree) {
    behavior_tree = std::move(tree);
}