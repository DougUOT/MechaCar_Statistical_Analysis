######## Challenge 15   ########
## Deliverable 1 ##

## Use the library() function to load the dplyr package

## install.packages("dplyr")
library(stats)
library(dplyr)
library(tidyverse)

## Import and read in the MechaCar_mpg.csv file as a dataframe
mercha_mpg <- read.csv("Resources/MechaCar_mpg.csv")

## Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), 
##and add the dataframe you created in Step 4 as the data parameter.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mercha_mpg)


# Create a new RScript in your R source pane, name it MechaCarChallenge.RScript, and save it to your active directory.


summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mercha_mpg))

lm(mpg ~ vehicle_length + ground_clearance, data=mercha_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=mercha_mpg))


## Deliverable 2 ######################

## In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.

mecha_susp <- read.csv("Resources/Suspension_Coil.csv", check.names = FALSE ,stringsAsFactors = FALSE)

## Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- mecha_susp %>% summarize(Mean_PSI=mean(PSI), 
                              Median_PSI=median(PSI), 
                              Var_PSI=var(PSI), 
                              std_Dev_PSI=sd(PSI))

## Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Lot_summary <- mecha_susp %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), 
                                                              Median_PSI=median(PSI), 
                                                              Var_PSI=var(PSI), 
                                                              std_Dev_PSI=sd(PSI))

### Extra Create Plot Chart Box PSI Lot
## Plt1 <- ggplot(mecha_susp,aes(y=PSI)) #import dataset into ggplot2
## Plt1 + geom_boxplot() # add boxplot

## Plt2 <- ggplot(mecha_susp,aes(x= Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
## Plt2 + geom_boxplot()


## Deliverable 3 ####################

## In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

t.test(mecha_susp$PSI,mu=1500)

lot1 <-subset(mecha_susp, Manufacturing_Lot =="Lot1")
lot2 <-subset(mecha_susp, Manufacturing_Lot =="Lot2")
lot3 <-subset(mecha_susp, Manufacturing_Lot =="Lot3")


## Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch. 


t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)







