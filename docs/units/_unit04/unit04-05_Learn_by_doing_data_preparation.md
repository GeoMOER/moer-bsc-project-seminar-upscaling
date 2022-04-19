---
title: Learn By Doing:Sentinel-2 Preparation
header:
  image: "/assets/images/teaser/ndvi.jpg"
  caption: 'Image: [**Environmental Informatics Marburg**](https://www.uni-marburg.de/en/fb19/disciplines/physisch/environmentalinformatics){:target="_blank"}'
---


## Data acquisition and first steps

* Download the shapefile for Kilimanjaro southern slope here .
* Download the Sentinel-2 scene for Kilimanjaro southern slope from 13 January 2022. Make sure you get the L2A dataset using sen2r package.
* Create a new R project or use your existing one for the course and save the downloaded zipfile in your raw data folder.


## Data preparation 1

* Create a raster stack of the bands with 10 m resolution. 
* Which bands are these and what colors do they represent?
* Print out the names of these bands.
* Change the names according to the represented color.

## Data preparation 2

* Merge the Sentinel tiles 37MCS and 37MBS
* Set the correct projection UTM 37S
* Crop the Sentinel data for the given shapefile
* To see if everything worked fine, plot the first layer of your stack.
* Save the cropped stack as a tif file.

## Have a look

* Plot a True Color Composite
* Plot a False Color Composite
