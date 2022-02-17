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

CODE & IMAGE:

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_1_R_Code.PNG)

Follow below the final equation with six variables:

 mgg = (-104.0)interceot + (6.267)vehicle_lenght + (0.001245)vehicle_weight + (0.06877)spoiler_angle + (3.546)ground_cleareance + (-3.411)AWD

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_1_1.PNG)

Written Summary
In your README, create a subheading, ## Linear Regression to Predict MPG, and write a short summary using a screenshot of the output from the linear regression, and address the following questions:

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The estimate of the ideal vehicle performance effect of vehicle length is 6.267, while the performance of vehicle weight is 0.001245, spoiler angel is 0.06877, ground clearance is 3.546 and AWD is -3.411.

So on-base of the variables results above, we do have vehicle length and ground clearance results with the relationship. 

Related to the estimate results, this means that for every 1% increase in vehicle length, there is a correlated 6% increase in a performance vehicle. Meanwhile, for every 1% increase in ground clearance, there is a 4% increase in a performance vehicle.

Regarding to the t-value, this is the t-statistic for the predictor variable, calculated as (Estimate) / (Std. Error). We do have the vehicle length with 9.563 and ground clearance with 6.551 and both are statistically significant. 

About the Pr(>|t|), This is the p-value that corresponds to the t-statistic. We do have a vehicle length of 2.60e-12 and ground clearance of 5.21e-08. The result is less than 0.05, so It means that the variable is statistically significant.

* Is the slope of the linear model considered to be zero? Why or why not?

According to the results, the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Thusly, we can express that there is adequate proof to reject our null hypothesis, and that intends that the slope of the linear model analyzed in our project is not zero.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The r-squared (r2) value is known as the coefficient of determination. It lets us how well the regression model approximates real-world data points. We have a multiple R-Squared of 0.7149, which implies that generally, 71.49% of the variability of our reliant variable is clarified utilizing this linear model. By and large, a higher r-squared shows a superior fit for the model, its means that the linear model result predicts the MechaCar prototypes effectively

Moreover, we do have a p-value of 5.35e-11 or 0.0000000000535. This result is less than some significance level (ex: 0.05), and its means that the predictor variables help foresee the worth of the response variable.

By joining the p-value of our  of our hypothesis test with the r-squared value, the linear regression model turns into a robust statistics tool that both evaluates a connection among variables and gives a significant model to be utilized in any decision-making process

Even removing the formula for the following variables such as vehicle_weight, spoiler angle and AWD, we have a Multiple R-squared of 0.674 and a p-value of 3.637e12. Its means that the linear model result still predicts the MechaCar prototypes  effectively.

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_1_2.PNG)

## Objective 2: Summary Statistics on Suspension Coils

CODE & IMAGE

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_2_Code.PNG)

* Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Follow below a brief detail and interpretation of all summary statistics of the suspension coil: 

** Mean is the sum of all values divided by the total or count of the number of values;
** Median is the middle value of the data set or numbers;
** Variance is how far a set of data values are spread out from their mean;
** Standard deviation is an action that is used to to evaluate how much variety or scattering of a set of data values; 

Mean PSI with 1498.78, Median PSI with 1500, Variance (Var_PSI) with 62.29 and Standard deviation (Std_Dev_PSI) with 7.892627

According to the image below, we do have the PSI metrics for all manufactoring lots

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_2_1.PNG)

* The following PSI metrics for each lot: mean, median, variance, and standard deviation.

Follow bellow the PSI metrics for each manufactoring lot:

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_2_2.PNG)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

According to analysis the design specifications for the MechaCar suspension coils related to the manufacturing lots 1 and 2 meet the variance of the suspension coils, and it does not exceed 100 pounds per square inch. Manufacturing lot 1 has 0.98 pounds per square inch, and lot 2 has 7.47 pounds per square inch.

However, the manufacturing lot 3 has 170.29 pounds per square inch e thus does exceed 100 pounds per square inch e do not meet the design specification for the MechaCar suspension coils.

As explained before, the variance is how far a set of data values are spread out from their mean. So the manufacturing lot 3, in other words, is an outlier compared to other results and should be reviewed by the responsible at MechaCar company.

Moreover, the standard deviation of lot 3 has a high difference compared to lots 1 and 2. This result supports the analysis that lot three should be verified and does not meet the design specification.

## Objective 3: T-Test on Suspension Coils

* An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population 

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_3_Code.PNG)

* An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population
* * There is a summary of the t-test results across all manufacturing lots and for each lot  

In our project, we will write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

According to the results, we do have a p-value of 0.06028, which is much larger than our assumed significance level of 0.05%, thus we can express that there is adequate proof to reject our null hypothesis. In addition, we do have a mean of 1498.78, which means that the three lots analyzed are very close to statistically from the population mean of 1,500 pounds per square inch

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_3_1.PNG)

Next, we will write three more RScripts in our project using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

Follow below an brief analysis for each lot.

Manufacturing lot 1:

According to the results, we do have a p-value of 1, and mean of 1500, definitely, we must fail to reject the null hypothesis and also the manufacturing lot 1 is not statistically different from the population mean of 1,500 pounds per square inch.

Manufacturing lot 2:

According to the results, we do have a p-value of 0.6072, and mean of 1500.02, definitely, we must fail to reject the null hypothesis and also the manufacturing lot 1 is not statistically different from the population mean of 1,500 pounds per square inch.

Manufacturing lot 3:

According to the results, we do have a p-value of 0.04168, and mean of 1496.14. The p-value result of the Manufacturing lot 3 had a different result when we compared to the results of lots 1 and 2, which is much smaller than our assumed significance level of 0.05%, we must reject the null hypothesis, there is a weak correlation and also it is not statistically different.

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_3_2.PNG)

## Objective 4: Design a Study Comparing the MechaCar to the Competition

### Study Design: MechaCar vs Competition

* What metric or metrics are you going to test?
* What is the null hypothesis or alternative hypothesis?
* What statistical test would you use to test the hypothesis? And why?
* What data is needed to run the statistical test?








