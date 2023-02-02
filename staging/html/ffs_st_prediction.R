# Create leaflet map of MOF

library(mapview)
library(raster)

setwd("C:/Users/bhandari/Documents/GitHub/moer-mpg-upscaling/staging/html")

mapviewOptions(basemaps = mapviewGetOption("basemaps")[c(3, 1:2, 4:5)])

map_pred = raster("D:/Kili_SES/course_bsc_upscaling_netra/upscaling_methodology/t1.tif") 

m <- mapview(map_pred)

## create standalone .html
mapshot(m, url = "ffs_st_prediction.html")