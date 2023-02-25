# percentages of high-/medium-/low-intensity statins in

total_number_of_patients_with_statin_in_1 <- 0
total_number_of_patients_with_statin_in_2 <- 0
total_number_of_patients_with_statin_in_3 <- 0
total_number_of_patients_with_statin_in_missing <- 0

total_number_high_intensity_statin_in_1 <- 0
total_number_high_intensity_statin_in_2 <- 0
total_number_high_intensity_statin_in_3 <- 0
total_number_high_intensity_statin_in_missing <- 0

total_number_medium_intensity_statin_in_1 <- 0
total_number_medium_intensity_statin_in_2 <- 0
total_number_medium_intensity_statin_in_3 <- 0
total_number_medium_intensity_statin_in_missing <- 0

total_number_low_intensity_statin_in_1 <- 0
total_number_low_intensity_statin_in_2 <- 0
total_number_low_intensity_statin_in_3 <- 0
total_number_low_intensity_statin_in_missing <- 0

# get total number of patients with statin in

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity_in[i] != 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      total_number_of_patients_with_statin_in_1 <- total_number_of_patients_with_statin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      total_number_of_patients_with_statin_in_2 <- total_number_of_patients_with_statin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      total_number_of_patients_with_statin_in_3 <- total_number_of_patients_with_statin_in_3 + 1
    } else {
      total_number_of_patients_with_statin_in_missing <- total_number_of_patients_with_statin_in_missing + 1
    }
  }
}

total_number_of_patients_with_statin_in_1_percentage <- round(total_number_of_patients_with_statin_in_1 / nrow(Table_Patients) * 100, digits = 2)
total_number_of_patients_with_statin_in_2_percentage <- round(total_number_of_patients_with_statin_in_2 / nrow(Table_Patients) * 100, digits = 2)
total_number_of_patients_with_statin_in_3_percentage <- round(total_number_of_patients_with_statin_in_3 / nrow(Table_Patients) * 100, digits = 2)
total_number_of_patients_with_statin_in_missing_percentage <- round(total_number_of_patients_with_statin_in_missing / nrow(Table_Patients) * 100, digits = 2)



# get total number of patients with high intensity statin in


for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity_in[i] == 3) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      total_number_high_intensity_statin_in_1 <- total_number_high_intensity_statin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      total_number_high_intensity_statin_in_2 <- total_number_high_intensity_statin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      total_number_high_intensity_statin_in_3 <- total_number_high_intensity_statin_in_3 + 1
    } else {
      total_number_high_intensity_statin_in_missing <- total_number_high_intensity_statin_in_missing + 1
    }
  }
}

total_number_high_intensity_statin_in_1_percentage <- round(total_number_high_intensity_statin_in_1 / nrow(Table_Patients) * 100, digits = 2)
total_number_high_intensity_statin_in_2_percentage <- round(total_number_high_intensity_statin_in_2 / nrow(Table_Patients) * 100, digits = 2)
total_number_high_intensity_statin_in_3_percentage <- round(total_number_high_intensity_statin_in_3 / nrow(Table_Patients) * 100, digits = 2)
total_number_high_intensity_statin_in_missing_percentage <- round(total_number_high_intensity_statin_in_missing / nrow(Table_Patients) * 100, digits = 2)


# get total number of patients with medium intensity statin in

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity_in[i] == 2) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      total_number_medium_intensity_statin_in_1 <- total_number_medium_intensity_statin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      total_number_medium_intensity_statin_in_2 <- total_number_medium_intensity_statin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      total_number_medium_intensity_statin_in_3 <- total_number_medium_intensity_statin_in_3 + 1
    } else {
      total_number_medium_intensity_statin_in_missing <- total_number_medium_intensity_statin_in_missing + 1
    }
  }
}

total_number_medium_intensity_statin_in_1_percentage <- round(total_number_medium_intensity_statin_in_1 / nrow(Table_Patients) * 100, digits = 2)
total_number_medium_intensity_statin_in_2_percentage <- round(total_number_medium_intensity_statin_in_2 / nrow(Table_Patients) * 100, digits = 2)
total_number_medium_intensity_statin_in_3_percentage <- round(total_number_medium_intensity_statin_in_3 / nrow(Table_Patients) * 100, digits = 2)
total_number_medium_intensity_statin_in_missing_percentage <- round(total_number_medium_intensity_statin_in_missing / nrow(Table_Patients) * 100, digits = 2)

  
  # get total number of patients with low intensity statin in
  
  for (i in 1:nrow(Table_Patients)) {
    if (Table_Patients$highest_intensity_in[i] == 1) {
      if (Table_Patients$HIGHEST_GROUP[i] == 1) {
        total_number_low_intensity_statin_in_1 <- total_number_low_intensity_statin_in_1 + 1
      } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
        total_number_low_intensity_statin_in_2 <- total_number_low_intensity_statin_in_2 + 1
      } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
        total_number_low_intensity_statin_in_3 <- total_number_low_intensity_statin_in_3 + 1
      } else {
        total_number_low_intensity_statin_in_missing <- total_number_low_intensity_statin_in_missing + 1
      }
    }
  }
  
total_number_low_intensity_statin_in_1_percentage <- round(total_number_low_intensity_statin_in_1 / nrow(Table_Patients) * 100, digits = 2)
total_number_low_intensity_statin_in_2_percentage <- round(total_number_low_intensity_statin_in_2 / nrow(Table_Patients) * 100, digits = 2)
total_number_low_intensity_statin_in_3_percentage <- round(total_number_low_intensity_statin_in_3 / nrow(Table_Patients) * 100, digits = 2)
total_number_low_intensity_statin_in_missing_percentage <- round(total_number_low_intensity_statin_in_missing / nrow(Table_Patients) * 100, digits = 2)





  
# percentages of high-/medium-/low-intensity statins out

total_number_of_patients_with_statin_out_1 <- 0
total_number_of_patients_with_statin_out_2 <- 0
total_number_of_patients_with_statin_out_3 <- 0
total_number_of_patients_with_statin_out_missing <- 0

total_number_high_intensity_statin_out_1 <- 0
total_number_high_intensity_statin_out_2 <- 0
total_number_high_intensity_statin_out_3 <- 0
total_number_high_intensity_statin_out_missing <- 0

total_number_medium_intensity_statin_out_1 <- 0
total_number_medium_intensity_statin_out_2 <- 0
total_number_medium_intensity_statin_out_3 <- 0
total_number_medium_intensity_statin_out_missing <- 0

total_number_low_intensity_statin_out_1 <- 0
total_number_low_intensity_statin_out_2 <- 0
total_number_low_intensity_statin_out_3 <- 0
total_number_low_intensity_statin_out_missing <- 0

# get total number of patients with statin out

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity_out[i] != 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      total_number_of_patients_with_statin_out_1 <- total_number_of_patients_with_statin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      total_number_of_patients_with_statin_out_2 <- total_number_of_patients_with_statin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      total_number_of_patients_with_statin_out_3 <- total_number_of_patients_with_statin_out_3 + 1
    } else {
      total_number_of_patients_with_statin_out_missing <- total_number_of_patients_with_statin_out_missing + 1
    }
  }
}

total_number_of_patients_with_statin_out_1_percentage <- round(total_number_of_patients_with_statin_out_1 / nrow(Table_Patients) * 100, digits = 2)
total_number_of_patients_with_statin_out_2_percentage <- round(total_number_of_patients_with_statin_out_2 / nrow(Table_Patients) * 100, digits = 2)
total_number_of_patients_with_statin_out_3_percentage <- round(total_number_of_patients_with_statin_out_3 / nrow(Table_Patients) * 100, digits = 2)
total_number_of_patients_with_statin_out_missing_percentage <- round(total_number_of_patients_with_statin_out_missing / nrow(Table_Patients) * 100, digits = 2)



# get total number of patients with high intensity statin out


for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity_out[i] == 3) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      total_number_high_intensity_statin_out_1 <- total_number_high_intensity_statin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      total_number_high_intensity_statin_out_2 <- total_number_high_intensity_statin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      total_number_high_intensity_statin_out_3 <- total_number_high_intensity_statin_out_3 + 1
    } else {
      total_number_high_intensity_statin_out_missing <- total_number_high_intensity_statin_out_missing + 1
    }
  }
}

total_number_high_intensity_statin_out_1_percentage <- round(total_number_high_intensity_statin_out_1 / nrow(Table_Patients) * 100, digits = 2)
total_number_high_intensity_statin_out_2_percentage <- round(total_number_high_intensity_statin_out_2 / nrow(Table_Patients) * 100, digits = 2)
total_number_high_intensity_statin_out_3_percentage <- round(total_number_high_intensity_statin_out_3 / nrow(Table_Patients) * 100, digits = 2)
total_number_high_intensity_statin_out_missing_percentage <- round(total_number_high_intensity_statin_out_missing / nrow(Table_Patients) * 100, digits = 2)


# get total number of patients with medium intensity statin out

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity_out[i] == 2) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      total_number_medium_intensity_statin_out_1 <- total_number_medium_intensity_statin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      total_number_medium_intensity_statin_out_2 <- total_number_medium_intensity_statin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      total_number_medium_intensity_statin_out_3 <- total_number_medium_intensity_statin_out_3 + 1
    } else {
      total_number_medium_intensity_statin_out_missing <- total_number_medium_intensity_statin_out_missing + 1
    }
  }
}

total_number_medium_intensity_statin_out_1_percentage <- round(total_number_medium_intensity_statin_out_1 / nrow(Table_Patients) * 100, digits = 2)
total_number_medium_intensity_statin_out_2_percentage <- round(total_number_medium_intensity_statin_out_2 / nrow(Table_Patients) * 100, digits = 2)
total_number_medium_intensity_statin_out_3_percentage <- round(total_number_medium_intensity_statin_out_3 / nrow(Table_Patients) * 100, digits = 2)
total_number_medium_intensity_statin_out_missing_percentage <- round(total_number_medium_intensity_statin_out_missing / nrow(Table_Patients) * 100, digits = 2)


# get total number of patients with low intensity statin out

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity_out[i] == 1) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      total_number_low_intensity_statin_out_1 <- total_number_low_intensity_statin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      total_number_low_intensity_statin_out_2 <- total_number_low_intensity_statin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      total_number_low_intensity_statin_out_3 <- total_number_low_intensity_statin_out_3 + 1
    } else {
      total_number_low_intensity_statin_out_missing <- total_number_low_intensity_statin_out_missing + 1
    }
  }
}

total_number_low_intensity_statin_out_1_percentage <- round(total_number_low_intensity_statin_out_1 / nrow(Table_Patients) * 100, digits = 2)
total_number_low_intensity_statin_out_2_percentage <- round(total_number_low_intensity_statin_out_2 / nrow(Table_Patients) * 100, digits = 2)
total_number_low_intensity_statin_out_3_percentage <- round(total_number_low_intensity_statin_out_3 / nrow(Table_Patients) * 100, digits = 2)
total_number_low_intensity_statin_out_missing_percentage <- round(total_number_low_intensity_statin_out_missing / nrow(Table_Patients) * 100, digits = 2)