#include "Renderer.h"
#include <iostream>
#include <stdexcept>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <imgui.h>
#include <imgui_impl_glfw.h>
#include <imgui_impl_opengl3.h>

Renderer::Renderer(int width, int height) : width(width), height(height), window(nullptr), VBO(0), shaderProgram(0),
    cameraPos(0.0f, 50.0f, 50.0f), cameraFront(0.0f, -0.5f, -1.0f), cameraUp(0.0f, 1.0f, 0.0f),
    lastX(width / 2.0f), lastY(height / 2.0f), yaw(-90.0f), pitch(0.0f), firstMouse(true) {
    std::cout << "Initializing Renderer..." << std::endl;

    // Initialize GLFW
    std::cout << "Initializing GLFW..." << std::endl;
    if (!glfwInit()) {
        throw std::runtime_error("Failed to initialize GLFW");
    }

    // Set GLFW window hints for OpenGL 3.3 Core Profile
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

    // Create window
    std::cout << "Creating GLFW window..." << std::endl;
    window = glfwCreateWindow(width, height, "Agent Simulation", nullptr, nullptr);
    if (!window) {
        glfwTerminate();
        throw std::runtime_error("Failed to create GLFW window");
    }

    glfwMakeContextCurrent(window);

    try {
        std::cout << "Calling initializeGL()..." << std::endl;
        initializeGL();

        std::cout << "Calling createShaders()..." << std::endl;
        createShaders();

        std::cout << "Initializing ImGui..." << std::endl;
        initializeImGui();
    } catch (const std::exception& e) {
        std::cerr << "Error during initialization: " << e.what() << std::endl;
        glfwDestroyWindow(window);
        glfwTerminate();
        throw;
    }

    std::cout << "Renderer initialization complete." << std::endl;

    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
    glfwSetWindowUserPointer(window, this);
    glfwSetCursorPosCallback(window, mouse_callback_static);
    glfwSetScrollCallback(window, scroll_callback_static);
}

void Renderer::initializeGL() {
    std::cout << "Inside initializeGL()..." << std::endl;

    const GLubyte* renderer = glGetString(GL_RENDERER);
    const GLubyte* version = glGetString(GL_VERSION);
    std::cout << "Renderer: " << renderer << std::endl;
    std::cout << "OpenGL version supported: " << version << std::endl;

    // Set up any OpenGL state you need
    glEnable(GL_DEPTH_TEST);

    // Create and bind a Vertex Buffer Object (VBO)
    std::cout << "Creating VBO..." << std::endl;
    glGenBuffers(1, &VBO);
    if (glGetError() != GL_NO_ERROR) {
        throw std::runtime_error("Failed to generate VBO");
    }
    std::cout << "Binding VBO..." << std::endl;
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    if (glGetError() != GL_NO_ERROR) {
        throw std::runtime_error("Failed to bind VBO");
    }

    // Define the vertex data (you might want to update this later)
    float vertices[] = {
        -0.5f, -0.5f, 0.0f,
         0.5f, -0.5f, 0.0f,
         0.0f,  0.5f, 0.0f
    };

    // Load the vertex data into the VBO
    std::cout << "Loading vertex data..." << std::endl;
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    if (glGetError() != GL_NO_ERROR) {
        throw std::runtime_error("Failed to load vertex data");
    }

    std::cout << "initializeGL() complete." << std::endl;
}

void Renderer::createShaders() {
    std::cout << "Creating shaders..." << std::endl;
    
    // Vertex Shader
    std::cout << "Creating vertex shader..." << std::endl;
    const char* vertexShaderSource = R"(
        #version 330 core
        layout (location = 0) in vec3 aPos;
        uniform mat4 model;
        uniform mat4 view;
        uniform mat4 projection;
        void main() {
            gl_Position = projection * view * model * vec4(aPos, 1.0);
        }
    )";
    unsigned int vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
    glCompileShader(vertexShader);
    if (!checkShaderCompileErrors(vertexShader, "VERTEX")) {
        throw std::runtime_error("Vertex shader compilation failed");
    }

    // Fragment Shader
    std::cout << "Creating fragment shader..." << std::endl;
    const char* fragmentShaderSource = R"(
        #version 330 core
        out vec4 FragColor;
        void main() {
            FragColor = vec4(1.0, 0.5, 0.2, 1.0);
        }
    )";
    unsigned int fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
    glCompileShader(fragmentShader);
    if (!checkShaderCompileErrors(fragmentShader, "FRAGMENT")) {
        throw std::runtime_error("Fragment shader compilation failed");
    }

    // Shader Program
    std::cout << "Creating shader program..." << std::endl;
    shaderProgram = glCreateProgram();
    glAttachShader(shaderProgram, vertexShader);
    glAttachShader(shaderProgram, fragmentShader);
    glLinkProgram(shaderProgram);
    if (!checkShaderCompileErrors(shaderProgram, "PROGRAM")) {
        throw std::runtime_error("Shader program linking failed");
    }

    // Delete shaders as they're linked into our program now and no longer necessary
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);

    std::cout << "Shaders created successfully." << std::endl;
}

void Renderer::render(const std::vector<Agent>& agents, const Terrain& terrain) {
    // Update matrices
    updateMatrices();

    // Clear the screen
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // Render terrain
    renderTerrain(terrain);

    // Render agents
    renderAgents(agents);

    // Render UI
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();

    renderUI(agents, terrain);

    ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

    // Swap buffers
    glfwSwapBuffers(window);
}

bool Renderer::shouldClose() {
    return glfwWindowShouldClose(window);
}

bool Renderer::checkShaderCompileErrors(unsigned int shader, std::string type) {
    int success;
    char infoLog[1024];
    if (type != "PROGRAM") {
        glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
        if (!success) {
            glGetShaderInfoLog(shader, 1024, NULL, infoLog);
            std::cout << "ERROR::SHADER_COMPILATION_ERROR of type: " << type << "\n" << infoLog << "\n -- --------------------------------------------------- -- " << std::endl;
            return false;
        }
    } else {
        glGetProgramiv(shader, GL_LINK_STATUS, &success);
        if (!success) {
            glGetProgramInfoLog(shader, 1024, NULL, infoLog);
            std::cout << "ERROR::PROGRAM_LINKING_ERROR of type: " << type << "\n" << infoLog << "\n -- --------------------------------------------------- -- " << std::endl;
            return false;
        }
    }
    return true;
}

Renderer::~Renderer() {
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();

    glfwDestroyWindow(window);
    glfwTerminate();
}

void Renderer::createTerrainMesh(const Terrain& terrain) {
    std::vector<float> vertices;
    std::vector<unsigned int> indices;
    
    int width = terrain.getWidth();
    int height = terrain.getHeight();
    glm::vec2 worldSize = terrain.getWorldSize();
    float stepX = worldSize.x / (width - 1);
    float stepZ = worldSize.y / (height - 1);

    for (int z = 0; z < height; ++z) {
        for (int x = 0; x < width; ++x) {
            float xPos = x * stepX - worldSize.x / 2.0f;
            float zPos = z * stepZ - worldSize.y / 2.0f;
            float yPos = terrain.getNormalizedElevation(xPos, zPos) * 100.0f; // Scale elevation

            vertices.push_back(xPos);
            vertices.push_back(yPos);
            vertices.push_back(zPos);

            // Add color based on elevation
            float color = terrain.getNormalizedElevation(xPos, zPos);
            vertices.push_back(0.0f);  // R
            vertices.push_back(color); // G
            vertices.push_back(0.0f);  // B
        }
    }

    // Generate indices for triangle strips
    for (int z = 0; z < height - 1; ++z) {
        for (int x = 0; x < width; ++x) {
            indices.push_back(z * width + x);
            indices.push_back((z + 1) * width + x);
        }
        // Add degenerate triangles if not the last strip
        if (z < height - 2) {
            indices.push_back((z + 1) * width + (width - 1));
            indices.push_back((z + 1) * width);
        }
    }

    glGenVertexArrays(1, &terrainVAO);
    glGenBuffers(1, &terrainVBO);
    glGenBuffers(1, &terrainEBO);

    glBindVertexArray(terrainVAO);

    glBindBuffer(GL_ARRAY_BUFFER, terrainVBO);
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(float), vertices.data(), GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, terrainEBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(unsigned int), indices.data(), GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    terrainVertexCount = indices.size();
}

void Renderer::renderTerrain(const Terrain& terrain) {
    glUseProgram(terrainShaderProgram);
    glBindVertexArray(terrainVAO);

    glm::mat4 model = glm::mat4(1.0f);
    glUniformMatrix4fv(glGetUniformLocation(terrainShaderProgram, "model"), 1, GL_FALSE, glm::value_ptr(model));
    glUniformMatrix4fv(glGetUniformLocation(terrainShaderProgram, "view"), 1, GL_FALSE, glm::value_ptr(view));
    glUniformMatrix4fv(glGetUniformLocation(terrainShaderProgram, "projection"), 1, GL_FALSE, glm::value_ptr(projection));

    glDrawElements(GL_TRIANGLE_STRIP, terrainVertexCount, GL_UNSIGNED_INT, 0);
}

void Renderer::renderAgents(const std::vector<Agent>& agents) {
    glUseProgram(agentShaderProgram);
    glBindVertexArray(agentVAO);

    std::vector<glm::mat4> modelMatrices;
    for (const auto& agent : agents) {
        glm::mat4 model = glm::translate(glm::mat4(1.0f), agent.getPosition());
        model = glm::scale(model, glm::vec3(0.5f, 0.5f, 0.5f));
        modelMatrices.push_back(model);
    }

    GLuint instanceVBO;
    glGenBuffers(1, &instanceVBO);
    glBindBuffer(GL_ARRAY_BUFFER, instanceVBO);
    glBufferData(GL_ARRAY_BUFFER, modelMatrices.size() * sizeof(glm::mat4), modelMatrices.data(), GL_STATIC_DRAW);

    for (unsigned int i = 0; i < 4; ++i) {
        glEnableVertexAttribArray(2 + i);
        glVertexAttribPointer(2 + i, 4, GL_FLOAT, GL_FALSE, sizeof(glm::mat4), (void*)(sizeof(glm::vec4) * i));
        glVertexAttribDivisor(2 + i, 1);
    }

    glUniformMatrix4fv(glGetUniformLocation(agentShaderProgram, "view"), 1, GL_FALSE, glm::value_ptr(view));
    glUniformMatrix4fv(glGetUniformLocation(agentShaderProgram, "projection"), 1, GL_FALSE, glm::value_ptr(projection));

    glDrawElementsInstanced(GL_TRIANGLES, 18, GL_UNSIGNED_INT, 0, agents.size());

    glDeleteBuffers(1, &instanceVBO);
}

void Renderer::createAgentMesh() {
    float vertices[] = {
        // Positions        // Colors
        -0.5f, 0.0f, -0.5f,  1.0f, 0.0f, 0.0f,
         0.5f, 0.0f, -0.5f,  1.0f, 0.0f, 0.0f,
         0.5f, 0.0f,  0.5f,  1.0f, 0.0f, 0.0f,
        -0.5f, 0.0f,  0.5f,  1.0f, 0.0f, 0.0f,
         0.0f, 1.0f,  0.0f,  1.0f, 0.0f, 0.0f
    };
    unsigned int indices[] = {
        0, 1, 2,  2, 3, 0,  // Base
        0, 4, 1,  1, 4, 2,  2, 4, 3,  3, 4, 0  // Sides
    };

    glGenVertexArrays(1, &agentVAO);
    glGenBuffers(1, &agentVBO);
    glGenBuffers(1, &agentEBO);

    glBindVertexArray(agentVAO);

    glBindBuffer(GL_ARRAY_BUFFER, agentVBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, agentEBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);
}

void Renderer::processInput(float deltaTime) {
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);

    float cameraSpeed = 2.5f * deltaTime;
    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
        cameraPos += cameraSpeed * cameraFront;
    if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
        cameraPos -= cameraSpeed * cameraFront;
    if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
        cameraPos -= glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
    if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
        cameraPos += glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
}

bool Renderer::isInFrustum(const glm::vec3& position, float radius) const {
    glm::mat4 viewProjection = projection * view;
    for (int i = 0; i < 6; ++i) {
        glm::vec4 plane(viewProjection[0][3] + viewProjection[0][i],
                        viewProjection[1][3] + viewProjection[1][i],
                        viewProjection[2][3] + viewProjection[2][i],
                        viewProjection[3][3] + viewProjection[3][i]);
        plane = glm::normalize(plane);
        if (glm::dot(glm::vec3(plane), position) + plane.w + radius < 0) {
            return false;
        }
    }
    return true;
}

void Renderer::initializeImGui() {
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    ImGui::StyleColorsDark();
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init("#version 330");
}

void Renderer::renderUI(const std::vector<Agent>& agents, const Terrain& terrain) {
    ImGui::Begin("Simulation Controls");
    
    static int numAgents = agents.size();
    if (ImGui::SliderInt("Number of Agents", &numAgents, 1, 1000)) {
        // Update number of agents
    }

    static float agentSpeed = 5.0f;
    if (ImGui::SliderFloat("Agent Speed", &agentSpeed, 0.1f, 20.0f)) {
        // Update agent speed
    }

    static float terrainScale = 100.0f;
    if (ImGui::SliderFloat("Terrain Scale", &terrainScale, 10.0f, 500.0f)) {
        // Update terrain scale
    }

    ImGui::Text("Terrain Size: %.2f x %.2f", terrain.getWorldSize().x, terrain.getWorldSize().y);
    ImGui::Text("Camera Position: (%.2f, %.2f, %.2f)", cameraPos.x, cameraPos.y, cameraPos.z);

    ImGui::End();
}

void Renderer::mouse_callback(double xpos, double ypos) {
    if (firstMouse) {
        lastX = xpos;
        lastY = ypos;
        firstMouse = false;
    }

    float xoffset = xpos - lastX;
    float yoffset = lastY - ypos;
    lastX = xpos;
    lastY = ypos;

    float sensitivity = 0.1f;
    xoffset *= sensitivity;
    yoffset *= sensitivity;

    yaw += xoffset;
    pitch += yoffset;

    if (pitch > 89.0f)
        pitch = 89.0f;
    if (pitch < -89.0f)
        pitch = -89.0f;

    glm::vec3 front;
    front.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
    front.y = sin(glm::radians(pitch));
    front.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
    cameraFront = glm::normalize(front);
}

void Renderer::scroll_callback(double xoffset, double yoffset) {
    fov -= (float)yoffset;
    if (fov < 1.0f)
        fov = 1.0f;
    if (fov > 45.0f)
        fov = 45.0f;
}

// Static callback wrappers
void Renderer::mouse_callback_static(GLFWwindow* window, double xpos, double ypos) {
    Renderer* renderer = static_cast<Renderer*>(glfwGetWindowUserPointer(window));
    renderer->mouse_callback(xpos, ypos);
}

void Renderer::scroll_callback_static(GLFWwindow* window, double xoffset, double yoffset) {
    Renderer* renderer = static_cast<Renderer*>(glfwGetWindowUserPointer(window));
    renderer->scroll_callback(xoffset, yoffset);
}

// Add this function to update view and projection matrices
void Renderer::updateMatrices() {
    projection = glm::perspective(glm::radians(fov), (float)width / (float)height, 0.1f, 1000.0f);
    view = glm::lookAt(cameraPos, cameraPos + cameraFront, cameraUp);
}