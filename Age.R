# median age by severity with standard deviation

tot_age <- 0
median_age_1 <- 0
intermediate <- 0
age_stand_deviation_intermediate <- 0
age_stand_deviation_1 <- 0

# median age severity 1

for (i in 1:nrow(Table_Patients)){
  if (Table_Patients$ALTER_INTERVENTION[i] >= 18 && Table_Patients$HIGHEST_GROUP[i] == 1){
    tot_age <- tot_age + Table_Patients$ALTER_INTERVENTION[i]
    intermediate <- intermediate + 1
  } else {next}
}

median_age_1 <- round(tot_age / intermediate, digits = 2)

# standard deviation severity 1

for (i in 1:nrow(Table_Patients)){
  if (Table_Patients$ALTER_INTERVENTION[i] >= 18 && Table_Patients$HIGHEST_GROUP[i] == 1) {
    age_stand_deviation_intermediate <- age_stand_deviation_intermediate + (Table_Patients$ALTER_INTERVENTION[i] - median_age_1)^2
  } else {next}
}

age_stand_deviation_1 <- round(sqrt(age_stand_deviation_intermediate / (intermediate-1)), digits = 2)


# median age severity 2

tot_age <- 0
median_age_2 <- 0
intermediate <- 0
age_stand_deviation_intermediate <- 0
age_stand_deviation_2 <- 0

for (i in 1:nrow(Table_Patients)){
  if (Table_Patients$ALTER_INTERVENTION[i] >= 18 && Table_Patients$HIGHEST_GROUP[i] == 2){
    tot_age <- tot_age + Table_Patients$ALTER_INTERVENTION[i]
    intermediate <- intermediate + 1
  } else {next}
}

median_age_2 <- round(tot_age / intermediate, digits = 2)

# standard deviation of severity 2

for (i in 1:nrow(Table_Patients)){
  if (Table_Patients$ALTER_INTERVENTION[i] >= 18 && Table_Patients$HIGHEST_GROUP[i] == 2){
    age_stand_deviation_intermediate <- age_stand_deviation_intermediate + (Table_Patients$ALTER_INTERVENTION[i] - median_age_2)^2
  } else {next}
}

age_stand_deviation_2 <- round(sqrt(age_stand_deviation_intermediate / (intermediate-1)), digits = 2)


# median age severity 3

tot_age <- 0
median_age_3 <- 0
intermediate <- 0
age_stand_deviation_intermediate <- 0
age_stand_deviation_3 <- 0

for (i in 1:nrow(Table_Patients)){
  if (Table_Patients$ALTER_INTERVENTION[i] >= 18 && Table_Patients$HIGHEST_GROUP[i] == 3){
    tot_age <- tot_age + Table_Patients$ALTER_INTERVENTION[i]
    intermediate <- intermediate + 1
  } else {next}
}

median_age_3 <- round(tot_age / intermediate, digits = 2)

# standard deviation severity 3

for (i in 1:nrow(Table_Patients)){
  if (Table_Patients$ALTER_INTERVENTION[i] >= 18 && Table_Patients$HIGHEST_GROUP[i] == 3){
    age_stand_deviation_intermediate <- age_stand_deviation_intermediate + (Table_Patients$ALTER_INTERVENTION[i] - median_age_3)^2
  } else {next}
}

age_stand_deviation_3 <- round(sqrt(age_stand_deviation_intermediate / (intermediate-1)), digits = 2)



# median age missing

tot_age <- 0
median_age_missing <- 0
intermediate <- 0
age_stand_deviation_intermediate <- 0
age_stand_deviation_missing <- 0

for (i in 1:nrow(Table_Patients)){
  if (Table_Patients$ALTER_INTERVENTION[i] >= 18 && Table_Patients$HIGHEST_GROUP[i] == 0){
    tot_age <- tot_age + Table_Patients$ALTER_INTERVENTION[i]
    intermediate <- intermediate + 1
  } else {next}
}

median_age_missing <- round(tot_age / intermediate, digits = 2)

# standard deviation missing

for (i in 1:nrow(Table_Patients)){
  if (Table_Patients$ALTER_INTERVENTION[i] >= 18 && Table_Patients$HIGHEST_GROUP[i] == 0){
    age_stand_deviation_intermediate <- age_stand_deviation_intermediate + (Table_Patients$ALTER_INTERVENTION[i] - median_age_missing)^2
  } else {next}
}

age_stand_deviation_missing <- round(sqrt(age_stand_deviation_intermediate / (intermediate-1)), digits = 2)