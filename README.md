# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
I used the MechaCar_mpg database to build a linear regression who can help me predict the MPG of a car based on some of its characteristics. 
I will address the following questions in my analysis : 

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Is the slope of the linear model considered to be zero? Why or why not?

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The answers to these questions are : 

1- There were two variables who provided a non-random amount of variance to the mpg values in the dataset. These variables are the ground clearance and the vehicle lenght. 
They both have p-values under 5 percent which means that they are significatively different from 0. 

2- No, it can not be 0. Two variables are different from 0 at level of confidence of 95%. That means that those variables have an impact on the mpg of the MechaCars. 

3- This model can predict the mpg of MechaCar prototypes effectively based on the R-squared of 0.7149. When the R-squared is close to 1, the model can predict effectively the value of the dependent variable. 

![](regression1.png)
