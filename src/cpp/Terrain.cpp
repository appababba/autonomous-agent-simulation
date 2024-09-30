#include "Terrain.h"
#include <stdexcept>
#include <algorithm>

Terrain::Terrain(const std::string& filename) {
    GDALAllRegister();
    dataset = (GDALDataset*)GDALOpen(filename.c_str(), GA_ReadOnly);
    if (!dataset) {
        throw std::runtime_error("Failed to open terrain file");
    }

    width = dataset->GetRasterXSize();
    height = dataset->GetRasterYSize();

    if (dataset->GetGeoTransform(geoTransform) != CE_None) {
        throw std::runtime_error("Failed to get geotransform");
    }

    GDALRasterBand* band = dataset->GetRasterBand(1);
    elevationData.resize(width * height);
    if (band->RasterIO(GF_Read, 0, 0, width, height, elevationData.data(), width, height, GDT_Float32, 0, 0) != CE_None) {
        throw std::runtime_error("Failed to read elevation data");
    }

    // Replace NoData values with a sensible default (e.g., 0 or the minimum valid elevation)
    float noDataValue = band->GetNoDataValue();
    std::replace(elevationData.begin(), elevationData.end(), noDataValue, 0.0f);

    // Calculate min and max elevation for normalization
    auto [minIt, maxIt] = std::minmax_element(elevationData.begin(), elevationData.end());
    minElevation = *minIt;
    maxElevation = *maxIt;
}

float Terrain::getElevation(float lon, float lat) const {
    // Convert geographic coordinates to pixel coordinates
    int pixel = static_cast<int>((lon - geoTransform[0]) / geoTransform[1]);
    int line = static_cast<int>((lat - geoTransform[3]) / geoTransform[5]);

    if (pixel < 0 || pixel >= width || line < 0 || line >= height) {
        return 0.0f; // Or some default value
    }

    return elevationData[line * width + pixel];
}

glm::vec2 Terrain::getWorldSize() const {
    // Calculate the size in meters (approximate)
    float latCenter = geoTransform[3] + (height / 2) * geoTransform[5];
    float metersPerDegree = 111319.9f; // Approximate meters per degree at the equator
    float metersPerDegreeLon = metersPerDegree * std::cos(latCenter * M_PI / 180.0f);

    float widthMeters = std::abs(geoTransform[1] * width * metersPerDegreeLon);
    float heightMeters = std::abs(geoTransform[5] * height * metersPerDegree);

    return glm::vec2(widthMeters, heightMeters);
}

float Terrain::getNormalizedElevation(float lon, float lat) const {
    float elevation = getElevation(lon, lat);
    return (elevation - minElevation) / (maxElevation - minElevation);
}

Terrain::~Terrain() {
    // Destructor implementation
    // If you're using GDAL, you might need to clean up here
    if (dataset) {
        GDALClose(dataset);
    }
}