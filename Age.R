# give each patient a group according to age (<55, 56-75, 75+)



target <- which(names(Table_Patients) == 'ALTER_INTERVENTION')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Young = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'Young')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Medium = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'Medium')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Old = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])



for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$ALTER_INTERVENTION[i] <= 55) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1){
      Table_Patients$Young[i] <- 'Severity 1'
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      Table_Patients$Young[i] <- 'Severity 2'
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      Table_Patients$Young[i] <- 'Severity 3'
    }
  } else if (Table_Patients$ALTER_INTERVENTION[i] > 75) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1){
      Table_Patients$Old[i] <- 'Severity 1'
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      Table_Patients$Old[i] <- 'Severity 2'
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      Table_Patients$Old[i] <- 'Severity 3'
    }
  } else {
    if (Table_Patients$HIGHEST_GROUP[i] == 1){
      Table_Patients$Medium[i] <- 'Severity 1'
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      Table_Patients$Medium[i] <- 'Severity 2'
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      Table_Patients$Medium[i] <- 'Severity 3'
    }
  }
}


# Table_Patients$Young<- NA
# Table_Patients$Medium <- NA
# Table_Patients$Old <- NA



target <- which(names(Table_Patients) == 'ALTER_INTERVENTION')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Alter = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])


for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$ALTER_INTERVENTION[i] <= 55) {
    Table_Patients$Alter[i] <- 'Young'
  } else if (Table_Patients$ALTER_INTERVENTION[i] > 75) {
    Table_Patients$Alter[i] <- 'Old'
  } else {
    Table_Patients$Alter[i] <- 'Medium'
  }
}



target <- which(names(Table_Patients) == 'Alter')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Alter2 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])


for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$ALTER_INTERVENTION[i] <= 55) {
    Table_Patients$Alter2[i] <- '18-55'
  } else if (Table_Patients$ALTER_INTERVENTION[i] > 75) {
    Table_Patients$Alter2[i] <- '76+'
  } else {
    Table_Patients$Alter2[i] <- '56-75'
  }
}



target <- which(names(Table_Full_without) == 'ALTER_INTERVENTION')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Alter = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])


for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$ALTER_INTERVENTION[i] <= 55) {
    Table_Full_without$Alter[i] <- 'Young'
  } else if (Table_Full_without$ALTER_INTERVENTION[i] > 75) {
    Table_Full_without$Alter[i] <- 'Old'
  } else {
    Table_Full_without$Alter[i] <- 'Medium'
  }
}



target <- which(names(Table_Full_without) == 'Alter')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Alter2 = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])


for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$ALTER_INTERVENTION[i] <= 55) {
    Table_Full_without$Alter2[i] <- '18-55'
  } else if (Table_Full_without$ALTER_INTERVENTION[i] > 75) {
    Table_Full_without$Alter2[i] <- '76+'
  } else {
    Table_Full_without$Alter2[i] <- '56-75'
  }
}




