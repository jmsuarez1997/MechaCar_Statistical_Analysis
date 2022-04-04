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


# 2. Summary Statistics on Suspension Coils
#read in Suspension_Coil.csv
Suspension <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(Suspension)

#create a total summary table for PSI - calculate mean, median, variance, standard deviation
total_summary <- Suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI),.groups = 'keep')

#create a summary table for each manufacturing lot for PSI - calculate mean, median, variance, standard deviation
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Meadian = median(PSI), Variance = var(PSI), SD = sd(PSI),.groups = 'keep')

#3. T-Tests on Suspension Coils 

t.test(Suspension$PSI,mu=1500)

lot1 <- subset(Suspension, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

