# append if patient number not there yet as well as the highest group


Table_Patients <- Table_Full_without[1, 1:ncol(Table_Full_without)]
target <- 1



for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$ï..PATNR[i] != Table_Patients$ï..PATNR[target]) {
    Table_Patients <- rbind(Table_Patients[1:target, 1:ncol(Table_Full_without), drop=F], Table_Full_without[i, 1:ncol(Table_Full_without)])
    target <- target + 1
  } else if (Table_Patients$HIGHEST_GROUP[target] == 3) {
    next
  } else if (Table_Full_without$HIGHEST_GROUP[i] > Table_Patients$HIGHEST_GROUP[target]) {
      Table_Patients <- rbind(Table_Patients[1:(target-1), 1:ncol(Table_Full_without), drop=F], Table_Full_without[i, 1:ncol(Table_Full_without)])
  } else {next}
}


# Table_Patients <- rbind(Table_Patients[2:nrow(Table_Patients), 1:ncol(Table_Full_without), drop=F]) delet first row which is a patient under 18

# delete all patients with age < 18 (inclusion criteria)

#for (i in 1:nrow(Table_Patients)) {
#  if (Table_Patients$ALTER_INTERVENTION[i] < 18) {
#    Table_Patients <- rbind(Table_Patients[1:(i-1), 1:ncol(Table_Full_without), drop=F], Table_Patients[(i+1):nrow(Table_Patients), 1:ncol(Table_Full_without), drop=F])
#  } else {next}
#}

