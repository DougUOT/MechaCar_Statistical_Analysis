# MechaCar_Statistical_Analysis
Learn how to use R and statistics in order to analyze vehicle data

## Overview of Project

In this project, we will learn how to design statistical studies and interpret study results, taking on more advanced data engineering problems. Also, in this project, we will cover the basics of R, including reading in the dataset, manipulating the data, performing calculations, and visualizing the data using a variety of 2D plots. Additionally, we will use R to perform all of our statistical tests and analyses. 

This assignment is related to the Bootcamp Data Analytics from the University of Toronto. It comprises the goals below for this module: 

Follow below the goals for this module:

1) Objective 1: Linear Regression to Predict MPG
2) Objective 2: Summary Statistics on Suspension Coils
3) Objective 3: T-Test on Suspension Coils
4) Objective 4: Design a Study Comparing the MechaCar to the Competition


## Resources

* Data Source: [MechaCarChallenge.R](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/MerchaCarChallenge.R) and the database is available on [MechaCar_mpg.csv](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv) and [Suspension_Coil.csv](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)
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

 mgg = (-104.0)intercept + (6.267)vehicle_lenght + (0.001245)vehicle_weight + (0.06877)spoiler_angle + (3.546)ground_cleareance + (-3.411)AWD

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_1_1.PNG)

Written Summary
In our README, create a subheading, ## Linear Regression to Predict MPG, write a summary using a screenshot of the output from the linear regression, and address the following questions:

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The estimate of the ideal vehicle performance effect of vehicle length is 6.267, while the performance of vehicle weight is 0.001245, spoiler angel is 0.06877, ground clearance is 3.546 and AWD is -3.411.

So on-base of the variables results above, we do have vehicle length and ground clearance results with the relationship. 

Related to the estimate results, this means that for every 1% increase in vehicle length, there is a correlated 6% increase in a performance vehicle. Meanwhile, for every 1% increase in ground clearance, there is a 4% increase in a performance vehicle.

Regarding the t-value, this is the t-statistic for the predictor variable, calculated as (Estimate) / (Std. Error). We have the vehicle length with 9.563 and ground clearance with 6.551, both are statistically significant. 

About the Pr(>|t|), the p-value corresponds to the t-statistic. We do have a vehicle length of 2.60e-12 and ground clearance of 5.21e-08. The result is less than 0.05, so the variable is statistically significant.

* Is the slope of the linear model considered to be zero? Why or why not?

According to the results, the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. This way, we can express that there is adequate proof to reject our null hypothesis and that the slope of the linear model analyzed in our project is not zero.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The r-squared (r2) value is known as the coefficient of determination. It lets us how well the regression model approximates real-world data points. We have a multiple R-Squared of 0.7149, which implies that generally, 71.49% of the variability of our reliant variable is clarified utilizing this linear model. By and large, a higher r-squared shows a superior fit for the model, which means that the linear model result predicts the MechaCar prototypes effectively

Moreover, we do have a p-value of 5.35e-11 or 0.0000000000535. This result is less than some significance level (ex: 0.05), and its means that the predictor variables help foresee the worth of the response variable.

By joining the p-value of our hypothesis test with the r-squared value, the linear regression model turns into a robust statistics tool that both evaluates a connection among variables and gives a significant model to be utilized in any decision-making process.

Even removing the formula for the following variables such as vehicle_weight, spoiler angle and AWD, we have a Multiple R-squared of 0.674 and a p-value of 3.637e12. Its means that the linear model result still predicts the MechaCar prototypes  effectively.

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_1_2.PNG)

## Objective 2: Summary Statistics on Suspension Coils

CODE & IMAGE

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_2_Code.PNG)

* Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Follow below a brief detail and interpretation of all summary statistics of the suspension coil: 

  * Mean is the sum of all values divided by the total or count of the number of values;
  * Median is the middle value of the data set or numbers;
  * Variance is how far a set of data values are spread out from their mean;
  * Standard deviation is an action that is used to to evaluate how much variety or scattering of a set of data values; 

Mean PSI with 1498.78, Median PSI with 1500, Variance (Var_PSI) with 62.29 and Standard deviation (Std_Dev_PSI) with 7.892627

According to the image below, we do have the PSI metrics for all manufactoring lots

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_2_1.PNG)

* The following PSI metrics for each lot: mean, median, variance, and standard deviation.

Follow bellow the PSI metrics for each manufactoring lot:

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_2_2.PNG)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

According to analysis, the design specifications for the MechaCar suspension coils related to the manufacturing lots 1 and 2 meet the variance of the suspension coils. Also, it does not exceed 100 pounds per square inch. Manufacturing lot 1 has 0.98 pounds per square inch, and lot 2 has 7.47 pounds per square inch.

However, the manufacturing lot 3 has 170.29 pounds per square inch. Thus, exceeding 100 pounds per square inch e does not meet the design specification for the MechaCar suspension coils.


As explained before, the variance is how far a set of data values are spread out from their mean. So the manufacturing lot 3, in other words, is an outlier compared to other results and should be reviewed by the responsible at MechaCar company.

Moreover, the standard deviation of lot 3 has a high difference compared to lots 1 and 2. This result supports the analysis that lot three should be verified and does not meet the design specification.

## Objective 3: T-Test on Suspension Coils

* An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population 

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_3_Code.PNG)

* An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population
* There is a summary of the t-test results across all manufacturing lots and for each lot  

Our project will write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

According to the results, we have a p-value of 0.06028, much larger than our assumed significance level of 0.05%. Thus we can express adequate proof to reject our null hypothesis. In addition, we do have a mean of 1498.78, which means that the three lots analyzed are very close to statistically from the population mean of 1,500 pounds per square inch.


![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_3_1.PNG)

Next, we will write three more RScripts in our project using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

Follow below an brief analysis for each lot.

  * Manufacturing lot 1:

According to the results, we do have a p-value of 1, and mean of 1500, definitely, we must fail to reject the null hypothesis and also the manufacturing lot 1 is not statistically different from the population mean of 1,500 pounds per square inch.

  * Manufacturing lot 2:

According to the results, we have a p-value of 0.6072 and a mean of 1500.02; definitely, we must fail to reject the null hypothesis. The manufacturing lot 1 is not statistically different from the population mean of 1,500 pounds per square inch.

  * Manufacturing lot 3:

According to the results, we have a p-value of 0.04168 and a mean of 1496.14. The p-value result of Manufacturing lot 3 had a different result than lots 1 and 2, which is much smaller than our assumed significance level of 0.05%. We must reject the null hypothesis and assume that the two means are statistically different.

![](https://github.com/DougUOT/MechaCar_Statistical_Analysis/blob/main/Resources/Images/Capture15_3_2.PNG)

## Objective 4: Design a Study Comparing the MechaCar to the Competition

## Study Design: MechaCar vs Competition

We will use our knowledge of R design a statistical study to compare the performance of the MechaCar vehicles against the performance of vehicles from other manufacturers.

* What metric or metrics are you going to test?

  * o	Sales price (Numeric and Continuous variables): Sales price of a new car on the market. The goal is to compare sales price with the sales price of the competitors, whether cheaper or expensive
  * o	City fuel efficiency (Numerical and Continuous variables) How many litres of fuel the car uses in a 1 km city or urban traffic. The objective is to verify if the car is economical in using fuel in the city vs competitors.
  * o	Highway fuel efficiency (Numeric and Continuous variables) How many litres of fuel does the car use in 1 km on the road. The objective is to verify if the car is economical in using fuel on the road vs competitors.
  * o	Maintenance cost (Numeric and Continuous variables) The average maintenance cost per year. The objective is to compare the average maintenance cost (oil change, etc.) per year vs competitors.
  * Odometer (Numeric and Continuous variables) How many km were driven after the car was first purchased. The objective is to check if the car has many km driven or how many km this used car has vs competitors.
  * o	Resale price (Numeric and Continuous variables) what is the resale price considering the car is used. The goal is to verify the resale price after being used if the car is still valued or has depreciated against the prices of used cars of the competition.

* What is the null hypothesis or alternative hypothesis?

The null and alternate hypotheses are used to explain one of two outcomes from our proposed question, and both are mutually exclusive and exhaustive. In other words, no matter what, one of these statements must be used to explain our analysis results.

Notice that our null hypothesis is that our outcomes can be clarified by irregular possibility with no external impact. Conversely, our substitute theory addresses whatever other situation our outcomes could yield. When we laid out our null and alternate hypothesis, we would have to distinguish a statistical analysis to survey if our invalid theory is valid.

     * Ho | Null Hypothesis: When comparing MerchCar's variables with competitors, do customers have a perceived price value?
     * Ha | Alternative Hypothsis: When comparing MerchCar's variables to competitors, do customers NOT have a perceived price value? 


* What statistical test would you use to test the hypothesis? And why?

Below is a brief explanation based on the theoretical class at the University of Toronto in the Data Analytics Bootcamp course.

Even though information assortment and examination are significant, the foundation of the analytic technique is hypothesis testing. Hypotheses are used by the analytic technique to assist with limiting the extent of exploration and testing as well as give a good result of our outcomes. Without creating many hypotheses, it turns out to be dramatically harder to evaluate results and give quantifiable results to our analyses. As data analysts, we must match a bunch of hypotheses to an appropriate statistical test to guarantee that outcomes are deciphered accurately.

The p-value, or probability value, lets us know the probability that we would see comparable outcomes assuming we tried our information once more, assuming the null hypothesis is true. Subsequently, we utilize the p-value to give quantitative proof regarding which of our p-value are valid.

As well as deciding an importance level because of the significance of our discoveries, we should guarantee that our hypotheses and statistical tests are either one-tailed or two-tailed. The tails of our hypotheses or statistical tests allude to the distribution of measurements or observations used in the analysis.

Assuming our hypotheses and statistical test are both two-tailed, we can use the statistical test p-value as is. On the other hand, if our hypotheses are one-tailed, yet our statistical test is two-tailed, we can divide the statistical test p-value by 2

Suppose our determined p-value is more modest than our importance level. In that case, we will express sufficient statistical evidence that our null hypothesis is not valid. In this manner, we would reject our null hypothesis. Then again, if our determined p-value is more significant than our importance level. We would express that we do not have sufficient evidence to reject our null hypothesis. Along these lines, we fail to reject our null hypothesis.
.

* What data is needed to run the statistical test?

I recommend doing statistical analysis using a t-test to obtain test results of the hypothesis. Another analysis I recommend is the correlation analysis using pairs of variables, such as Sale Price vs Resale Price, City vs Highway Fuel Efficiency, Sale Price vs Maintenance Cost, Sale Price vs Resale Price, and Odometer vs. resale to check if there is any positive or negative correlation between the variables. Finally, I would recommend using the correlation matrix and linear regression (the lm and summary function on R) with all variables.

In order to standardize the metrics of each value in the dataset, I recommend using prices in dollars ($)fuel in litres or gallons. For fuel efficiency (city or highway), I suggest that it be analyzed considering how much fuel is in litres or gallons a vehicle uses travelling 1 km.








