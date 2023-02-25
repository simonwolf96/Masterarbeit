library(ggplot2)
library(ggpubr)
library(aod)
library(pacman)
library(tidybayes)
library(ResourceSelection)
library(gtsummary)
library(survival)
library(globaltest)



mylogit <- glm(formula = Treatment_according_Guidelines_2016 ~ ALTER_INTERVENTION + SEX_Binary + Severity_Binary + Proximal_Distal + highest_intensity + dual_therapy, data = Table_Full_without, family = 'binomial')
wald.test(b = coef(mylogit), Sigma = vcov(mylogit), Terms = 2:7)
exp(cbind(OR = coef(mylogit), confint(mylogit)))


hl <- hoslem.test(mylogit$y, fitted(mylogit), g=10)

cbind(hl$expected, hl$observed)

tbl_regression(mylogit, exponentiate = TRUE,
               label = list(
                 ALTER_INTERVENTION ~ 'Age at Intervention',
                 SEX_Binary = 'Sex',
                 Severity_Binary = 'PAD-Group',
                 highest_intensity = 'highest Statin intensity',
                 dual_therapy = 'Dual Therapy'
               ))


mylogit2 <- glm(formula = Treatment_according_Guidelines_2019 ~ ALTER_INTERVENTION + SEX_Binary + Severity_Binary + Proximal_Distal + highest_intensity + dual_therapy, data = Table_Full_without, family = 'binomial')
wald.test(b = coef(mylogit2), Sigma = vcov(mylogit2), Terms = 2:7)
exp(cbind(OR = coef(mylogit2), confint(mylogit2)))

tbl_regression(mylogit2, exponentiate = TRUE,
               label = list(
                 ALTER_INTERVENTION ~ 'Age at Intervention',
                 SEX_Binary = 'Sex',
                 Severity_Binary = 'PAD-Group',
                 highest_intensity = 'highest Statin intensity',
                 dual_therapy = 'Dual Therapy'
               ))




gt(Treatment_according_Guidelines_2016 ~ 1, Treatment_according_Guidelines_2016 ~ ALTER_INTERVENTION + SEX_Binary + Severity_Binary + Proximal_Distal + highest_intensity + dual_therapy, data = Table_Full_without)






newdata1 <- with(Table_Full_without, data.frame(ALTER_INTERVENTION = mean(ALTER_INTERVENTION), SEX_Binary = factor(0:1), Severity_Binary = factor(1:2), Proximal_Distal = factor(1:2), highest_intensity = factor(1:2), dual_therapy = factor(0:1)))
newdata1$rankP <- predict(mylogit, newdata = newdata1, type = "response")

newdata2 <- with(Table_Full_without, data.frame(ALTER_INTERVENTION = rep(seq(from = 18, to = 100, length.out = 100),4), SEX_Binary = factor(rep(0:1,each = 200)), Severity_Binary = factor(rep(1:2, each = 200)), Proximal_Distal = factor(rep(1:2, each = 200)), highest_intensity = factor(rep(1:2, each = 200)), dual_therapy = factor(rep(0:1, each = 200))))

newdata3 <- cbind(newdata2, predict(mylogit, newdata = newdata2, type = "link",
                                    se = TRUE))
newdata3 <- within(newdata3, {
  PredictedProb <- plogis(fit)
  LL <- plogis(fit - (1.96 * se.fit))
  UL <- plogis(fit + (1.96 * se.fit))
})



ggplot(newdata3, aes(x = gre, y = PredictedProb)) + geom_ribbon(aes(ymin = LL,
                                                                    ymax = UL, fill = SEX_Binary), alpha = 0.2) + geom_line(aes(colour = SEX_Binary),
                                                                                                                      size = 1)



target <- which(names(Table_Full_without) == 'Distal')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Proximal_Distal = 'Proximal Lesion'), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])


for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$Proximal[i] == 1) {
    Table_Full_without$Proximal_Distal[i] <- 'Proximal Lesion'
  } else if (Table_Full_without$Distal[i] == 1) {
    Table_Full_without$Proximal_Distal[i] <- 'Distal Lesion'
  } else {next}
}



target <- which(names(Table_Full_without) == 'Ezetimib_out')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(highest_intensity = 0))



for (i in 1:nrow(Table_Patients)) {
  for (j in 1:nrow(Table_Full_without)) {
    if (Table_Patients$ï..PATNR[i] == Table_Full_without$ï..PATNR[j]) {
      Table_Full_without$highest_intensity[j] <- Table_Patients$highest_intensity[i]
    } else {next}
  }
}

for (i in 1:nrow(Table_Full_without)) {
  if (is.na(Table_Full_without$highest_intensity[i]) == TRUE || Table_Full_without$highest_intensity[i] == 'Low/Medium' || Table_Full_without$highest_intensity[i] == 0) {
    Table_Full_without$highest_intensity[i] <- 0
  } else if (Table_Full_without$highest_intensity[i] == 'High') {
    Table_Full_without$highest_intensity[i] <- 1
  }
}


Table_Full_without[Table_Full_without$highest_intensity == 1,]$highest_intensity <- 0
Table_Full_without[Table_Full_without$highest_intensity == 2,]$highest_intensity <- 1


target <- which(names(Table_Full_without) == 'highest_intensity')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(dual_therapy = 'False'))

for (i in 1:nrow(Table_Full_without)) {
  if (is.na(Table_Full_without$Sim_EZ_in[i]) == FALSE || is.na(Table_Full_without$Sim_EZ_out[i]) == FALSE || is.na(Table_Full_without$Ator_EZ_in[i]) == FALSE) {
    Table_Full_without$dual_therapy[i] <- 'True'
  } else {next}
}



target <- which(names(Table_Full_without) == 'dual_therapy')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2016 = 0))



for (i in 1:nrow(Table_Patients)) {
  for (j in 1:nrow(Table_Full_without)) {
    if (Table_Patients$ï..PATNR[i] == Table_Full_without$ï..PATNR[j]) {
      Table_Full_without$Treatment_according_Guidelines_2016 [j] <- Table_Patients$Treatment_according_Guidelines_2016[i]
    } else {next}
  }
}


target <- which(names(Table_Full_without) == 'Treatment_according_Guidelines_2016')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2019 = 0))


for (i in 1:nrow(Table_Patients)) {
  for (j in 1:nrow(Table_Full_without)) {
    if (Table_Patients$ï..PATNR[i] == Table_Full_without$ï..PATNR[j]) {
      Table_Full_without$Treatment_according_Guidelines_2019 [j] <- Table_Patients$Treatment_according_Guidelines_2019[i]
    } else {next}
  }
}



target <- which(names(Table_Full_without) == 'Treatment_according_Guidelines_2019')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(SEX_Binary = 'Female'))

for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$SEX[i] == "M") {
    Table_Full_without$SEX_Binary[i] <- 'Male'
  }
}


target <- which(names(Table_Full_without) == 'SEX_Binary')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Severity_Binary = NA))

for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$Severity[i] == 'Severity 1') {
    Table_Full_without$Severity_Binary[i] <- 'PAD-Group 1'
  } else if (Table_Full_without$Severity[i] == 'Severity 2') {
    Table_Full_without$Severity_Binary[i] <- 'PAD-Group 2'
  } else {next}
}


# Table_Full_without[Table_Full_without$Severity_Binary == 0,]$Severity_Binary <-  'PAD-Group 1'


Table_Full_without$SEX <- as.factor(Table_Full_without$SEX)
Table_Full_without$SEX_Binary <- as.factor(Table_Full_without$SEX_Binary)
Table_Full_without$Severity_Binary <- as.factor(Table_Full_without$Severity_Binary)
Table_Full_without$Treatment_according_Guidelines_2016 <- as.factor(Table_Full_without$Treatment_according_Guidelines_2016)
Table_Full_without$Treatment_according_Guidelines_2019 <- as.factor(Table_Full_without$Treatment_according_Guidelines_2019)
Table_Full_without$dual_therapy <- as.factor(Table_Full_without$dual_therapy)
Table_Full_without$highest_intensity <- as.factor(Table_Full_without$highest_intensity)
Table_Full_without$Proximal_Distal <- as.factor(Table_Full_without$Proximal_Distal)
 





Table_Full_without$SEX <- as.factor(Table_Full_without$SEX)
 
Table_Patients$Rosuvastatin_in <- as.integer(Table_Patients$Rosuvastatin_in)


median(Table_Patients$Rosuvastatin_in, na.rm = TRUE)
quantile(Table_Patients$Rosuvastatin_in, na.rm = TRUE)




Table_Patients[Table_Patients$Atorvastatin_in == 99,]$Atorvastatin_in <- 80


for (i in 1:nrow(Table_Patients)) {
  if (is.na(Table_Patients$Atorvastatin_in[i]) == FALSE && Table_Patients$Atorvastatin_in[i] == 99) {
    Table_Patients$Atorvastatin_in[i] <- NA
  }
}



Table_Patients[is.na(Table_Patients$Atorvastatin_in),]$Atorvastatin_in <-  0


for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$Atorvastatin_in[i] == 'unknown') {
    Table_Patients$Atorvastatin_in[i] <- NA
  }
  if (Table_Patients$Rosuvastatin_in[i] == 'unknown') {
    Table_Patients$Rosuvastatin_in[i] <- NA
  }
}




## Dual therapy new

for (i in 1:nrow(Table_Full_without)) {
  if ((is.na(Table_Full_without$Atorvastatin_in[i]) == FALSE && (is.na(Table_Full_without$Simvastatin_in[i]) == FALSE || is.na(Table_Full_without$Pravastatin_in[i]) == FALSE || is.na(Table_Full_without$Pitavastatin_in[i]) == FALSE || is.na(Table_Full_without$Rosuvastatin_in[i]) == FALSE || is.na(Table_Full_without$Fluvastatin_in[i]) == FALSE || is.na(Table_Full_without$Bezafibrat_in[i]) == FALSE || is.na(Table_Full_without$Fenofibrat_in[i]) == FALSE || is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE || is.na(Table_Full_without$Ezetimib_in[i]) == FALSE || is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    (is.na(Table_Full_without$Simvastatin_in[i]) == FALSE && (is.na(Table_Full_without$Pravastatin_in[i]) == FALSE || is.na(Table_Full_without$Pitavastatin_in[i]) == FALSE || is.na(Table_Full_without$Rosuvastatin_in[i]) == FALSE || is.na(Table_Full_without$Fluvastatin_in[i]) == FALSE || is.na(Table_Full_without$Bezafibrat_in[i]) == FALSE || is.na(Table_Full_without$Fenofibrat_in[i]) == FALSE || is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE || is.na(Table_Full_without$Ezetimib_in[i]) == FALSE || is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    (is.na(Table_Full_without$Pravastatin_in[i]) == FALSE && (is.na(Table_Full_without$Pitavastatin_in[i]) == FALSE || is.na(Table_Full_without$Rosuvastatin_in[i]) == FALSE || is.na(Table_Full_without$Fluvastatin_in[i]) == FALSE || is.na(Table_Full_without$Bezafibrat_in[i]) == FALSE || is.na(Table_Full_without$Fenofibrat_in[i]) == FALSE || is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE || is.na(Table_Full_without$Ezetimib_in[i]) == FALSE || is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    (is.na(Table_Full_without$Pitavastatin_in[i]) == FALSE && (is.na(Table_Full_without$Rosuvastatin_in[i]) == FALSE || is.na(Table_Full_without$Fluvastatin_in[i]) == FALSE || is.na(Table_Full_without$Bezafibrat_in[i]) == FALSE || is.na(Table_Full_without$Fenofibrat_in[i]) == FALSE || is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE || is.na(Table_Full_without$Ezetimib_in[i]) == FALSE || is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    (is.na(Table_Full_without$Rosuvastatin_in[i]) == FALSE && (is.na(Table_Full_without$Fluvastatin_in[i]) == FALSE || is.na(Table_Full_without$Bezafibrat_in[i]) == FALSE || is.na(Table_Full_without$Fenofibrat_in[i]) == FALSE || is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE || is.na(Table_Full_without$Ezetimib_in[i]) == FALSE || is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    (is.na(Table_Full_without$Fluvastatin_in[i]) == FALSE && (is.na(Table_Full_without$Bezafibrat_in[i]) == FALSE || is.na(Table_Full_without$Fenofibrat_in[i]) == FALSE || is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE || is.na(Table_Full_without$Ezetimib_in[i]) == FALSE || is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    (is.na(Table_Full_without$Bezafibrat_in[i]) == FALSE && (is.na(Table_Full_without$Fenofibrat_in[i]) == FALSE || is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE || is.na(Table_Full_without$Ezetimib_in[i]) == FALSE || is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    (is.na(Table_Full_without$Fenofibrat_in[i]) == FALSE && (is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE || is.na(Table_Full_without$Ezetimib_in[i]) == FALSE || is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    (is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE && (is.na(Table_Full_without$Ezetimib_in[i]) == FALSE || is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    (is.na(Table_Full_without$Ezetimib_in[i]) == FALSE && (is.na(Table_Full_without$Alirocumab_in[i]) == FALSE)) ||
    is.na(Table_Full_without$Sim_EZ_in[i]) == FALSE || is.na(Table_Full_without$Ator_EZ_in[i]) == FALSE) {
    Table_Full_without$dual_therapy[i] <- 'True'
  } else {next}
}














|| is.na(Table_Full_without$Ator_EZ_out[i]) == FALSE || (is.na(Table_Full_without$Rosuvastatin_in[i]) == FALSE && is.na(Table_Full_without$Atorvastatin_in[i]) == FALSE)