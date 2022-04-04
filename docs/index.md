---
title: Upscaling
layout: splash
date: '2018-02-06 13:00:00 +0100'
header:
  overlay_color: "#000"
  overlay_filter: 0.6
  overlay_image: "/assets/images/title/Kilikarte_CC_Tanzania_72dpi-1800x1386_7-1.jpg"
  caption: 'Image: [**Environmental Informatics Marburg**](https://kili-ses.senckenberg.de/wp-content/uploads/2021/03/Kilikarte_CC_Tanzania_72dpi-300x231.jpg)'
  cta_label: Go to course units
  cta_url: "/units.html"
excerpt: xxx.
feature_row_intro:
- excerpt: Master level course in [Physical Geography](https://www.uni-marburg.de/de/fb19/studium/studiengaenge/m-sc-physische-geographie/herzlich-willkommen-beim-master-physische-geographie){:target="_blank"} at Marburg University
feature_row_ilos:
- image_path: "/assets/images/envobs_ilos.jpg"
  alt: PC monitor laying in the garden of the institute.
  title: Intended learning outcomes
  excerpt: "Template..."
---

{% include feature_row id="feature_row_intro" type="center" %}

Understanding complex forest structures through field data collection have been increasingly being complemented with remote sensing methods. However, many remote sensing methods work best at a particular scale.
For example, Sentinel data can capture information to a very high resolution of 10m in 2D while LiDAR (Light Detection and Ranging) can most accurately explain forest structure in 3D.
Joint use of remote sensing data from multiple sensors can help us capture the complex vegetation structure at both local and regional levels. Such an understanding can be helpful for forest conservation and biodiversity management. 
This course will use pre-collected data on species richness and many environmental parameters like temperature, soil, etc. collected at plot level to upscale biodiversity to a regional scale. 


# What will be done in the course 
In this course, we will use Airborne LiDAR and hyperspectral remote sensing data along with Sentinel data to upscale biodiversity measured at plot scales.
The data used in this project is provided by the [Kilimanjaro-SES project](https://kili-ses.senckenberg.de/).



# Intended learning outcomes
At the end of this course you should be able to
  
* Feel comfortable with the usage of R,
* Know the basics of remote sensing theory and machine learning,
* Handle LiDAR, hyperspectral and Sentinel data,
* Use upscaling methods,
* Include and process different types of remote sensing data in a single workflow, and
* Apply all of the above to a real-world example.




# Setting

This course will take place in a hybrid setting (exept for the first session) with a digital classroom and additional students being present in person in the physical classroom (**F 14 | 00A19**).
Details on this synchronous hybrid classroom format will be provided in the first session, which will take place **in presence only on Wednesday 20.04.2022 at 10:15 am**.
The link to the digital classroom of the first session is provided in the [Ilias course environment](xxxx){:target="_blank"} (only accessible for members of the course who are logged-in into Ilias). 
Please also seriously check and follow the [Information on the Coronavirus](https://www.uni-marburg.de/de/universitaet/administration/sicherheit/coronavirus){:target="_blank"} of the University of Marburg.
{: .notice--info}




# Syllabus

The course encompassed 12 sessions from 20.04.2022 to 13.07.2022.

| Session | Date | Topic | Content |
|---------|------|-------|---------|
||| **Data basics** |
| 01 | 20.04.2022 | First things first           | Data and information, R, R Studio, R markdown, GitHub, GitHub classroom |
| 02 | 27.04.2022 | First things second          | Working environment, data sets, data types, data structures, logical operators, control structures |
||| **Remote sensing basics** |
| 03 | 04.05.2022 | Understanding remote sensing theory | Sensor types, spectral properties, satellites,data acquisition, temporal aspects |
| 04 | 11.05.2022 | Going visible to beyond visible | Understanding Sentinel, LiDAR and Hyperspectral data |
||| **Iteration 1: Starting simple** |
| 05 | 18.05.2022 | Working with spatial data    | Raster data, vector data, coordinate reference systems, reading and writing spatial data, spatial operators, mapping and simple spatial statistics |
| 06 | 25.05.2022 | Remote sensing in R          | Satellite data processing |
| 07 | 01.06.2022 | Select your variables        | Working with Hyperspectral data |
| 08 | 08.06.2022 | Predict your non-linear data | Working with LiDAR data |
||| **Iteration 2: Getting a taste of reality** |
| 09 | 15.06.2022 | Project Week      		 |  Add text here |
| 10 | 22.06.2022 | Digitization                 | Workshop/ tutorial|
| 11 | 29.06.2022 | Assignment                   | No course  |
||| **Individual assignments** |
| 12 | 06.07.2022 | Discussion                   | Individual assignmnet porblem solving session |
||| **Wrap up** |
| 13 | 13.07.2022 | Wrap up                      | Time for questions and feedback, individual data analysis problems, goodbye |


# Deliverables

The graded course certificate will be based on an individual portfolio hosted as a personal repository on GitHub. The individual portfolio items are defined in the respective course assignments. At the end of the course, a project work based on the individual assignments must be submitted, which will be marked.


# Preparation and prerequisites

The course assumes basic knowledge and skills in R and geo-information science.

This course uses additionally provided material for teaching basic R skills, 
which can be found [here](https://geomoer.github.io/moer-base-r/){:target="_blank"}.
{: .notice--success}

## Team

{% for author in site.data.authors %}
  {% include author-profile.html %}
 <br />
{% endfor %}


