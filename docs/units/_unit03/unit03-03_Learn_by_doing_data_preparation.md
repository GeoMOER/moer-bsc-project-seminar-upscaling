---
title: "EX | Sentinel-2 Preparation"
header:
  image: "/assets/images/teaser/ndvi.jpg"
  caption: 'Image: [**Environmental Informatics Marburg**](https://www.uni-marburg.de/en/fb19/disciplines/physisch/environmentalinformatics){:target="_blank"}'
toc: true  
---

## Things you need for this exercise
* A shapefile of the study area (see below)
* The names of the required Sentinel 2 tiles - 37MCS and 37MBS 
* Parameters to download Sentinel 2 data  (see below)
{: .notice--info}


## Data acquisition and first steps

1. Download the shapefile for Kilimanjaro southern slope [here](http://85.214.102.111/kili_data/){:target="_blank"}. 
2. Download the Sentinel-2 scene for Kilimanjaro southern slope from 03 January 2022. Make sure you get the L2A dataset using the sen2r package.
   (Parameters see below)	
3. Save the downloaded files in the raw data folder of your working environment.

```r
#load the library
library(sen2r)

#Open the GUI using the following function
sen2r()
```
A new window appears in your R studio, now add the following parameters as you move along the menu on the left hand side 

1. Product selection
   1. Type of processing - Processed spatial files (surface reflectance, spectral indices, ...) in the custom format
   1. Products and sensors
     1. Surface reflectances: BOA (Bottom of Atmosphere)
        * Accessory layers: SLC (Surface classification map)
        * SAFE levels needed: Sentinel 2A and Sentinel 2B
     2. SAFE options 
        * Download mode – Online
        * Input servers – ESA Hub
        * Max. SAFE cloud cover 10%
        * ESA Hub Options – Order from LTA
        * Login to SciHub – Add your registration details for SciHub
        * Overwrite SAFE existing products – No
        * Delete raw SAFE files after processing - No
        * Atmospheric correction - default
1. Spatiotemporal selection 
   1. Temporal range 
      * Time interval – select 13 January 2022
      * Time period type – Full 
   1. Area of Interest 
      * Load vector file -insert shapefile for your region
      * Tiles selected – 37MBS, 37MCS
      * Extent name – sen2r
      * Orbits selected – default
1. Processing options 
   1. Output files 
      * Directory for output processed products: Select the folder where you want to store the data.
      * Group products in subdirectories – Yes
      * Create thumbnails – Yes
      * Overwrite existing products – No 
      * Output file format – GeoTIFF
      * Output compression – High (Deflate)
   1. Output extent 
      * Clip outputs on the selected extent? No
      * Mask data outside the selected polygons? No
      * Save single tiles? Yes
      * Output directory for single tiles - Select the folder where you want to store the data.
   1. Cloud mask
      * Mask cloud-covered pixels? No
      * Processing order 
      * Processing order step by step
      * Parallel computation yes 
      * Cores 5
1. Spectral Indices - Keep default 
1. RGB images selection - Keep default
1. Save options as – Save your parameters in the same folder as used for data storage above
1. Create Log – Save your log in the same folder as used for data storage above
1. Launch processing


## Data preparation 1: Raster Stack

* Create a raster stack of the bands with 10 m resolution. 
* Which bands are these and what colors do they represent?
* Print out the names of these bands.


## Have a look

* Plot a True Color Composite
* Plot a False Color Composite

