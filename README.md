# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Two variables had a non-random amount of variance in the mpg values. The variable vehicle_length had a p-value of 2.60e-12, and ground_clearance had a p-value of 5.21e-08. P-values under .05 are considered significant in this model.

The slope is not considered to be zero. The coefficients in our lm() analysis have unique slopes for each variable. Our multiple linear regression model will look like the following:

>Y-intercept = -1.04e+02
>
>Y = (vehicle_length)6.267e+00 +(vehicle_weight)1.245e-03 +(spoiler_angle)6.877e-02 +(ground_clearance)3.546e+00 +(AWD)-3.411e+00 + -1.04e+02

This linear model can effectively predict the mpg of MechaCar prototypes. The R-squared is 0.7149, which means our model can explain 71.49% of the variation within the data. R-squared is based on a scale from 0 to 1, and the higher the R-squared, the better the model. R-squared levels are relative and subject-based, but generally, anything over 70% is considered to have a high level of correlation. The p-value is 5.35e-11, which means our model fits the data well. P-values are subject-based and relative to the situation, but usually, anything under the significant level of .05 means our model fits the data well. Our model has a high R-squared and a low p-value, which means our model explains a lot of the variation in data and has a significant correlation. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meets these specifications for the total_summary table. However, Lot3 in the lot_summary table has a variance of 170.2 and does not meet the design specifications. 