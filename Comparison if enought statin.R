# find out if intensity is high enough or not
# find percentage of patients with high enough treatment

# LDL_MAX_numeric clean up

for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$LDL_MAX_numeric[i] == "keine" | Table_Patients$LDL_MAX_numeric[i] == "nicht" | Table_Patients$LDL_MAX_numeric[i] == "<0.1" | 
             Table_Patients$LDL_MAX_numeric[i] == " " | is.na(Table_Patients$LDL_MAX_numeric[i])),
          Table_Patients$LDL_MAX_numeric[i] <- 0, next)
  ifelse (Table_Patients$LDL_MAX_numeric[i] == ">0.4", Table_Patients$LDL_MAX_numeric[i] <- 0.4, next)
}



# initiate new columns for the comparison if treatment target reached for the Guidelines 2015 and 2019
# 2 == aim reached
# 1 == aim not reached
# 0 == no LDL-C measured

target <- which(names(Table_Patients) == 'LDL_MAX_numeric_unit')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2016 = 0), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'Treatment_according_Guidelines_2016')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2019 = 0), Table_Patients[,(target+1):length(Table_Patients),drop=F])



# find out if LDL-C aim is reached in line with the 2016 Guidelines

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$LDL_MAX_numeric[i] == 0) {
    next
  } else if (Table_Patients$LDL_MAX_numeric[i] >= 1.8){
    Table_Patients$Treatment_according_Guidelines_2016[i] <- 1
  } else {Table_Patients$Treatment_according_Guidelines_2016[i] <- 2}
}


# find out if LDL-C aim is reached in line with the 2019 Guidelines

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$LDL_MAX_numeric[i] == 0) {
    next
  } else if (Table_Patients$LDL_MAX_numeric[i] >= 1.4){
    Table_Patients$Treatment_according_Guidelines_2019[i] <- 1
  } else {Table_Patients$Treatment_according_Guidelines_2019[i] <- 2}
}


# initiate new columns, one for statin intensity in and one for out for the Guidelines 2016 and 2019
# 3 == aim reached (intensity high enough)
# 2 == aim not reached (intensity too low)
# 1 == no statin therapy (should receive statin)
# 0 == no LDL-C measured


# target <- which(names(Table_Patients) == 'highest_intensity_out')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(high_enough_treatment_in_2016 = 0))
# 
# target <- which(names(Table_Patients) == 'high_enough_treatment_in_2016')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(high_enough_treatment_out_2016 = 0))
# 
# target <- which(names(Table_Patients) == 'high_enough_treatment_out_2016')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(high_enough_treatment_in_2019 = 0))
# 
# target <- which(names(Table_Patients) == 'high_enough_treatment_in_2019')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(high_enough_treatment_out_2019 = 0))
# 
# 
# # comparison for the Guidelines 2016, whether statin intensity in high enough or not
# 
# for (i in 1:nrow(Table_Patients)) {
#   if (Table_Patients$Treatment_according_Guidelines_2016[i] == 2) {
#     Table_Patients$high_enough_treatment_in_2016[i] <- 3
#   } else if (Table_Patients$Treatment_according_Guidelines_2016[i] == 1 && Table_Patients$highest_intensity_in[i] != 0) {
#     Table_Patients$high_enough_treatment_in_2016[i] <- 2
#   } else if (Table_Patients$Treatment_according_Guidelines_2016[i] == 1 && Table_Patients$highest_intensity_in[i] == 0) {
#     Table_Patients$high_enough_treatment_in_2016[i] <- 1
#   } else {Table_Patients$high_enough_treatment_in_2016[i] <- 0}
# }
# 
# 
# # comparison for the Guidelines 2016, whether statin intensity out high enough or not
# 
# for (i in 1:nrow(Table_Patients)) {
#   if (Table_Patients$Treatment_according_Guidelines_2016[i] == 2) {
#     Table_Patients$high_enough_treatment_out_2016[i] <- 3
#   } else if (Table_Patients$Treatment_according_Guidelines_2016[i] == 1 && Table_Patients$highest_intensity_out[i] != 0) {
#     Table_Patients$high_enough_treatment_out_2016[i] <- 2
#   } else if (Table_Patients$Treatment_according_Guidelines_2016[i] == 1 && Table_Patients$highest_intensity_out[i] == 0) {
#     Table_Patients$high_enough_treatment_out_2016[i] <- 1
#   } else {Table_Patients$high_enough_treatment_out_2016[i] <- 0}
# }
# 
# 
# # comparison for the Guidelines 2019, whether statin intensity in high enough or not
# 
# for (i in 1:nrow(Table_Patients)) {
#   if (Table_Patients$Treatment_according_Guidelines_2019[i] == 2) {
#     Table_Patients$high_enough_treatment_in_2019[i] <- 3
#   } else if (Table_Patients$Treatment_according_Guidelines_2019[i] == 1 && Table_Patients$highest_intensity_in[i] != 0) {
#     Table_Patients$high_enough_treatment_in_2019[i] <- 2
#   } else if (Table_Patients$Treatment_according_Guidelines_2019[i] == 1 && Table_Patients$highest_intensity_in[i] == 0) {
#     Table_Patients$high_enough_treatment_in_2019[i] <- 1
#   } else {Table_Patients$high_enough_treatment_in_2019[i] <- 0}
# }
# 
# 
# # comparison for the Guidelines 2019, whether statin intensity out high enough or not
# 
# for (i in 1:nrow(Table_Patients)) {
#   if (Table_Patients$Treatment_according_Guidelines_2019[i] == 2) {
#     Table_Patients$high_enough_treatment_out_2019[i] <- 3
#   } else if (Table_Patients$Treatment_according_Guidelines_2019[i] == 1 && Table_Patients$highest_intensity_out[i] != 0) {
#     Table_Patients$high_enough_treatment_out_2019[i] <- 2
#   } else if (Table_Patients$Treatment_according_Guidelines_2019[i] == 1 && Table_Patients$highest_intensity_out[i] == 0) {
#     Table_Patients$high_enough_treatment_out_2019[i] <- 1
#   } else {Table_Patients$high_enough_treatment_out_2019[i] <- 0}
# }





# find if treatment change
# initiation of new column to compare treatment change

# 2 == improvement of treatment
# 1 == worsening of treatment
# 0 == no change

# target <- which(names(Table_Patients) == 'high_enough_treatment_out_2019')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_change_2016 = 0))
# 
# target <- which(names(Table_Patients) == 'Treatment_change_2016')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_change_2019 = 0))
# 
# 
# # compare the treatment in light of the 2016 Guidelines
# # if lowering of from in to out 1, if improvement 2, else 0
# 
# for (i in 1:nrow(Table_Patients)) {
#   if (Table_Patients$high_enough_treatment_in_2016[i] < Table_Patients$high_enough_treatment_out_2016[i]) {
#     Table_Patients$Treatment_change_2016[i] <- 2
#   } else if (Table_Patients$high_enough_treatment_in_2016[i] > Table_Patients$high_enough_treatment_out_2016[i]) {
#     Table_Patients$Treatment_change_2016[i] <- 1
#   } else {next}
# }
# 
# 
# # compare the treatment in light of the 2019 Guidelines
# # if lowering of from in to out 1, if improvement 2, else 0
# 
# for (i in 1:nrow(Table_Patients)) {
#   if (Table_Patients$high_enough_treatment_in_2019[i] < Table_Patients$high_enough_treatment_out_2019[i]) {
#     Table_Patients$Treatment_change_2019[i] <- 2
#   } else if (Table_Patients$high_enough_treatment_in_2019[i] > Table_Patients$high_enough_treatment_out_2019[i]) {
#     Table_Patients$Treatment_change_2019[i] <- 1
#   } else {next}
# }


