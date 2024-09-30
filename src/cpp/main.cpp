#include <iostream>
#include <memory>
#include <vector>
#include <random>
#include "Agent.h"
#include "BehaviorTree.h"
#include "MoveAction.h"
#include "Renderer.h"
#include "Terrain.h"
#include "Environment.h"
#include "DataLogger.h"
#include "QuadTree.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

std::unique_ptr<BehaviorNode> createSimpleBehaviorTree() {
	auto sequence = std::make_unique<SequenceNode>();
	sequence->addChild(std::make_unique<MoveAction>());
	// Add more actions as needed
	return sequence;
}

int main() {
	try {
		std::cout << "Starting main function..." << std::endl;

		std::cout << "Creating Terrain..." << std::endl;
		Terrain terrain("/Users/rorycameron/USGS_13_n37w122_20240207.tif");

		std::cout << "Creating Renderer..." << std::endl;
		Renderer renderer(800, 600);

		std::cout << "Creating Agents..." << std::endl;
		std::vector<Agent> agents;
		for (int i = 0; i < 100; ++i) {
			agents.emplace_back(i);
			agents.back().setPosition(glm::vec3(0.0f, 0.0f, 0.0f)); // Set a default position
			agents.back().setBehaviorTree(createSimpleBehaviorTree());
		}

		std::random_device rd;
		std::mt19937 gen(rd());
		std::uniform_real_distribution<> dis(0.0, 1.0);

		for (auto& agent : agents) {
			glm::vec3 randomGoal(
				dis(gen) * terrain.getWorldSize().x - terrain.getWorldSize().x / 2,
				0,
				dis(gen) * terrain.getWorldSize().y - terrain.getWorldSize().y / 2
			);
			agent.setGoal(randomGoal);
		}

		std::cout << "Creating Environment..." << std::endl;
		Environment environment;

		std::cout << "Creating DataLogger..." << std::endl;
		DataLogger dataLogger("simulation_log.txt");

		std::cout << "Entering main loop..." << std::endl;
		float lastFrame = 0.0f;
		while (!renderer.shouldClose()) {
			float currentFrame = glfwGetTime();
			float deltaTime = currentFrame - lastFrame;
			lastFrame = currentFrame;

			// Process input
			renderer.processInput(deltaTime);

			// Update environment
			environment.update(deltaTime);

			// Update agents
			AABB worldBoundary = {
				glm::vec2(0, 0),
				glm::vec2(terrain.getWorldSize().x / 2, terrain.getWorldSize().y / 2)
			};
			Quadtree quadtree(worldBoundary, 4);

			for (auto& agent : agents) {
				quadtree.insert(&agent);
			}

			for (auto& agent : agents) {
				AABB queryRange = {
					glm::vec2(agent.getPosition().x, agent.getPosition().z),
					glm::vec2(10, 10) // Adjust this range as needed
				};
				std::vector<Agent*> nearbyAgents = quadtree.query(queryRange);
				agent.update(deltaTime, terrain, environment, nearbyAgents);  // Pass the terrain, environment, and nearby agents to the update function
			}

			// Log data
			float currentTime = glfwGetTime();
			for (const auto& agent : agents) {
				dataLogger.logAgentPosition(agent.getId(), agent.getPosition(), currentTime);
			}
			dataLogger.logEnvironmentData(environment.getTemperature(), environment.getHumidity(), environment.getWindSpeed(), currentTime);

			// Poll events
			glfwPollEvents();

			// Render (includes UI rendering)
			renderer.render(agents, terrain, environment);
		}

		std::cout << "Exiting main loop..." << std::endl;

		// Save data to file
		dataLogger.saveToFile();
	} catch (const std::exception& e) {
		std::cerr << "Error: " << e.what() << std::endl;
		return 1;
	}

	std::cout << "Program completed successfully." << std::endl;
	return 0;
}