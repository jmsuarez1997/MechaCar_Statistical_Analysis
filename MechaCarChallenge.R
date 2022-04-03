#1. Linear Regression to Predict MPG
#Import libraries
install.packages("tidyverse")
library(tidyverse)
library(dplyr)

#read in the MechaCar CSV
MechaCar <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar)

#Perform linear regression using the lm() function. Use all six variables. 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)

#use summary to determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))


# 2. Visualizations for the Trip Analysis
#read in Suspension_Coil.csv
Suspension <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(Suspension)

#create a total summary table for PSI - calculate mean, median, variance, standard deviation
total_summary <- Suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI),.groups = 'keep')

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Meadian = median(PSI), Variance = var(PSI), SD = sd(PSI),.groups = 'keep')




