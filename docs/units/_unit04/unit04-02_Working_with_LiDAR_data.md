---
title: Working with LiDAR data
header:
  image: "/assets/images/teaser/lidar_coffee.jpg"
  caption: 'Image: [**Environmental Informatics Marburg**](https://www.uni-marburg.de/en/fb19/disciplines/physisch/environmentalinformatics){:target="_blank"}'
---

## Example: LiDAR point clouds I/O and clipping

Since the LiDAR data can be quite large and needs higher processing power, only a small example is taken here. 
We will be using point cloud data and derive usable lidar metrics using the lidR package. 

Please refer [here](https://r-lidar.github.io/lidRbook/){:target="_blank"} to get a detailed idea of what all can be done using LiDAR data.

## Downloading LiDAR point cloud data

You can download the example point cloud data [here](http://85.214.102.111/kili_data/){:target="_blank"}

## Input/Output, Clipping and Visualizing point clouds

This following code shows you a simple input/output command and lidR::lasclip which is similar to raster::crop and a simple 3D visualization.

```r
# load the following libraries

library(lidR)
library(sp)
library(rgdal)

# laod in the example study area
aoi <- readOGR("data/lidarArea.gpkg")

# load in the example point cloud file 
point_cloud <- readLAS("data/flm1.las") #point cloud for Erica forest in Mt. Kilimanjaro

# crop out study area
flm1 <- lasclip(point_cloud,aoi)

#to clean up the RAM
rm(point_cloud) #removes larger point cloud and frees up our space
gc() #garbage collector for cleaning the RAM

# 3D visualization
plot(flm1) #plotting las files will open a new window , you can move the data in 360 degress to notice the vegetation structure

#save the output
writeLAS(flm1, "/data/flm1_clipped.las")

```

## Task 1

* Plot the LiDAR data again, but experiment with different columns for the coloring of the points
* What information could you gain from these plots?
* Filter the LiDAR data. Only keep points above an intensity value of 300
* Plot them. What points are these? What could you do with those points?
* Filter the LiDAR data. Only keep points which belong to the classification “2”
* Plot them. What points are these? What could you do with those points?



