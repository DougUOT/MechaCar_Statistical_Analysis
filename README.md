# MechaCar_Statistical_Analysis
Learn how to use R and statistics in order to analyze vehicle data

## Overview of Project

In this project we'll learn how to design statistical studies and interpret study results which will allow us to take on more advanced data engineering problems. Also, in this project we will cover the basics of R including reading in the dataset, manipulating the data, performing calculations, and visualizing the data using a variety of 2D plots. Additionally, we'll use R to perform all of our statistical tests and analyses. 

This assignment is related to the Bootcamp Data Analytics from the University of Toronto. It comprises the goals below for this module: 

Follow below the goals for this module:

1) Objective 1: Linear Regression to Predict MPG
2) Objective 2: Summary Statistics on Suspension Coils
3) Objective 3: T-Test on Suspension Coils
4) Objective 4: Design a Study Comparing the MechaCar to the Competition


## Resources

* Data Source: [MechaCar_mpg.csv](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv), and the database is available on [MechaCar_mpg.csv](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv) and [Suspension_Coil.csv](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)
* Software & Data Tools: R Studio 2021.09.2 and R

## Results & Code

##  Objective 1: Linear Regression to Predict MPG

Technical Analysis
* The MechaCar_mpg.csv file is imported and read into a dataframe 
* An RScript is written for a linear regression model to be performed on all six variables
* An RScript is written to create the statistical summary of the linear regression model with the intended p-values 
* There is a summary that addresses all three questions 

Written Summary
In your README, create a subheading, ## Linear Regression to Predict MPG, and write a short summary using a screenshot of the output from the linear regression, and address the following questions:

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Understanding of R-Squared
The most widely recognized translation of r-squared is the way the regression model fits the noticed information. In the analysis above, related we do have an r-squared of 0.7149 uncovers that 71.49% of the information fit the regression model. By and large, a higher r-squared shows a superior fit for the model.


Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
