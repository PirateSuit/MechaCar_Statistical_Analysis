# MechaCar Statistical Analysis


## Linear Regression to Predict MPG
![image_name](https://github.com/PirateSuit/MechaCar_Statistical_Analysis/blob/main/Resources/Linear%20Regression.png)
![image name](https://github.com/PirateSuit/MechaCar_Statistical_Analysis/blob/main/Resources/Linear%20Regression%20Summary.png)

The variables in our data show a non-random effect on the MPG of the MechaCar are the vehicle length and the ground clearance. The linear regression shows that, run against MPG, the vehicle length had a p-value of 2.60e-12, and that the ground clearance had a p-value of 5.21e-08. At 5.08e-08, the intercept was significant as well.

The slope of the linear model would not be considered zero. With a p-value of 5.35e-11 it shows a very high level of significance, leading us to reject the null hypothesis and acknowedging that the MPG relationship to our standout variables cannot be due to random chance.

With a r-squared value of 0.7149, indicating a 71% rate, this linear model does predict the MPG with moderate effectiveness. With more thorough testing, including a larger set of variables, it is likely we could achieve a clearer, more reliable model.

## Summary Statistics on Suspension Coils
![image name](https://github.com/PirateSuit/MechaCar_Statistical_Analysis/blob/main/Resources/total%20summary.png)
![image name](https://github.com/PirateSuit/MechaCar_Statistical_Analysis/blob/main/Resources/lot%20summary.png)

The variance of the lots overall does fall under the 100 PSI threshold, at 62.3. However, when we dig into individual lots, we run into an issue. At .98 PSI variance and 7.47 PSI variance lots 1 and 2, respectively, meet expectations. At a variance of 170.27 PSI, lot 3 does not.

## T-Tests on Suspension Coils

### All Manufacturing Lots:

![image name](https://github.com/PirateSuit/MechaCar_Statistical_Analysis/blob/main/Resources/t%20test%20all%20lots.png)

This T-Test does not show a statistical difference from the population mean. With a p-value of .06, we cannot reject the null hypothesis.


### Manufacturing Lot #1:

![image name](https://github.com/PirateSuit/MechaCar_Statistical_Analysis/blob/main/Resources/t%20test%20lot%201.png)

This T-Test does not show a statistical difference from the population mean. With a p-value of 1, we cannot reject the null hypothesis.


### Manufacturing Lot #2

![image name](https://github.com/PirateSuit/MechaCar_Statistical_Analysis/blob/main/Resources/t%20test%20lot%202.png)

This T-Test does not show a statistical difference from the population mean. With a p-value of .06, we cannot reject the null hypothesis.


### Manufacturing Lot #3

![image name](https://github.com/PirateSuit/MechaCar_Statistical_Analysis/blob/main/Resources/t%20test%20lot%203.png)

This T-Test does show a slight statistcal difference from the population mean. With a p-value of .04, we could reject the null hypothesis. This lot likely warrants closer testing.

## Study Design: MechaCar vs Competition

When choosing a car, there are many tradeoffs. For example, people may choose more power, more speed or torque, at the cost of fuel efficiency or size. Something less likely to be dismissed in favor of other aspects however, is safety. No one will care if the MechaCar gets great gas mileage or has all the great features if it will kill you at the slightest incident. 

### Metrics to Test
There is certainly an onslaught of safety tests that any new vehicle goes through. From these tests, we could take and compare the front, rear, and side collision data against the competition.

### Null Hypothesis
H0: The collision data of the MechaCar is similar to the collision data of the competitions vehicles in the same class.<br>
Ha: The collision data of the MechaCar is statistically better or worse than the competitions vehicles in the same class.

### Statistical Test Used
A two sample T-Test would be appropriate.

### What Data is Needed
As mentioned before, we would need to gather data from crash tests, specifically here we would need front, side, and rear collision data.

