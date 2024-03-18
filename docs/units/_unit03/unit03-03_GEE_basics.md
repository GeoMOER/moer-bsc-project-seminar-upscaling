---
title: LM | Google Earth Engine basics
header:
  image: "/assets/images/teaser/ndvi.jpg"
  caption: 'Image: [**Environmental Informatics Marburg**](https://www.uni-marburg.de/en/fb19/disciplines/physisch/environmentalinformatics){:target="_blank"}'
toc: true
---

Learn the essentials of Google Earth Engine, Earth Engine Data Catalog and java scripting
<!--more-->


## What is Google Earth Engine? 
[Google Earth Engine](https://earthengine.google.com/) is a powerful platform designed for analyzing and visualizing environmental data. 
Imagine you have a supercomputer that can access a huge library of satellite images of Earth taken over the last few decades. This is what Google Earth Engine provides.

## Why GEE is relevant to us?

**Massive Satellite Imagery Database:** Google Earth Engine has a vast collection of satellite images. This database is constantly updated and includes historical data, which is great for observing changes over time.

**Powerful Computing Resources:** You don't need a high-end computer to use it. Google Earth Engine does the heavy lifting on its servers, so you can run complex analyses and algorithms through a web interface without needing powerful hardware.

**Environmental Monitoring and Analysis:** It's widely used for environmental research like tracking deforestation, monitoring water levels in lakes and rivers, observing the melting of glaciers, and analyzing urban development.

**Accessible to Non-Experts:** The platform is designed to be user-friendly, so even if you're not an expert in remote sensing or geographical information systems (GIS), you can still use it. There's a bit of a learning curve, but there are plenty of tutorials to help you get started.

**Collaboration and Sharing:** You can collaborate with others and share your findings. It's a great tool for group projects or research work.

**Real-World Applications:** The data and insights gained from Google Earth Engine can have real-world implications, such as helping to inform policy decisions on climate change or natural resource management.

## Introduction to the GEE code editor

Once you have signed up for an account with GGE, you can now start playing around with satellite data using the [GEE code editor](https://code.earthengine.google.com/). The code editor is a web-based integrated development environment (IDE) for writing and executing JavaScript code for Earth Engine.
A very well documented guide for working with GEE can be found [here](https://developers.google.com/earth-engine/guides) 

<img src="Code_editor_diagram.png" width="1280" height="755" align="centre" vspace="10" hspace="20">
<i>Image: Diagram of components of the Earth Engine Code Editor at code.earthengine.google.com</i>


## Earth Engine Data Catalog

The EE data catalog provides a large variety of raster datasets, which you can browse as well as directly add in the code editor (see below).

<img src="EE_data_catalog.png" width="1280" height="755" align="centre" vspace="10" hspace="20">
<i>Image: [Interface for Earth Engine Data Catalog](https://developers.google.com/earth-engine/datasets/catalog)</i>


<img src="catalog_example.png" width="1280" height="755" align="centre" vspace="10" hspace="20">
<i>Image: [Example from the catalog dataset showing details for Sentinel-2](https://developers.google.com/earth-engine/datasets/catalog/COPERNICUS_S2_SR_HARMONIZED)</i>

<img src="catalog_script.png" width="1280" height="755" align="centre" vspace="10" hspace="20">
<i>Image: [Example from the catalog dataset showing script to access Sentinel-2 data](https://developers.google.com/earth-engine/datasets/catalog/COPERNICUS_S2_SR_HARMONIZED)</i>


## JavaScripting with GEE
To get started with GEE we need to first learn some basics of JavaScript. 
Following are a few necessary functions we will need, but more and detailed guide can be found [here](https://developers.google.com/earth-engine/tutorials/tutorial_js_01).
 

* Data Handling
 * Loading Datasets:  ee.Image() and ee.ImageCollection().
 * Filtering Data:  filter(), filterDate(), and filterBounds() 
