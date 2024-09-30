#include "Environment.h"
#include <cmath>

Environment::Environment()
    : temperature(20.0f), humidity(0.5f), windSpeed(5.0f), windDirection(1.0f, 0.0f, 0.0f), time(0.0f) {}

void Environment::update(float deltaTime) {
    time += deltaTime;
    
    // Simulate day-night cycle
    float dayNightCycle = (std::sin(time * 0.1f) + 1.0f) * 0.5f;
    
    // Update temperature based on day-night cycle
    temperature = 15.0f + 10.0f * dayNightCycle;
    
    // Update wind
    windSpeed = 5.0f + 3.0f * std::sin(time * 0.05f);
    windDirection = glm::normalize(glm::vec3(std::cos(time * 0.1f), 0.0f, std::sin(time * 0.1f)));
}

float Environment::getTemperature() const { return temperature; }
float Environment::getHumidity() const { return humidity; }
float Environment::getWindSpeed() const { return windSpeed; }
glm::vec3 Environment::getWindDirection() const { return windDirection; }
float Environment::getDayNightCycle() const { return (std::sin(time * 0.1f) + 1.0f) * 0.5f; }