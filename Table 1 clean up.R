library(tidyverse)
library(readr)


# clean up of LDL_MAX_numeric, HDL_MAX_numeric and TRIGLYCERIDE_MAX_numeric  

Table_Patients$HDL_MAX_numeric <- parse_number(Table_Patients$HDL_MAX_numeric)
Table_Patients$TRIGLYCERIDE_MAX_numeric <- parse_number(Table_Patients$TRIGLYCERIDE_MAX_numeric)
Table_Patients$NONHDL_MAX_numeric <- parse_number(Table_Patients$NONHDL_MAX_numeric)
Table_Patients$CHOLESTERIN_MAX_numeric <- parse_number(Table_Patients$CHOLESTERIN_MAX_numeric)



# row with highest Severity of each patient

#target <- which(names(Table_Patients) == 'ï..PATNR')
#Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Severity = 0), Table_Patients[,(target+1):length(Table_Patients),drop=F])

#for (i in 1:nrow(Table_Patients)) {
#  if (Table_Patients$HIGHEST_GROUP[i] == 1) {
#    Table_Patients$Severity[i] <- "Severity 1"
#  } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
#    Table_Patients$Severity[i] <- "Severity 2"
#  } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
#    Table_Patients$Severity[i] <- "Severity 3"
#  } else {
#    Table_Patients$Severity[i] <- "Severity Missing"
#  }
#}


target <- which(names(Table_Patients) == 'LDL_MAX_numeric_unit')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Younglings = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'LDL_MAX_numeric_unit')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Mediumlings = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'LDL_MAX_numeric_unit')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Oldlings = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$ALTER_INTERVENTION[i] <= 55) {
    Table_Patients$Younglings[i] <- 1
  } else if (Table_Patients$ALTER_INTERVENTION[i] > 75) {
    Table_Patients$Oldlings[i] <- 1
  } else (Table_Patients$Mediumlings[i] <- 1)
}


for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$Severity[i] == 'Severity 1') {
    Table_Patients$Severity[i] <- 'PAD-Group 1' 
  } else if (Table_Patients$Severity[i] == 'Severity 2') {
    Table_Patients$Severity[i] <- 'PAD-Group 2'
  } else {next}
}




for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$SEX[i] == 'M') {
    Table_Patients$SEX[i] <- 'Male'
  } else if (Table_Patients$SEX[i] == 'W') {
    Table_Patients$SEX[i] <- 'Female'
  } else {next}
}

