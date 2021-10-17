# DELIVERABLE 1

library(dplyr)

mechaCar_df <- read.csv("MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

lm(mpg ~ AWD + vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,mechaCar_df) #create linear model

summary(lm(mpg ~ AWD + vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,mechaCar_df))#summarize linear model

# DELIVERABLE 2

coil_table <- read.csv("Suspension_Coil.csv",check.names=F,stringsAsFactors = F)

total_summary <- coil_table %>% summarize(Median=median(PSI), Mean=mean(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep') #create summary table

lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Median=median(PSI), Mean=mean(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep') #create summary table

# DELIVERABLE 3

t.test((coil_table$PSI),mu=mean(coil_table$PSI)) #compare manufacturing lots versus population mean

Lot1 <- subset(coil_table,Manufacturing_Lot=="Lot1")
t.test((Lot1$PSI),mu=mean(coil_table$PSI))

Lot2 <- subset(coil_table,Manufacturing_Lot=="Lot2")
t.test((Lot2$PSI),mu=mean(coil_table$PSI))

Lot3 <- subset(coil_table,Manufacturing_Lot=="Lot3")
t.test((Lot3$PSI),mu=mean(coil_table$PSI))






                                          