# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Multiple Linear Regression Summary

![summary1](https://raw.githubusercontent.com/jmsuarez1997/MechaCar_Statistical_Analysis/main/Resources/Images/Summary1.png)

Two variables had a non-random amount of variance, the variable vehicle_length had a p-value of 2.60e-12, and ground_clearance had a p-value of 5.21e-08. P-values under .05 are considered significant in this model.

The slope is not considered to be zero. The coefficients in our lm() analysis have unique slopes for each variable. Our multiple linear regression model will look like the following:

>Y-intercept = -1.04e+02
>
>Y = (vehicle_length)6.267e+00 +(vehicle_weight)1.245e-03 +(spoiler_angle)6.877e-02 +(ground_clearance)3.546e+00 +(AWD)-3.411e+00 + -1.04e+02

This linear model can effectively predict the mpg of MechaCar prototypes. The R-squared is 0.7149, which means our model can explain 71.49% of the variation within the data. R-squared is based on a scale from 0 to 1, and the higher the R-squared, the better the model. R-squared levels are relative and subject-based, but generally, anything over 70% is considered to have a high level of correlation. The p-value is 5.35e-11, which means our model fits the data well. P-values are subject-based and relative to the situation, but usually, anything under the significant level of .05 means our model fits the data well. Our model has a high R-squared and a low p-value, which means our model explains a lot of the variation in data and has a significant correlation. 

## Summary Statistics on Suspension Coils

### Total Summary
![total_summary](https://raw.githubusercontent.com/jmsuarez1997/MechaCar_Statistical_Analysis/main/Resources/Images/total_summary.png)

### Lot_Summary
![Lot_summary](https://raw.githubusercontent.com/jmsuarez1997/MechaCar_Statistical_Analysis/main/Resources/Images/Lot_Summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meets these specifications for the total_summary table. However, Lot3 in the lot_summary table has a variance of 170.2 and does not meet the design specifications. 

## T-Tests on Suspension Coils

The t.test() function was used to determine if the mean PSI across __all__ manufacturing lots is statistically different from the population's mean of 1,500 pounds per square inch. One-sample t-test is used to test the following hypotheses:

>H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
>
>Ha : There is a statistical difference between the observed sample mean and its presumed population mean.

![Lot_summary](https://raw.githubusercontent.com/jmsuarez1997/MechaCar_Statistical_Analysis/main/Resources/Images/ttest1.png)

After conducting the t-test, a p-value of .06028 was found. The p-value is over the significant value of .05, so the findings indicate no statistical difference between the mean PSI across all manufacturing lots and the presumed population mean of 1,500. 

The t.test() function was also used to determine if the mean PSI for __each__ manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

![Lot_summary](https://raw.githubusercontent.com/jmsuarez1997/MechaCar_Statistical_Analysis/main/Resources/Images/ttest2.png)

The t-test indicates a p-value of 1 for Lot1. The p-value is over the significance value of .05, so there is no statistical difference between Lot1's PSI mean and its presumed population mean. 


![Lot_summary](https://raw.githubusercontent.com/jmsuarez1997/MechaCar_Statistical_Analysis/main/Resources/Images/ttest3.png)

Lot2 has a p-value of .6072 and is over the significance value of .05. There is no statistical difference between Lot2's PSI mean and its presumed population mean. 

![Lot_summary](https://raw.githubusercontent.com/jmsuarez1997/MechaCar_Statistical_Analysis/main/Resources/Images/ttest4.png)

Lot 3 has a p-value of .04168 and is under the significance value of .05. The null hypothesis is rejected, and the alternative hypothesis is accepted. There is a statistical difference between Lot3's mean and its presumed population mean of 1,500.

## Study Design: MechaCar vs Competition

MechaCar wants to design a statistical study to quantify its comparison against another car company. MechaCar wants to test how their cars compare in horsepower, city fuel efficiency, and highway fuel efficiency to competitors' cars. Chi-squared is used to compare the distribution of frequencies across two groups and tests the null hypothesis and alternative hypothesis:

>H0 : There is no difference in frequency distribution between MechaCar and the competitor's car performance. 
>
>Ha : There is a difference in frequency distribution between MechaCar and the competitor's car performance. 

To start the statistical test, create a table that lists the horsepower, city fuel efficiency, and highway fuel efficiency as rows and MechaCar and the competitors as columns. 

Rows: preformance <- horsepower, city fuel efficiency, and highway fuel efficiency
Columns: carcompanies <- MechaCar and Competitor

> tbl <- table(data$preformance,data$carcompanies) #generate contingency table
>
> chisq.test(tbl) #compare categorical distributions

If the p-value is under .05 significance level, the null hypothesis is rejected, and there is a significant difference in performance between MechaCar and the competitor. 




