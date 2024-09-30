// DataLogger.h
#pragma once
#include <vector>
#include <string>
#include <fstream>
#include <glm/glm.hpp>

class DataLogger {
public:
    DataLogger(const std::string& filename);
    void logAgentPosition(int agentId, const glm::vec3& position, float time);
    void logEnvironmentData(float temperature, float humidity, float windSpeed, float time);
    void saveToFile();

private:
    struct AgentLog {
        int agentId;
        glm::vec3 position;
        float time;
    };

    struct EnvironmentLog {
        float temperature;
        float humidity;
        float windSpeed;
        float time;
    };

    std::vector<AgentLog> agentLogs;
    std::vector<EnvironmentLog> environmentLogs;
    std::string filename;
};