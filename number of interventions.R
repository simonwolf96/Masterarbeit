# get the average number of interventions per patient

target <- which(names(Table_Patients) == 'ï..PATNR')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Number_of_Interventions = 1), Table_Patients[,(target+1):length(Table_Patients),drop=F])


# get the number of interventions per patient 
# counts how many times each patient number appears in the full Table

for (i in 2:nrow(Table_Full_without)) {
  if (Table_Full_without$ï..PATNR[i] == Table_Full_without$ï..PATNR[i-1]) {
    for (j in 1:nrow(Table_Patients)) {
      if (Table_Full_without$ï..PATNR[i] == Table_Patients$ï..PATNR[j]){
        Table_Patients$Number_of_Interventions[j] <- Table_Patients$Number_of_Interventions[j] + 1
      } else {next}
    }
  } else {next}
}


# get the average number of interventions per patient and by date

target <- which(names(Table_by_Date) == 'ï..PATNR')
Table_by_Date <- cbind(Table_by_Date[,1:target,drop=F], data.frame(Number_of_Interventions = 1), Table_by_Date[,(target+1):length(Table_by_Date),drop=F])


# get the number of interventions per patient 
# counts how many times each patient number appears in the full Table

for (i in 2:nrow(Table_Full_without)) {
  if (Table_Full_without$FALLNR[i] == Table_Full_without$FALLNR[i-1]) {
    for (j in 1:nrow(Table_by_Date)) {
      if (Table_Full_without$FALLNR[i] == Table_by_Date$FALLNR[j]){
        Table_by_Date$Number_of_Interventions[j] <- Table_by_Date$Number_of_Interventions[j] + 1
      } else {next}
    }
  } else {next}
}


# mean_number_of_interventions_by_patient <- round(mean(Table_Patients$Number_of_Interventions), digits = 2)
# stand_deivation_number_of_interventions_by_patient <- round(sd(Table_Patients$Number_of_Interventions), digits = 2)
# 
# 
# mean_number_of_interventions_by_patient_1 <- 0
# mean_number_of_interventions_by_patient_2 <- 0
# mean_number_of_interventions_by_patient_3 <- 0
# mean_number_of_interventions_by_patient_missing <- 0
# intermediate_1 <- 0
# intermediate_2 <- 0
# intermediate_3 <- 0
# intermediate_missing <- 0
# 
# 
# for (i in 1:nrow(Table_Patients)) {
#   if (Table_Patients$HIGHEST_GROUP[i] == 1) {
#     mean_number_of_interventions_by_patient_1 <- mean_number_of_interventions_by_patient_1 + as.numeric(Table_Patients$Number_of_Interventions[i])
#     intermediate_1 <- intermediate_1 + 1
#   } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
#     mean_number_of_interventions_by_patient_2 <- mean_number_of_interventions_by_patient_2 + as.numeric(Table_Patients$Number_of_Interventions[i])
#     intermediate_2 <- intermediate_2 + 1
#   } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
#     mean_number_of_interventions_by_patient_3 <- mean_number_of_interventions_by_patient_3 + as.numeric(Table_Patients$Number_of_Interventions[i])
#     intermediate_3 <- intermediate_3 + 1
#   } else {
#     mean_number_of_interventions_by_patient_missing <- mean_number_of_interventions_by_patient_missing + as.numeric(Table_Patients$Number_of_Interventions[i])
#     intermediate_missing <- intermediate_missing + 1
#   }
# }
# 
# 
# mean_number_of_interventions_by_patient_1 <- round(mean_number_of_interventions_by_patient_1 / intermediate_1, digits = 2)
# mean_number_of_interventions_by_patient_2 <- round(mean_number_of_interventions_by_patient_2 / intermediate_2, digits = 2)
# mean_number_of_interventions_by_patient_3 <- round(mean_number_of_interventions_by_patient_3 / intermediate_3, digits = 2)
# mean_number_of_interventions_by_patient_missing <- round(mean_number_of_interventions_by_patient_missing / intermediate_missing, digits = 2)
# 
# 
# mean_number_of_interventions_by_patient_1_standard_deviation <- 0
# mean_number_of_interventions_by_patient_2_standard_deviation <- 0
# mean_number_of_interventions_by_patient_3_standard_deviation <- 0
# mean_number_of_interventions_by_patient_missing_standard_deviation <- 0
# 
# 
# for (i in 1:nrow(Table_Patients)){
#   if (Table_Patients$HIGHEST_GROUP[i] == 1) {
#     mean_number_of_interventions_by_patient_1_standard_deviation <- mean_number_of_interventions_by_patient_1_standard_deviation + (Table_Patients$Number_of_Interventions[i] - mean_number_of_interventions_by_patient_1)^2
#   } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
#     mean_number_of_interventions_by_patient_2_standard_deviation <- mean_number_of_interventions_by_patient_2_standard_deviation + (Table_Patients$Number_of_Interventions[i] - mean_number_of_interventions_by_patient_2)^2
#   } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
#     mean_number_of_interventions_by_patient_3_standard_deviation <- mean_number_of_interventions_by_patient_3_standard_deviation + (Table_Patients$Number_of_Interventions[i] - mean_number_of_interventions_by_patient_3)^2
#   } else {
#     mean_number_of_interventions_by_patient_missing_standard_deviation <- mean_number_of_interventions_by_patient_missing_standard_deviation + (Table_Patients$Number_of_Interventions[i] - mean_number_of_interventions_by_patient_missing)^2
#   }
# }
# 
# mean_number_of_interventions_by_patient_1_standard_deviation <- round(sqrt(mean_number_of_interventions_by_patient_1_standard_deviation / (intermediate_1-1)), digits = 2)
# mean_number_of_interventions_by_patient_2_standard_deviation <- round(sqrt(mean_number_of_interventions_by_patient_2_standard_deviation / (intermediate_2-1)), digits = 2)
# mean_number_of_interventions_by_patient_3_standard_deviation <- round(sqrt(mean_number_of_interventions_by_patient_3_standard_deviation / (intermediate_3-1)), digits = 2)
# mean_number_of_interventions_by_patient_missing_standard_deviation <- round(sqrt(mean_number_of_interventions_by_patient_missing_standard_deviation / (intermediate_missing-1)), digits = 2)



