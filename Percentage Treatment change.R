# get percentage of people with a worsening/improvement in treatment


worsening_2016_1 <- 0
worsening_2016_2 <- 0
worsening_2016_3 <- 0
worsening_2016_missing <- 0
worsening_2019_1 <- 0
worsening_2019_2 <- 0
worsening_2019_3 <- 0
worsening_2019_missing <- 0

improvement_2016_1 <- 0
improvement_2016_2 <- 0
improvement_2016_3 <- 0
improvement_2016_missing <- 0
improvement_2019_1 <- 0
improvement_2019_2 <- 0
improvement_2019_3 <- 0
improvement_2019_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$Treatment_change_2016[i] == 1 && Table_Patients$HIGHEST_GROUP[i] == 1) {
    worsening_2016_1 <- worsening_2016_1 + 1
  } else if (Table_Patients$Treatment_change_2016[i] == 1 && Table_Patients$HIGHEST_GROUP[i] == 2){
    worsening_2016_2 <- worsening_2016_2 + 1
  } else if (Table_Patients$Treatment_change_2016[i] == 1 && Table_Patients$HIGHEST_GROUP[i] == 3) {
    worsening_2016_3 <- worsening_2016_3 + 1
  } else {
    worsening_2016_missing <-worsening_2016_missing + 1
  }
  
  if (Table_Patients$Treatment_change_2016[i] == 2 && Table_Patients$HIGHEST_GROUP[i] == 1) {
    improvement_2016_1 <- improvement_2016_1 + 1
  } else if (Table_Patients$Treatment_change_2016[i] == 2 && Table_Patients$HIGHEST_GROUP[i] == 2){
    improvement_2016_2 <- improvement_2016_2 + 1
  } else if (Table_Patients$Treatment_change_2016[i] == 2 && Table_Patients$HIGHEST_GROUP[i] == 3) {
    improvement_2016_3 <- improvement_2016_3 + 1
  } else {
    improvement_2016_missing <-improvement_2016_missing + 1
  }
  
  if (Table_Patients$Treatment_change_2019[i] == 1 && Table_Patients$HIGHEST_GROUP[i] == 1) {
    worsening_2019_1 <- worsening_2019_1 + 1
  } else if (Table_Patients$Treatment_change_2019[i] == 1 && Table_Patients$HIGHEST_GROUP[i] == 2){
    worsening_2019_2 <- worsening_2019_2 + 1
  } else if (Table_Patients$Treatment_change_2019[i] == 1 && Table_Patients$HIGHEST_GROUP[i] == 3) {
    worsening_2019_3 <- worsening_2019_3 + 1
  } else {
    worsening_2019_missing <-worsening_2019_missing + 1
  }
  
  if (Table_Patients$Treatment_change_2019[i] == 2 && Table_Patients$HIGHEST_GROUP[i] == 1) {
    improvement_2019_1 <- improvement_2019_1 + 1
  } else if (Table_Patients$Treatment_change_2019[i] == 2 && Table_Patients$HIGHEST_GROUP[i] == 2) {
    improvement_2019_2 <- improvement_2019_2 + 1
  } else if (Table_Patients$Treatment_change_2019[i] == 2 && Table_Patients$HIGHEST_GROUP[i] == 3) {
    improvement_2019_3 <- improvement_2019_3 + 1
  } else {
    improvement_2019_missing <- improvement_2019_missing + 1
  }
}

worsening_2016_1_percentage <- round(worsening_2016_1 / nrow(Table_Patients) * 100, digits = 2)
worsening_2016_2_percentage <- round(worsening_2016_2 / nrow(Table_Patients) * 100, digits = 2)
worsening_2016_3_percentage <- round(worsening_2016_3 / nrow(Table_Patients) * 100, digits = 2)
worsening_2016_missing_percentage <- round(worsening_2016_missing / nrow(Table_Patients) * 100, digits = 2)
improvement_2016_1_percentage <- round(improvement_2016_1 / nrow(Table_Patients) * 100, digits = 2)
improvement_2016_2_percentage <- round(improvement_2016_2 / nrow(Table_Patients) * 100, digits = 2)
improvement_2016_3_percentage <- round(improvement_2016_3 / nrow(Table_Patients) * 100, digits = 2)
improvement_2019_missing_percentage <- round(improvement_2016_missing / nrow(Table_Patients) * 100, digits = 2)

worsening_2019_1_percentage <- round(worsening_2019_1 / nrow(Table_Patients) * 100, digits = 2)
worsening_2019_2_percentage <- round(worsening_2019_2 / nrow(Table_Patients) * 100, digits = 2)
worsening_2019_3_percentage <- round(worsening_2019_3 / nrow(Table_Patients) * 100, digits = 2)
worsening_2019_missing_percentage <- round(worsening_2019_missing / nrow(Table_Patients) * 100, digits = 2)
improvement_2019_1_percentage <- round(improvement_2019_1 / nrow(Table_Patients) * 100, digits = 2)
improvement_2019_2_percentage <- round(improvement_2019_2 / nrow(Table_Patients) * 100, digits = 2)
improvement_2019_3_percentage <- round(improvement_2019_3 / nrow(Table_Patients) * 100, digits = 2)
improvement_2019_missing_percentage <- round(improvement_2019_missing / nrow(Table_Patients) * 100, digits = 2)


# find amount of people who would need a treatment for the 2016 Guidelines and the 2019 Guidelines in and out

Treatment_2016_1_insufficient <- 0
Treatment_2016_2_insufficient <- 0
Treatment_2016_3_insufficient <- 0
Treatment_2016_missing_insufficient <- 0

Treatment_2019_1_insufficient <- 0
Treatment_2019_2_insufficient <- 0
Treatment_2019_3_insufficient <- 0
Treatment_2019_missing_insufficient <- 0

for (i in 1:nrow(Table_Patients)) {
  if ((Table_Patients$Treatment_according_Guidelines_2016[i] == 0 || Table_Patients$Treatment_according_Guidelines_2016[i] == 1) && Table_Patients$HIGHEST_GROUP[i] == 1){
    Treatment_2016_1_insufficient <- Treatment_2016_1_insufficient + 1
  } else if ((Table_Patients$Treatment_according_Guidelines_2016[i] == 0 || Table_Patients$Treatment_according_Guidelines_2016[i] == 1) && Table_Patients$HIGHEST_GROUP[i] == 2){
    Treatment_2016_2_insufficient <- Treatment_2016_2_insufficient + 1
  } else if ((Table_Patients$Treatment_according_Guidelines_2016[i] == 0 || Table_Patients$Treatment_according_Guidelines_2016[i] == 1) && Table_Patients$HIGHEST_GROUP[i] == 3){
    Treatment_2016_3_insufficient <- Treatment_2016_3_insufficient + 1
  } else if ((Table_Patients$Treatment_according_Guidelines_2016[i] == 0 || Table_Patients$Treatment_according_Guidelines_2016[i] == 1) && Table_Patients$HIGHEST_GROUP[i] == 0){
    Treatment_2016_missing_insufficient <- Treatment_2016_missing_insufficient + 1
  }
  
  if ((Table_Patients$Treatment_according_Guidelines_2019[i] == 0 || Table_Patients$Treatment_according_Guidelines_2019[i] == 1) && Table_Patients$HIGHEST_GROUP[i] == 1){
    Treatment_2019_1_insufficient <- Treatment_2019_1_insufficient + 1
  } else if ((Table_Patients$Treatment_according_Guidelines_2019[i] == 0 || Table_Patients$Treatment_according_Guidelines_2019[i] == 1) && Table_Patients$HIGHEST_GROUP[i] == 2){
    Treatment_2019_2_insufficient <- Treatment_2019_2_insufficient + 1
  } else if ((Table_Patients$Treatment_according_Guidelines_2019[i] == 0 || Table_Patients$Treatment_according_Guidelines_2019[i] == 1) && Table_Patients$HIGHEST_GROUP[i] == 3){
    Treatment_2019_3_insufficient <- Treatment_2019_3_insufficient + 1
  } else if ((Table_Patients$Treatment_according_Guidelines_2019[i] == 0 || Table_Patients$Treatment_according_Guidelines_2019[i] == 1) && Table_Patients$HIGHEST_GROUP[i] == 0){
    Treatment_2019_missing_insufficient <- Treatment_2019_missing_insufficient + 1
  }
}

Treatment_2016_1_insufficient_percentage <- round(Treatment_2016_1_insufficient / nrow(Table_Patients) * 100, digits = 2)
Treatment_2016_2_insufficient_percentage <- round(Treatment_2016_2_insufficient / nrow(Table_Patients) * 100, digits = 2)
Treatment_2016_3_insufficient_percentage <- round(Treatment_2016_3_insufficient / nrow(Table_Patients) * 100, digits = 2)
Treatment_2016_missing_insufficient_percentage <- round(Treatment_2016_missing_insufficient / nrow(Table_Patients) * 100, digits = 2)

Treatment_2019_1_insufficient_percentage <- round(Treatment_2019_1_insufficient / nrow(Table_Patients) * 100, digits = 2)
Treatment_2019_2_insufficient_percentage <- round(Treatment_2019_2_insufficient / nrow(Table_Patients) * 100, digits = 2)
Treatment_2019_3_insufficient_percentage <- round(Treatment_2019_3_insufficient / nrow(Table_Patients) * 100, digits = 2)
Treatment_2019_missing_insufficient_percentage <- round(Treatment_2019_missing_insufficient / nrow(Table_Patients) * 100, digits = 2)




