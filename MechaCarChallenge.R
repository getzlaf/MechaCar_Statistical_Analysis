# Deliverable 1

library(dplyr)
df <- read.csv("MechaCar_mpg.csv")
mpg.lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
                  data = df)
mpg.summary <- summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
           data = df))
# Deliverable 2
table <- read.csv("Suspension_Coil.csv", header = TRUE, sep = ",")
total_summary <- table %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),.groups = 'keep')

lot_summary <- table %>% group_by(Manufacturing_Lot) %>% summarize(PSI_mean=mean(PSI), 
                                                                   PSI_median=median(PSI),
                                                                   Var_PSI=var(PSI),
                                                                   Std_Dev_PSI=sd(PSI),.groups = 'keep')
#Deliverable 3
res <- t.test(table$PSI, mu = 1500)
lot_1 <- subset(table, Manufacturing_Lot == "Lot1")
lot_2 <- subset(table, Manufacturing_Lot == "Lot2")
lot_3 <- subset(table, Manufacturing_Lot == "Lot3")
res_1 <- t.test(lot_1$PSI, mu = 1500)
res_2 <- t.test(lot_2$PSI, mu = 1500)
res_3 <- t.test(lot_3$PSI, mu = 1500)