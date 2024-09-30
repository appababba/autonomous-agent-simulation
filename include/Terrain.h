#ifndef TERRAIN_H
#define TERRAIN_H

#include <gdal_priv.h>
#include <glm/glm.hpp>
#include <string>
#include <vector>

class Terrain {
public:
    Terrain(const std::string& filename);
    ~Terrain();

    float getElevation(float lon, float lat) const;
    glm::vec2 getWorldSize() const;
    float getNormalizedElevation(float lon, float lat) const;
    int getWidth() const { return width; }
    int getHeight() const { return height; }

private:
    GDALDataset* dataset;
    std::vector<float> elevationData;
    int width, height;
    double geoTransform[6];
    float minElevation, maxElevation;
};

#endif // TERRAIN_H
