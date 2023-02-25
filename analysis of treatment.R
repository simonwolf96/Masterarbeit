# number of people for each treatment category enough treatmen and percentage


# get the number of people if aim reached or not for each severity


# in 2016

number_aim_reached_in_2016_1 <- 0
number_aim_reached_in_2016_2 <- 0
number_aim_reached_in_2016_3 <- 0
number_aim_reached_in_2016_missing <- 0

number_aim_not_reached_in_2016_1 <- 0
number_aim_not_reached_in_2016_2 <- 0
number_aim_not_reached_in_2016_3 <- 0
number_aim_not_reached_in_2016_missing <- 0

number_should_get_therapy_in_2016_1 <- 0
number_should_get_therapy_in_2016_2 <- 0
number_should_get_therapy_in_2016_3 <- 0
number_should_get_therapy_in_2016_missing <- 0

number_LDL_not_measured_in_2016_1 <- 0
number_LDL_not_measured_in_2016_2 <- 0
number_LDL_not_measured_in_2016_3 <- 0
number_LDL_not_measured_in_2016_missing <- 0


# out 2016

number_aim_reached_out_2016_1 <- 0
number_aim_reached_out_2016_2 <- 0
number_aim_reached_out_2016_3 <- 0
number_aim_reached_out_2016_missing <- 0

number_aim_not_reached_out_2016_1 <- 0
number_aim_not_reached_out_2016_2 <- 0
number_aim_not_reached_out_2016_3 <- 0
number_aim_not_reached_out_2016_missing <- 0

number_should_get_therapy_out_2016_1 <- 0
number_should_get_therapy_out_2016_2 <- 0
number_should_get_therapy_out_2016_3 <- 0
number_should_get_therapy_out_2016_missing <- 0

number_LDL_not_measured_out_2016_1 <- 0
number_LDL_not_measured_out_2016_2 <- 0
number_LDL_not_measured_out_2016_3 <- 0
number_LDL_not_measured_out_2016_missing <- 0


# in 2019

number_aim_reached_in_2019_1 <- 0
number_aim_reached_in_2019_2 <- 0
number_aim_reached_in_2019_3 <- 0
number_aim_reached_in_2019_missing <- 0

number_aim_not_reached_in_2019_1 <- 0
number_aim_not_reached_in_2019_2 <- 0
number_aim_not_reached_in_2019_3 <- 0
number_aim_not_reached_in_2019_missing <- 0

number_should_get_therapy_in_2019_1 <- 0
number_should_get_therapy_in_2019_2 <- 0
number_should_get_therapy_in_2019_3 <- 0
number_should_get_therapy_in_2019_missing <- 0

number_LDL_not_measured_in_2019_1 <- 0
number_LDL_not_measured_in_2019_2 <- 0
number_LDL_not_measured_in_2019_3 <- 0
number_LDL_not_measured_in_2019_missing <- 0


# out 2019

number_aim_reached_out_2019_1 <- 0
number_aim_reached_out_2019_2 <- 0
number_aim_reached_out_2019_3 <- 0
number_aim_reached_out_2019_missing <- 0

number_aim_not_reached_out_2019_1 <- 0
number_aim_not_reached_out_2019_2 <- 0
number_aim_not_reached_out_2019_3 <- 0
number_aim_not_reached_out_2019_missing <- 0

number_should_get_therapy_out_2019_1 <- 0
number_should_get_therapy_out_2019_2 <- 0
number_should_get_therapy_out_2019_3 <- 0
number_should_get_therapy_out_2019_missing <- 0

number_LDL_not_measured_out_2019_1 <- 0
number_LDL_not_measured_out_2019_2 <- 0
number_LDL_not_measured_out_2019_3 <- 0
number_LDL_not_measured_out_2019_missing <- 0

# in 2016

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$high_enough_treatment_in_2016[i] == 3) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_aim_reached_in_2016_1 <- number_aim_reached_in_2016_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_aim_reached_in_2016_2 <- number_aim_reached_in_2016_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_aim_reached_in_2016_3 <- number_aim_reached_in_2016_3 + 1
    } else {
      number_aim_reached_in_2016_missing <- number_aim_reached_in_2016_missing + 1
    }
  } else if (Table_Patients$high_enough_treatment_in_2016[i] == 2) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_aim_not_reached_in_2016_1 <- number_aim_not_reached_in_2016_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_aim_not_reached_in_2016_2 <- number_aim_not_reached_in_2016_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_aim_not_reached_in_2016_3 <- number_aim_not_reached_in_2016_3 + 1
    } else {
      number_aim_not_reached_in_2016_missing <- number_aim_not_reached_in_2016_missing + 1
    }
  } else if (Table_Patients$high_enough_treatment_in_2016[i] == 1) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_should_get_therapy_in_2016_1 <- number_should_get_therapy_in_2016_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_should_get_therapy_in_2016_2 <- number_should_get_therapy_in_2016_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_should_get_therapy_in_2016_3 <- number_should_get_therapy_in_2016_3 + 1
    } else {
      number_should_get_therapy_in_2016_missing <- number_should_get_therapy_in_2016_missing + 1
    }
  } else {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_LDL_not_measured_in_2016_1 <- number_LDL_not_measured_in_2016_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_LDL_not_measured_in_2016_2 <- number_LDL_not_measured_in_2016_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_LDL_not_measured_in_2016_3 <- number_LDL_not_measured_in_2016_3 + 1
    } else {
      number_LDL_not_measured_in_2016_missing <- number_LDL_not_measured_in_2016_missing + 1
    }
  }
}


# out 2016

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$high_enough_treatment_out_2016[i] == 3) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_aim_reached_out_2016_1 <- number_aim_reached_out_2016_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_aim_reached_out_2016_2 <- number_aim_reached_out_2016_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_aim_reached_out_2016_3 <- number_aim_reached_out_2016_3 + 1
    } else {
      number_aim_reached_out_2016_missing <- number_aim_reached_out_2016_missing + 1
    }
  } else if (Table_Patients$high_enough_treatment_out_2016[i] == 2) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_aim_not_reached_out_2016_1 <- number_aim_not_reached_out_2016_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_aim_not_reached_out_2016_2 <- number_aim_not_reached_out_2016_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_aim_not_reached_out_2016_3 <- number_aim_not_reached_out_2016_3 + 1
    } else {
      number_aim_not_reached_out_2016_missing <- number_aim_not_reached_out_2016_missing + 1
    }
  } else if (Table_Patients$high_enough_treatment_out_2016[i] == 1) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_should_get_therapy_out_2016_1 <- number_should_get_therapy_out_2016_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_should_get_therapy_out_2016_2 <- number_should_get_therapy_out_2016_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_should_get_therapy_out_2016_3 <- number_should_get_therapy_out_2016_3 + 1
    } else {
      number_should_get_therapy_out_2016_missing <- number_should_get_therapy_out_2016_missing + 1
    }
  } else {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_LDL_not_measured_out_2016_1 <- number_LDL_not_measured_out_2016_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_LDL_not_measured_out_2016_2 <- number_LDL_not_measured_out_2016_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_LDL_not_measured_out_2016_3 <- number_LDL_not_measured_out_2016_3 + 1
    } else {
      number_LDL_not_measured_out_2016_missing <- number_LDL_not_measured_out_2016_missing + 1
    }
  }
}


# in 2019

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$high_enough_treatment_in_2019[i] == 3) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_aim_reached_in_2019_1 <- number_aim_reached_in_2019_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_aim_reached_in_2019_2 <- number_aim_reached_in_2019_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_aim_reached_in_2019_3 <- number_aim_reached_in_2019_3 + 1
    } else {
      number_aim_reached_in_2019_missing <- number_aim_reached_in_2019_missing + 1
    }
  } else if (Table_Patients$high_enough_treatment_in_2019[i] == 2) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_aim_not_reached_in_2019_1 <- number_aim_not_reached_in_2019_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_aim_not_reached_in_2019_2 <- number_aim_not_reached_in_2019_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_aim_not_reached_in_2019_3 <- number_aim_not_reached_in_2019_3 + 1
    } else {
      number_aim_not_reached_in_2019_missing <- number_aim_not_reached_in_2019_missing + 1
    }
  } else if (Table_Patients$high_enough_treatment_in_2019[i] == 1) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_should_get_therapy_in_2019_1 <- number_should_get_therapy_in_2019_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_should_get_therapy_in_2019_2 <- number_should_get_therapy_in_2019_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_should_get_therapy_in_2019_3 <- number_should_get_therapy_in_2019_3 + 1
    } else {
      number_should_get_therapy_in_2019_missing <- number_should_get_therapy_in_2019_missing + 1
    }
  } else {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_LDL_not_measured_in_2019_1 <- number_LDL_not_measured_in_2019_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_LDL_not_measured_in_2019_2 <- number_LDL_not_measured_in_2019_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_LDL_not_measured_in_2019_3 <- number_LDL_not_measured_in_2019_3 + 1
    } else {
      number_LDL_not_measured_in_2019_missing <- number_LDL_not_measured_in_2019_missing + 1
    }
  }
}


# out 2019

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$high_enough_treatment_out_2019[i] == 3) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_aim_reached_out_2019_1 <- number_aim_reached_out_2019_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_aim_reached_out_2019_2 <- number_aim_reached_out_2019_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_aim_reached_out_2019_3 <- number_aim_reached_out_2019_3 + 1
    } else {
      number_aim_reached_out_2019_missing <- number_aim_reached_out_2019_missing + 1
    }
  } else if (Table_Patients$high_enough_treatment_out_2019[i] == 2) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_aim_not_reached_out_2019_1 <- number_aim_not_reached_out_2019_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_aim_not_reached_out_2019_2 <- number_aim_not_reached_out_2019_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_aim_not_reached_out_2019_3 <- number_aim_not_reached_out_2019_3 + 1
    } else {
      number_aim_not_reached_out_2019_missing <- number_aim_not_reached_out_2019_missing + 1
    }
  } else if (Table_Patients$high_enough_treatment_out_2019[i] == 1) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_should_get_therapy_out_2019_1 <- number_should_get_therapy_out_2019_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_should_get_therapy_out_2019_2 <- number_should_get_therapy_out_2019_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_should_get_therapy_out_2019_3 <- number_should_get_therapy_out_2019_3 + 1
    } else {
      number_should_get_therapy_out_2019_missing <- number_should_get_therapy_out_2019_missing + 1
    }
  } else {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_LDL_not_measured_out_2019_1 <- number_LDL_not_measured_out_2019_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_LDL_not_measured_out_2019_2 <- number_LDL_not_measured_out_2019_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_LDL_not_measured_out_2019_3 <- number_LDL_not_measured_out_2019_3 + 1
    } else {
      number_LDL_not_measured_out_2019_missing <- number_LDL_not_measured_out_2019_missing + 1
    }
  }
}



# percentage in 2016

number_aim_reached_in_2016_1_percentage <- round(number_aim_reached_in_2016_1 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_in_2016_2_percentage <- round(number_aim_reached_in_2016_2 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_in_2016_3_percentage <- round(number_aim_reached_in_2016_3 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_in_2016_missing_percentage <- round(number_aim_reached_in_2016_missing / nrow(Table_Patients) * 100, digits = 2)

number_aim_not_reached_in_2016_1_percentage <- round(number_aim_not_reached_in_2016_1 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_in_2016_2_percentage <- round(number_aim_not_reached_in_2016_2 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_in_2016_3_percentage <- round(number_aim_not_reached_in_2016_3 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_in_2016_missing_percentage <- round(number_aim_not_reached_in_2016_missing / nrow(Table_Patients) * 100, digits = 2)

number_should_get_therapy_in_2016_1_percentage <- round(number_should_get_therapy_in_2016_1 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_in_2016_2_percentage <- round(number_should_get_therapy_in_2016_2 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_in_2016_3_percentage <- round(number_should_get_therapy_in_2016_3 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_in_2016_missing_percentage <- round(number_should_get_therapy_in_2016_missing / nrow(Table_Patients) * 100, digits = 2)

number_LDL_not_measured_in_2016_1_percentage <- round(number_LDL_not_measured_in_2016_1 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_in_2016_2_percentage <- round(number_LDL_not_measured_in_2016_2 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_in_2016_3_percentage <- round(number_LDL_not_measured_in_2016_3 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_in_2016_missing_percentage <- round(number_LDL_not_measured_in_2016_missing / nrow(Table_Patients) * 100, digits = 2)


# percentage out 2016

number_aim_reached_out_2016_1_percentage <- round(number_aim_reached_out_2016_1 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_out_2016_2_percentage <- round(number_aim_reached_out_2016_2 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_out_2016_3_percentage <- round(number_aim_reached_out_2016_3 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_out_2016_missing_percentage <- round(number_aim_reached_out_2016_missing / nrow(Table_Patients) * 100, digits = 2)

number_aim_not_reached_out_2016_1_percentage <- round(number_aim_not_reached_out_2016_1 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_out_2016_2_percentage <- round(number_aim_not_reached_out_2016_2 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_out_2016_3_percentage <- round(number_aim_not_reached_out_2016_3 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_out_2016_missing_percentage <- round(number_aim_not_reached_out_2016_missing / nrow(Table_Patients) * 100, digits = 2)

number_should_get_therapy_out_2016_1_percentage <- round(number_should_get_therapy_out_2016_1 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_out_2016_2_percentage <- round(number_should_get_therapy_out_2016_2 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_out_2016_3_percentage <- round(number_should_get_therapy_out_2016_3 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_out_2016_missing_percentage <- round(number_should_get_therapy_out_2016_missing / nrow(Table_Patients) * 100, digits = 2)

number_LDL_not_measured_out_2016_1_percentage <- round(number_LDL_not_measured_out_2016_1 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_out_2016_2_percentage <- round(number_LDL_not_measured_out_2016_2 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_out_2016_3_percentage <- round(number_LDL_not_measured_out_2016_3 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_out_2016_missing_percentage <- round(number_LDL_not_measured_out_2016_missing / nrow(Table_Patients) * 100, digits = 2)


# percentage in 2019

number_aim_reached_in_2019_1_percentage <- round(number_aim_reached_in_2019_1 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_in_2019_2_percentage <- round(number_aim_reached_in_2019_2 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_in_2019_3_percentage <- round(number_aim_reached_in_2019_3 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_in_2019_missing_percentage <- round(number_aim_reached_in_2019_missing / nrow(Table_Patients) * 100, digits = 2)

number_aim_not_reached_in_2019_1_percentage <- round(number_aim_not_reached_in_2019_1 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_in_2019_2_percentage <- round(number_aim_not_reached_in_2019_2 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_in_2019_3_percentage <- round(number_aim_not_reached_in_2019_3 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_in_2019_missing_percentage <- round(number_aim_not_reached_in_2019_missing / nrow(Table_Patients) * 100, digits = 2)

number_should_get_therapy_in_2019_1_percentage <- round(number_should_get_therapy_in_2019_1 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_in_2019_2_percentage <- round(number_should_get_therapy_in_2019_2 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_in_2019_3_percentage <- round(number_should_get_therapy_in_2019_3 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_in_2019_missing_percentage <- round(number_should_get_therapy_in_2019_missing / nrow(Table_Patients) * 100, digits = 2)

number_LDL_not_measured_in_2019_1_percentage <- round(number_LDL_not_measured_in_2019_1 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_in_2019_2_percentage <- round(number_LDL_not_measured_in_2019_2 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_in_2019_3_percentage <- round(number_LDL_not_measured_in_2019_3 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_in_2019_missing_percentage <- round(number_LDL_not_measured_in_2019_missing / nrow(Table_Patients) * 100, digits = 2)


# percentage out 2019

number_aim_reached_out_2019_1_percentage <- round(number_aim_reached_out_2019_1 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_out_2019_2_percentage <- round(number_aim_reached_out_2019_2 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_out_2019_3_percentage <- round(number_aim_reached_out_2019_3 / nrow(Table_Patients) * 100, digits = 2)
number_aim_reached_out_2019_missing_percentage <- round(number_aim_reached_out_2019_missing / nrow(Table_Patients) * 100, digits = 2)

number_aim_not_reached_out_2019_1_percentage <- round(number_aim_not_reached_out_2019_1 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_out_2019_2_percentage <- round(number_aim_not_reached_out_2019_2 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_out_2019_3_percentage <- round(number_aim_not_reached_out_2019_3 / nrow(Table_Patients) * 100, digits = 2)
number_aim_not_reached_out_2019_missing_percentage <- round(number_aim_not_reached_out_2019_missing / nrow(Table_Patients) * 100, digits = 2)

number_should_get_therapy_out_2019_1_percentage <- round(number_should_get_therapy_out_2019_1 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_out_2019_2_percentage <- round(number_should_get_therapy_out_2019_2 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_out_2019_3_percentage <- round(number_should_get_therapy_out_2019_3 / nrow(Table_Patients) * 100, digits = 2)
number_should_get_therapy_out_2019_missing_percentage <- round(number_should_get_therapy_out_2019_missing / nrow(Table_Patients) * 100, digits = 2)

number_LDL_not_measured_out_2019_1_percentage <- round(number_LDL_not_measured_out_2019_1 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_out_2019_2_percentage <- round(number_LDL_not_measured_out_2019_2 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_out_2019_3_percentage <- round(number_LDL_not_measured_out_2019_3 / nrow(Table_Patients) * 100, digits = 2)
number_LDL_not_measured_out_2019_missing_percentage <- round(number_LDL_not_measured_out_2019_missing / nrow(Table_Patients) * 100, digits = 2)





