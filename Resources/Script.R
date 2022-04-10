library(dplyr)
deli1 <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
deli1lm <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ ground_clearance+AWD, data = deli1)
summary(deli1lm)
#Intercept, Vehicle Length, and Ground Clearance are statistically significant at alpha = .95.
#adj R^2 is .6825, that is to day 68.25% of variance in the dependent variable is explained by the independent variables.
#This is moderate.

deli24 <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- deli24 %>% summarise(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
Lot_summary <- deli24 %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# for readme. It appears Lot 3 does NOT meet the design specs as its variance exceeds 100 (as 170.3).
t.test(deli24$PSI,mu=1500)
t.test(subset(deli24,Manufacturing_Lot == 'Lot1',PSI),mu=1500)
t.test(subset(deli24,Manufacturing_Lot == 'Lot2',PSI),mu=1500)
t.test(subset(deli24,Manufacturing_Lot == 'Lot3',PSI),mu=1500)
?subset
