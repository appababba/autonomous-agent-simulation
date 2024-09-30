#ifndef ENVIRONMENT_H
#define ENVIRONMENT_H

#include <glm/glm.hpp>

class Environment {
public:
    Environment();
    void update(float deltaTime);
    float getTemperature() const;
    float getHumidity() const;
    float getWindSpeed() const;
    glm::vec3 getWindDirection() const;
    float getDayNightCycle() const;

private:
    float temperature;
    float humidity;
    float windSpeed;
    glm::vec3 windDirection;
    float time;
};

#endif // ENVIRONMENT_H