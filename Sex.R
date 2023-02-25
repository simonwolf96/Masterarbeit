# sex percentages


female_1 <- 0
male_1 <- 0

female_2 <- 0
male_2 <- 0

female_3 <- 0
male_3 <- 0

female_missing <- 0
male_missing <- 0

for(i in 1:nrow(Table_Patients)){
  if (Table_Patients$SEX[i] == "M"){
    if(Table_Patients$HIGHEST_GROUP[i] == 1) {
      male_1 <- male_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      male_2 <- male_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      male_3 <- male_3 + 1
    } else {male_missing <- male_missing + 1}
  }
  else {
    if(Table_Patients$HIGHEST_GROUP[i] == 1) {
      female_1 <- female_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      female_2 <- female_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      female_3 <- female_3 + 1
    } else {female_missing <- female_missing + 1}
  }
}




female_1_percentage <- round(female_1 / i * 100, digits = 2)
male_1_percentage <- round(male_1 / i * 100, digits = 2)

female_2_percentage <- round(female_2 / i * 100, digits = 2)
male_2_percentage <- round(male_2 / i * 100, digits = 2)

female_3_percentage <- round(female_3 / i * 100, digits = 2)
male_3_percentage <- round(male_3 / i * 100, digits = 2)

female_missing_percentage <- round(female_missing / i * 100, digits = 2)
male_missing_percentage <- round(male_missing / i * 100, digits = 2)




