# age for box plot (< 55, 56/75, 75+)

target <- which(names(Table_Patients) == 'ALTER_INTERVENTION')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Alter_Intervention_Groups = 0), Table_Patients[,(target+1):length(Table_Patients),drop=F])

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$ALTER_INTERVENTION[i] <= 55) {
    Table_Patients$Alter_Intervention_Groups[i] <- 1
  } else if (Table_Patients$ALTER_INTERVENTION[i] > 75){
    Table_Patients$Alter_Intervention_Groups[i] <- 2
  } else {
    Table_Patients$Alter_Intervention_Groups[i] <- 3
  }
}
