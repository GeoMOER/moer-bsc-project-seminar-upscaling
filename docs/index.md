---
title: Upscaling biodiversity using LiDAR and hyperspectral remote sensing
layout: splash
date: '2018-02-06 13:00:00 +0100'
header:
  overlay_color: "#000"
  overlay_filter: 0.6
  overlay_image: "/assets/images/title/land_use_map_Kili.png"
  caption: 'Image: [Andreas Hemp (2006)](https://doi.org/10.1111/j.1365-2028.2006.00679.x)'
  cta_label: Go to course units
  cta_url: "/units.html"
excerpt: Use upscaling methods and multi-sensor data for predicting biodiversity.
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
* Handle LiDAR, Hyperspectral and Sentinel data,
* Use upscaling methods,
* Include and process different types of remote sensing data in a single workflow, and
* Apply all of the above to a real-world example.




# Setting

This course will take place in a hybrid setting (exept for the first session) with a digital classroom and additional students being present in person in the physical classroom (**F 14 | 00A19**).
Details on this synchronous hybrid classroom format will be provided in the first session, which will take place **in presence only on Wednesday 12.04.2023 at 09:15 am**.
The link to the digital classroom of the first session is provided in the [Ilias course environment](https://ilias.uni-marburg.de/goto.php?target=crs_2785662&client_id=UNIMR){:target="_blank"}
 (only accessible for members of the course who are logged-in into Ilias). 
Please also seriously check and follow the [Information on the Coronavirus](https://www.uni-marburg.de/de/universitaet/administration/sicherheit/coronavirus){:target="_blank"} of the University of Marburg.
{: .notice--info}




# Syllabus

The course encompassed 12 sessions from 12.04.2023 to 12.07.2023.

| Session | Date | Topic | Content |
|---------|------|-------|---------|
||| **Getting started** |
| 01 | 12.04.2023   | First things first                                     | Course introduction, R Basics, GitHub, GitHub classroom |
||| **Remote sensing basics and data**  |
| 02 | 19.04.2023   | Remote sensing basics and LiDAR remote sensing  | Introduction to Kili-SES project,Remote sensing basics, Introduction to LiDAR, working with point clouds and deriving LiDAR products|
| 03 | 26.04.2023   | Hyperspectral remote sensing          	                     |Introduction to hyperspectral data, speclibs and deriving vegetation indices|
| 04 | 03.05.2023   | Working with Sentinel 2 data       			     |Introduction to FORCE, Sentinel 2 data preparation and application  |
||| **Start research project**  |
| 05 | 10.05.2023   | Set up your research project      		     | Defining project work, research questions and discussing deadlines |
||| **Upscaling Methodology**                              |
| 06 | 17.05.2023   | Upscaling workflow 1                                       | What is upscaling, understanding the workflow, data preparation, basics of machine learning models |
||| **Break**                              |
|    | ~~24.05.2023~~ | Sport                        				 | Session canceled |
| 07 | 31.05.2023   | Upscaling workflow 2 	                            	 | Designing a machine learning model, testing and fine tuning the model |
||| **Break**                              |
|    | ~~07.06.2023~~ | Project week of the department                        	 | Session canceled |
| 08 |  14.06.2023  | Upscaling workflow 3	                            	 | Upcaling : doing predictions |

||| **Assisted working phase** |
| 09 | 21.06.2023   | Feedback on project outline and Work on projects | Discussion on project outlines and time for working on projects             |
| 10 | 28.06.2023   | Work on projects | Time for working on projects             |
| 11 | 05.07.2023   | Work on projects | Time for working on projects             |
||| **Wrap up** |
| 12 | 12.07.2023   | Wrap up, Evaluation, and Feedback                      | Time for questions and feedback, goodbye |


# Deliverables

The graded course certificate will be based on an individual portfolio hosted as a personal repository on GitHub. 
The individual portfolio items are defined in the respective course assignments. 
At the end of the course, a project work based on the individual assignments must be submitted, which will be marked.


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


