#include "DataLogger.h"

DataLogger::DataLogger(const std::string& filename) : filename(filename) {}

void DataLogger::logAgentPosition(int agentId, const glm::vec3& position, float time) {
    agentLogs.push_back({agentId, position, time});
}

void DataLogger::logEnvironmentData(float temperature, float humidity, float windSpeed, float time) {
    environmentLogs.push_back({temperature, humidity, windSpeed, time});
}

void DataLogger::saveToFile() {
    std::ofstream file(filename);
    if (!file.is_open()) {
        throw std::runtime_error("Failed to open log file");
    }

    file << "Agent Logs:\n";
    for (const auto& log : agentLogs) {
        file << "Agent " << log.agentId << ": (" << log.position.x << ", " << log.position.y << ", " << log.position.z << ") at time " << log.time << "\n";
    }

    file << "\nEnvironment Logs:\n";
    for (const auto& log : environmentLogs) {
        file << "Time: " << log.time << ", Temperature: " << log.temperature << ", Humidity: " << log.humidity << ", Wind Speed: " << log.windSpeed << "\n";
    }

    file.close();
}