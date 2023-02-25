# add column with amount of interventions per patient per date

target <- which(names(Table_by_Date) == 'ï..PATNR')
Table_by_Date <- cbind(Table_by_Date[,1:target,drop=F], data.frame(Number_of_Interventions = 1), Table_by_Date[,(target+1):length(Table_by_Date),drop=F])

# get the number of interventions per patient per date
# counts how many times each patient number appears in the full Table

for (i in 2:nrow(Table_Full)) {
  if (Table_Full$ï..PATNR[i] == Table_Full$ï..PATNR[i-1] && Table_Full$KATBERDAT_A[i] == Table_Full$KATBERDAT_A[i-1]) {
    for (j in 1:nrow (Table_by_Date)) {
      if (Table_Full$ï..PATNR[i] == Table_by_Date$ï..PATNR[j] && Table_Full$KATBERDAT_A[i] == Table_by_Date$KATBERDAT_A[j]) {
        Table_by_Date$Number_of_Interventions[j] <- Table_by_Date$Number_of_Interventions[j] + 1
      } else {next}
    }
  } else {next}
}


# average number of interventions as well as standard deviation per date per patient

intermediate <- 0

for (i in 1:nrow(Table_by_Date)) {
  intermediate <- intermediate + as.numeric(Table_by_Date$Number_of_Interventions[i])
}

mean_number_of_interventions_by_patient_by_date <- round(intermediate / nrow(Table_by_Date), digits = 1)

# standard deviation

intermediate <- 0

for (i in 1:nrow(Table_by_Date)) {
  intermediate <- intermediate + (as.numeric(Table_by_Date$Number_of_Interventions[i]) - mean_number_of_interventions_by_patient_by_date)^2 
}

stand_deivation_number_of_interventions_by_patient_by_date <- round(sqrt (intermediate / (nrow(Table_by_Date)-1)), digits = 1)

