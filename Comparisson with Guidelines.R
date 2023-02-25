


target <- which(names(Table_Patients) == 'LDL_MAX_numeric')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(LDL_level_2016_1 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'LDL_level_2016_1')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(LDL_level_2016_2 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'LDL_level_2016_2')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(LDL_level_2016_3 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

# 1 == LDL in target Range
# 0 == LDL too high

# 2016

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$LDL_MAX_numeric[i] >= 1.8) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      Table_Patients$LDL_level_2016_1[i] <- 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      Table_Patients$LDL_level_2016_2[i] <- 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      Table_Patients$LDL_level_2016_3[i] <- 1
    }
  } else if (Table_Patients$LDL_MAX_numeric[i] > 0 && Table_Patients$LDL_MAX_numeric[i] < 1.8) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      Table_Patients$LDL_level_2016_1[i] <- 0
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      Table_Patients$LDL_level_2016_2[i] <- 0
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      Table_Patients$LDL_level_2016_3[i] <- 0
    }
  }
}

# 2019

target <- which(names(Table_Patients) == 'LDL_level_2016_3')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(LDL_level_2019_1 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'LDL_level_2019_1')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(LDL_level_2019_2 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'LDL_level_2019_2')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(LDL_level_2019_3 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])


for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$LDL_MAX_numeric[i] >= 1.4) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      Table_Patients$LDL_level_2019_1[i] <- 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      Table_Patients$LDL_level_2019_2[i] <- 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      Table_Patients$LDL_level_2019_3[i] <- 1
    }
  } else if (Table_Patients$LDL_MAX_numeric[i] > 0 && Table_Patients$LDL_MAX_numeric[i] < 1.4) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      Table_Patients$LDL_level_2019_1[i] <- 0
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      Table_Patients$LDL_level_2019_2[i] <- 0
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      Table_Patients$LDL_level_2019_3[i] <- 0
    }
  }
}




