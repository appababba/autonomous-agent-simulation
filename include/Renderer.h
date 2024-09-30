#ifndef RENDERER_H
#define RENDERER_H

#define GLFW_INCLUDE_GLCOREARB
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <vector>
#include <string>
#include "Agent.h"
#include "Terrain.h"
#include <imgui.h>
#include "Environment.h"
class Renderer {
public:
    Renderer(int width, int height);
    ~Renderer();

    void render(const std::vector<Agent>& agents, const Terrain& terrain, const Environment& environment);
    bool shouldClose();

    void processInput(float deltaTime);
    GLFWwindow* getWindow() const { return window; }

    void renderUI(const std::vector<Agent>& agents, const Terrain& terrain);

    void createAgentMesh();
    void renderAgents(const std::vector<Agent>& agents);

    void initializeImGui();

    void createTerrainMesh(const Terrain& terrain);
    void updateMatrices();

private:
    GLFWwindow* window;
    unsigned int VBO;
    unsigned int shaderProgram;
    int width, height;

    void initializeGL();
    void createShaders();
    bool checkShaderCompileErrors(unsigned int shader, std::string type);

    // Add these new members to the Renderer class
    GLuint terrainVAO, terrainVBO, terrainEBO;
    unsigned int terrainShaderProgram;
    int terrainVertexCount;

    glm::vec3 cameraPos;
    glm::vec3 cameraFront;
    glm::vec3 cameraUp;

    void processInput(GLFWwindow* window, float deltaTime);

    GLuint agentVAO, agentVBO;
    unsigned int agentShaderProgram;

    float agentRadius = 0.5f; // You can adjust this value as needed

    bool isInFrustum(const glm::vec3& position, float radius) const;

    float lastX, lastY;
    float yaw, pitch;
    bool firstMouse;
    float fov = 45.0f;

    void mouse_callback(double xpos, double ypos);
    void scroll_callback(double xoffset, double yoffset);
    static void mouse_callback_static(GLFWwindow* window, double xpos, double ypos);
    static void scroll_callback_static(GLFWwindow* window, double xoffset, double yoffset);

    // Add these member variables
    GLuint agentEBO;  // Add this line
    glm::mat4 projection;  // Add this line
    glm::mat4 view;  // Add this line


};

#endif // RENDERER_H