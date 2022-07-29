# MechaCar_Statistical_Analysis


## Project Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

## Resources
- Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: R Studio
- Files: MechaCarChallenge.R

## Challenge Overview
Three deliverables:
- Deliverable 1:Linear Regression to Predict MPG 
- Deliverable 2:Summary Statistics on Suspension Coils 
- Deliverable 3:T-Test on Suspension Coils
- Deliverable 4:Design a Study Comparing the MechaCar to the Competition


## Results

### Linear Regression to Predict MPG

#### Purpose
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

- Function: multiple linear regression function

model<-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)

summary(model)

![deliverable_1_summary](https://user-images.githubusercontent.com/87085239/181676673-d547b526-4c62-4587-a589-445184a57c55.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? Along with the intercept, vehicle length and ground_clearance provides the highest degree of signifance to mpg with vehicle_weight providing a normal degree of significance. 

- Is the slope of the linear model considered to be zero? Why or why not? Due to the p-value being above the significance level of 0.05 on multiple variables and the R-squared = 0.71, it indicates a high correlation between the variables and mpg which would result is a relationship beween the variables and thus creating a slope greater than zero. 

- Does this linear model predict mpg of MechaCar prototypes effectively? According to our results, vehicle_length, ground_clearance and vehicle_weight are statistically unlikely to provide random amounts of variance to the linear model and thus have a significant impanct on mpg. Due to the high multiple R-squared of .071 and the p-value being higher than the significance level of 0.05, it can be assumed that this model does provide a high degree of predictablity. 


### Deliverable 2: Summary Statistics on Suspension Coils

#### Purpose

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


Analysis of the suspension coils aggregated at a high level, it appears that the manufacturing data does meet the design specification in total with a variance under 100 pounds per square inch and equaling 62.29.

![deliverable_2_total_summary](https://user-images.githubusercontent.com/87085239/181676737-edf5ae45-b00d-4e08-9274-d5ee6c57f8ba.png)


Further analysis of the data by lots, reveals that Lot3 does not meet the design specifications of not exceeding 100 pounds per square inch due to a variance totaling 170.28 pounds per square inch. 

![deliverable_2_total_summary_lot](https://user-images.githubusercontent.com/87085239/181676757-a979c5f2-af3a-4f2c-a436-db89f467b4c6.png)



### Deliverable 3: T-Test on Suspension Coils

![del_3_suspension_all_lots](https://user-images.githubusercontent.com/87085239/181676801-be084c01-1112-4c03-bb8d-08ef17246811.png)

The mean of the total dataset is 1498.78 with a p-value of 0.06 which is above the .05 significance code and therefore not enough evidence to reject the null hypothesis. 


![del_3_suspension_lot1](https://user-images.githubusercontent.com/87085239/181676816-5687b676-b9ff-4428-8bad-58e7e7531204.png)

Lot1 has mean of 1500 and a p-value equal to 1. There appears to be no difference between Lot1 and the population mean.


![del_3_suspension_lot2](https://user-images.githubusercontent.com/87085239/181676831-e5576675-d1e0-4256-927b-50e6e2cc7cca.png)

Lot2 has a mean of 1500.0 and a p-value of 0.61. There appears to be little difference between Lot2 and teh population mean.


![del_3_suspension_lot3](https://user-images.githubusercontent.com/87085239/181676847-c98ff1ca-5b4d-46de-9dd2-176c59e1d41b.png)

Lot3 has a mean of 1496.14 and a p-value of 0.04 which is below our normal signifiance code of 0.05. Due to this, we are to reject the null hypothesis that this lot is not different from the population mean.

From our summary statistics and t-tests, it appears that an issue has occurred with Lot3 and a more in-dept look at processess needs to be taken. 

### Deliverable 4: Study Design: MechaCar vs Competition

Purpose: Short description of a statistical study that can quantify how the MechaCar performs against the competition. 

To test how the MechaCar performs against the competition, we will gather metrics on similar cars in it's class to compare metrics deemed more important to comsumers and compare number of cars sold in the last 3 years.

- What metric or metrics are you going to test?  
  - units sold: dependent variable, numerical
  - cost: independent, numerical
  - city full eff: independent, numerical
  - hwy full eff: independent, numerical
  - hp: independent, numerical
  - car-type: independent, categorial, factor
  - seating: independent, numerical
  - safety rating: independent, numerical
  - maintenance cost: independent, numerical
  - resale value at 5 years: independent, numerical
  - resale value at 10 years: independent, numerical


- What is the null hypothesis or alternative hypothesis?

Null hypothesis (Ho):Based on key performance indicators, MechaCar is designed to outsell others in it's class.

Alternative Hypothesis (Ha): MechaCar is not designed to competivitely compete with cars similar in it's class.

- What statistical test would you use to test the hypothesis? And why?

A multiple linear regression model could be used to determine which key performance factors had the greatest affect on units sold. 

Running a summary test of the muliple lm() would show key performance indictors with the most affect on units sold and MechaCar could be compared to cars in it's class.

- What data is needed to run the statistical test?

Three years of data based on regional area sales could be used where popularity of competitors cars are sold. 

