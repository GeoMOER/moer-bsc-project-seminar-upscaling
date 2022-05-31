---
title: "EX | Upscaling"
header:
  image: "/assets/images/teaser/unit7.jpg"
  caption: 'Image: [**WHC UNESCO**](https://whc.unesco.org/en/list/403/)'
  toc : true
---


<img src="predictions.png" width="1500" height="500" align="centre" vspace="10" hspace="20">
Source : Netra Bhandari

In this section of the upscaling workflow, we carry out our last step i.e., area wide predictions. For this we follow two steps 
* Generating a set of remote sensing proxy predictors - cropped to the area you want to upscale to
* and, using the previously designed model to upscale 

The final results are shown as maps. Taking the processing time into consideration, we show here the upscaled plant richness for FLM category (forest lower montane). 

## Creating a stack of remote sensing predictors 

```r
library(terra)
library(sf)

## generating set of remote sensing predictors

#load in all the available remote sensing proxy variables used in the model
setwd("D:/Kili_SES/course_bsc_upscaling_netra/upscaling_methodology")

predictors <- c("DEM","aspect","slope","mmt",
                "ph_mean_0_20cm","ph_mean_20_50cm","NDVI_mean","ph_sd_0_20cm","ph_sd_20_50cm")

#roi
shp_kili <- sf::st_read("./upscaling_data/vectors/VegAug1_KILI_SES.shp")
shp_kili_flm <- shp_kili[shp_kili$grid_code == 18,]
shp_kili_flm <- sf::st_transform(shp_kili_flm,  32737) #epsg code for kili is 32737, you can also use UTM 37S
shp_kili_flm <- terra::vect(shp_kili_flm)

# ndvi
ndvi <- terra::rast("./upscaling_data/rasters/ndvi.tif") #same as generated in unit 3
ndvi_kili <- terra::mask(ndvi,shp_kili_flm)
names(ndvi_kili) <- "NDVI_mean" #lets maintain the same terminology as the models

## dem 

dem <- terra::rast("./upscaling_data/rasters/kiliDEM_UTM37S.tif")
dem_kili <- terra::mask(dem,shp_kili_flm)
names(dem_kili) <- "DEM"
dem_kili <- terra::resample(dem_kili,ndvi_kili)#10m resolution

# aspect
aspect <- terra::rast("./upscaling_data/rasters/DEM_UTM37S_WGS84_30m_Hemp_aspect.tif")
aspect_kili <- terra::mask(aspect,shp_kili_flm)
names(aspect_kili) <- "aspect"
aspect_kili <- resample(aspect_kili,ndvi_kili)

#slope
slope <- terra::rast("./upscaling_data/rasters/DEM_UTM37S_WGS84_30m_Hemp_slope.tif")
slope_kili <- terra::mask(slope,shp_kili_flm)
names(slope_kili) <- "slope"
slope_kili <- resample(slope_kili,ndvi_kili)

#pH
ph <- terra::rast("./upscaling_data/rasters/ph_kili.tif")
ph <- terra::mask(ph,shp_kili_flm)
ph <- resample(ph,ndvi_kili)
names(ph) <- c("ph_mean_0_20cm","ph_mean_20_50cm","ph_sd_0_20cm","ph_sd_20_50cm")
#mmt
mmt <- terra::rast("./upscaling_data/rasters/mean_mmt_all_months.tif")
mmt_kili <- terra::mask(mmt,shp_kili_flm)
names(mmt_kili) <- "mmt"
mmt_kili <- resample(mmt_kili,ndvi_kili)

#stack all rasters
predictors_rs <- c(dem_kili,aspect_kili,slope_kili,mmt_kili, ph$ph_mean_0_20cm,ph$ph_mean_20_50cm,ndvi_kili,
                   ph$ph_sd_0_20cm, ph$ph_sd_20_50cm)

names(predictors_rs) #recheck names

terra::writeRaster(predictors_rs,"./predictors_rs_flm.tif")

```
<mark> to be updated further </mark>
