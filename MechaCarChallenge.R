#Libraries########################

library(tidyverse)
library(jsonlite)
library(dplyr)

#Deliverable 1 Linear Regression to Predict MPG########## 

#import the data
mechacar_df <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

#apply the lm() to the mechacar_df
model<-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)

#produce a summary of the model
summary(model)


#Deliverable 2 Summary Statistics on Suspension Coils########

#import the data 
suspension_df <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors = F)

#Use the summarize function
total_summary<-suspension_df %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI))

#Use the summarize and groupby()
lot_summary<-suspension_df %>%
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI),
            Variance = var(PSI), SD = sd(PSI))


#Deliverable 3 T-Test on Suspension Coils####

#T test all lots against population mean
t.test(suspension_df$PSI, mu=1500)

#create lot subsets
#lot1
lot1<-subset(suspension_df,Manufacturing_Lot == "Lot1")

#lot2
lot2<-subset(suspension_df,Manufacturing_Lot == "Lot2")

#lot3
lot3<-subset(suspension_df,Manufacturing_Lot == "Lot3")

#t-tests for individual lots

t.test(lot1$PSI, mu=1500)

t.test(lot2$PSI, mu=1500)

t.test(lot3$PSI, mu=1500)
