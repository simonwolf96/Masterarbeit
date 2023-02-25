
Table_Patients <- Table_Full_without[1, 1:ncol(Table_Full_without)]
target <- 1


# get each patient once and set to highest severity

for (i in 2:nrow(Table_Full_without)) {
  if (Table_Full_without$ï..PATNR[i] != Table_Full_without$ï..PATNR[i-1]) {
    Table_Patients <- rbind(Table_Patients[1:target, 1:ncol(Table_Full_without), drop=F], Table_Full_without[i, 1:ncol(Table_Full_without)])
    target <- target + 1
  } else if (Table_Full_without$HIGHEST_GROUP[i] > Table_Patients$HIGHEST_GROUP[nrow(Table_Patients)]) {
    Table_Patients <- rbind(Table_Patients[1:(nrow(Table_Patients)-1), 1:ncol(Table_Full_without), drop=F], Table_Full_without[i, 1:ncol(Table_Full_without)])
  } else {next}
}
