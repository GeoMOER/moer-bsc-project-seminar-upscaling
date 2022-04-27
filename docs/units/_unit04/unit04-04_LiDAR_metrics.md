---
title: "EX | Deriving LiDAR products"
header:
  image: "/assets/images/teaser/lidar_coffee.jpg"
  caption: 'Image: [**Environmental Informatics Marburg**](https://www.uni-marburg.de/en/fb19/disciplines/physisch/environmentalinformatics){:target="_blank"}'
  order: 3
---

## Exercise: LiDAR products 

In this exercise we want to derive the most common LiDAR products DTM (Digital Terrain Model), DSM (Digital Surface Model) and CHM (Canopy Height Model).

<img src="lidarTree-height.png" width="1104" height="359" align="centre" vspace="10" hspace="20">
<font size="-1">source: https://www.earthdatascience.org/images/courses/earth-analytics/lidar-raster-data-r</font>

## Rasterizing the point cloud

Since the point clouds are 3D , to get a DTM , DSM and CHM we need some sort of grid to rasterize this point cloud.
Of course lidR provides the functions for these tasks. Have a look at grid_terrain(), grid_canopy() or the more flexible grid_metrics().

## Task 1
* load the flm1_clipped.las file that you save earlier.
* Calculate DTM, DSM and CHM with 10m resolution.
* Save your rasters as a tif file. 

## Task 2 

We want to calculate what is the mean vegetation height of our forest plot?

* Load the cropped Sentinel 2 scene from the previous session
* Crop the scene for our forest plot
* Calculate a DEM with the Sentinel tile as a grid template with grid_metrics()
* Normalize the pointcloud with lasnormalize(). What happened?
* Calculate the mean vegetation height for each pixel
* Save the mean vegetation height as a tif file
* Plot the mean vegetation height as overlay to the forest sentinel scene









