---
title: Working with hyperspectral data
header:
  image: "/assets/images/teaser/hyp_crop.png"
  caption: 'Image: [**NASA - Hyperion**](https://earthobservatory.nasa.gov/features/EO1Tenth/page3.php){:target="_blank"}'
---

In this exercise we use hyperspectral rasters to calculate different vegetation indices

## Example : Calculating vegetation indices
<!--more-->

We will be using processed hyperspectral data and the hsdar R package to get two different vegetation indices.
Since the data and processing takes time, we show here only a small example. 

Please refere [here](http://138.232.16.156/article/view/v089i12) for the article on hsdar package.

## Downloading the data 

You can download the example hyperspectral data [here](http://85.214.102.111/kili_data/){:target="_blank"}

## Input/Output and visualization

```r
# load the following libraries

library(hsdar)
library(raster)
library(sp)
library(rgdal)

# load in the example study area

aoi <- readOGR("data/hypArea.gpkg")

# load in the example hyperspectral raster
hy_raster <- raster("data/hy_fer1.tif")

# crop out the study area
fer1 <- raster::crop(hy_raster,aoi)

# visualize your raster
plot(fer1)

# save the output
writeRaster(fer1, "hy_fer1_clipped.tif")

```
## Speclibs

In this part, we use our hyperspectral raster and band information on to create our study area's spectral library

```r

help(hsdar) # to see different functions in hsdar library

# read in the band information file 
band_info <- read.csv("band_info_2016.csv")

str(band_info) #gives a view of how the data looks

# get the wavelengths for the speclib
wavelength <- band_info$wavelength

# creating speclib  

speclib_fer1 <- speclib(brick(hy_fer1_clipped), wavelength)
str(speclib_fer1)

```
## Task 1

* Plot the spectral library
* Identify the difference between the different lines in the plot 
* Plot the mean and median using the FUN parameter

### Vegetataion indices

Lets use the speclib to calculate vegetation indices

```r
# create a list of desired vegetation indices
?vegindex # hsdar function for vegetation indices

# we take two - NDVI and SAVI
vi = c("NDVI", "SAVI")

# parallel processing

library(future)
future::plan(multisession, workers = 2L)

# calculate vegetation indices
fer1_vi <- vegindex(speclib_fer1, index = vi)
```

## Task 2

* What is the difference between the two indices
* Use cellstats() to generate a data frame for mean and standard deviation of the two indices
* Make a single dataframe such that you get the following structure (hint : use transpose function)

```r
PlotID mean_NDVI sd_NDVI mean_SAVI sd_SAVI
fer1	---	  ---      --- 	    ---
```