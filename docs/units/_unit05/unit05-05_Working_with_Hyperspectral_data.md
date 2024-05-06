---
title: "EX | Working with hyperspectral data"
header:
  image: "/assets/images/teaser/hyp_crop.png"
  caption: 'Image: [**NASA - Hyperion**](https://earthobservatory.nasa.gov/features/EO1Tenth/page3.php){:target="_blank"}'
toc: true
---

In this exercise, we use hyperspectral rasters to calculate different vegetation indices.
<!--more-->


## Example: Calculating vegetation indices


We will be using processed hyperspectral data and the hsdar R package to get two different vegetation indices.
Since the data processing takes time, we show here only a small example. 

Please refere [here](https://www.jstatsoft.org/article/view/v089i12){:target="_blank"} for the article on hsdar package.

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
hy_raster <- raster::stack("data/hy_flm1.tif")

# crop out the study area
flm1 <- raster::crop(hy_raster,aoi)

# visualize your raster
plot(flm1)

# save the output
writeRaster(flm1, "hy_flm1_clipped.tif")

```
## Speclibs

In this part, we use our hyperspectral raster and band information to create our study area's spectral library

```r

help(hsdar) # to see different functions in hsdar library

# read in the band information file 
band_info <- read.csv("band_info_2015.csv")

str(band_info) #gives a view of how the data looks

# get the wavelengths for the speclib
wavelength <- band_info$wavelength

# creating speclib  

speclib_flm1 <- speclib(brick(hy_flm1_clipped), wavelength)
str(speclib_flm1)

```
## Task 1

* Plot the spectral library
* Identify the difference between the different lines in the plot 
* Plot the mean and median using the FUN parameter

### Vegetation indices

Let's use the speclib to calculate vegetation indices

```r
# create a list of desired vegetation indices
?vegindex # hsdar function for vegetation indices

# we take two - NDVI and SAVI
vi = c("NDVI", "SAVI")

# parallel processing

library(future)
future::plan(multisession, workers = 2L)

# calculate vegetation indices
flm1_vi <- vegindex(speclib_flm1, index = vi)
```

## Task 2

* What is the difference between the two indices
* Use cellstats() to generate a dataframe for mean and standard deviation of the two indices
* Make a single dataframe such that you get the following structure (hint: use transpose function)

```r
PlotID mean_NDVI sd_NDVI mean_SAVI sd_SAVI
flm1	---	  ---      --- 	    ---
```
