# initiate new columns for the comparison if treatment target reached for the Guidelines 2015 and 2019
# aim reached
# aim not reached
# no LDL-C measured

target <- which(names(Table_Patients) == 'LDL_MAX_numeric_unit')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2016_table = "no LDL-C measured"), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'Treatment_according_Guidelines_2016_table')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2019_table = "no LDL-C measured"), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'Treatment_according_Guidelines_2019_table')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2016_table_high_statin_intensity = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'Treatment_according_Guidelines_2016_table_high_statin_intensity')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2016_table_low_statin_intensity = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'Treatment_according_Guidelines_2016_table_low_statin_intensity')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2019_table_high_statin_intensity = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'Treatment_according_Guidelines_2019_table_high_statin_intensity')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Treatment_according_Guidelines_2019_table_low_statin_intensity = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])


# find out if LDL-C aim is reached in line with the 2016 Guidelines

for (i in 1:nrow(Table_Patients)) {
  if (is.na(Table_Patients$LDL_MAX_numeric[i]) || Table_Patients$LDL_MAX_numeric[i] == 0) {
    next
  } else if (Table_Patients$LDL_MAX_numeric[i] >= 1.8){
    Table_Patients$Treatment_according_Guidelines_2016_table[i] <- paste0("aim not reached")
  } else {Table_Patients$Treatment_according_Guidelines_2016_table[i] <- paste0("aim reached")}
}


# find out if LDL-C aim is reached in line with the 2019 Guidelines

for (i in 1:nrow(Table_Patients)) {
  if (is.na(Table_Patients$LDL_MAX_numeric[i]) || Table_Patients$LDL_MAX_numeric[i] == 0) {
    next
  } else if (Table_Patients$LDL_MAX_numeric[i] >= 1.4){
    Table_Patients$Treatment_according_Guidelines_2019_table[i] <- paste0("aim not reached")
  } else {Table_Patients$Treatment_according_Guidelines_2019_table[i] <- paste0("aim reached")}
}





# initiate rows with highest statin intensity in and out 



target <- which(names(Table_Patients) == 'Ezetimib_out')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_in_table = "low/medium"), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'highest_intensity_in_table')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_out_table= "low/medium"), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'highest_intensity_in_table')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_tot_table= "low/medium"), Table_Patients[,(target+1):length(Table_Patients),drop=F])


# find highest_intensity_in low, medium, high

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity[i] == 2) {
    Table_Patients$highest_intensity_tot_table[i] <- "high"
  } else if (Table_Patients$highest_intensity[i] == 1) {
    Table_Patients$highest_intensity_tot_table[i] <- "low/medium"
  } else if (Table_Patients$highest_intensity[i] == 0) {
    Table_Patients$highest_intensity_tot_table[i] <- "low/medium"
  } else {next}
}


# individual columns for treatment according to guidelines for each statin intensity

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity[i] == 1) {
    if (is.na(Table_Patients$LDL_MAX_numeric[i]) || Table_Patients$LDL_MAX_numeric[i] == 0) {
      next
    } else if (Table_Patients$LDL_MAX_numeric[i] >= 1.8){
      Table_Patients$Treatment_according_Guidelines_2016_table_low_statin_intensity[i] <- paste0("aim not reached")
    } else {Table_Patients$Treatment_according_Guidelines_2016_table_low_statin_intensity[i] <- paste0("aim reached")}
    
    if (is.na(Table_Patients$LDL_MAX_numeric[i]) || Table_Patients$LDL_MAX_numeric[i] == 0) {
      next
    } else if (Table_Patients$LDL_MAX_numeric[i] >= 1.4){
      Table_Patients$Treatment_according_Guidelines_2019_table_low_statin_intensity[i] <- paste0("aim not reached")
    
      } else {Table_Patients$Treatment_according_Guidelines_2019_table_low_statin_intensity[i] <- paste0("aim reached")} 
  
    } else if (Table_Patients$highest_intensity[i] == 2) {
    
    if (is.na(Table_Patients$LDL_MAX_numeric[i]) || Table_Patients$LDL_MAX_numeric[i] == 0) {
      next
    } else if (Table_Patients$LDL_MAX_numeric[i] >= 1.8){
      Table_Patients$Treatment_according_Guidelines_2016_table_high_statin_intensity[i] <- paste0("aim not reached")
    } else {Table_Patients$Treatment_according_Guidelines_2016_table_high_statin_intensity[i] <- paste0("aim reached")}
    
    if (is.na(Table_Patients$LDL_MAX_numeric[i]) || Table_Patients$LDL_MAX_numeric[i] == 0) {
      next
    } else if (Table_Patients$LDL_MAX_numeric[i] >= 1.4){
      Table_Patients$Treatment_according_Guidelines_2019_table_high_statin_intensity[i] <- paste0("aim not reached")
    } else {Table_Patients$Treatment_according_Guidelines_2019_table_high_statin_intensity[i] <- paste0("aim reached")} 
  }
}


# 
# # find highest_intensity_out low, medium, high
# 
# for (i in 1:nrow(Table_Patients)) {
#   if (Table_Patients$high_intensity_out[i] == 1) {
#     Table_Patients$highest_intensity_out_table[i] <- "high"
#   } else if (Table_Patients$medium_intensity_out[i] == 1) {
#     Table_Patients$highest_intensity_out_table[i] <- "low/medium"
#   } else if (Table_Patients$low_intensity_out[i] == 1) {
#     Table_Patients$highest_intensity_out_table[i] <- "low/medium"
#   } else {next}
# }
# 
# # find highest_intensity_tot low, medium, high
# 
# for (i in 1:nrow(Table_Patients)) {
#   if (Table_Patients$highest_intensity_out_table[i] == "high" || Table_Patients$highest_intensity_in_table[i] == "high") {
#     Table_Patients$highest_intensity_tot_table[i] <- "high"
#   } else if (Table_Patients$highest_intensity_out_table[i] == "low/medium" || Table_Patients$highest_intensity_in_table[i] == "low/medium") {
#     Table_Patients$highest_intensity_tot_table[i] <- "low/medium"
#   } else {
#     Table_Patients$highest_intensity_tot_table[i] <- "no Statin"
#   }
# }



for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$Atorvastatin_in[i] > 0 && is.na(Table_Patients$Atorvastatin_in[i]) == FALSE) {
    Table_Patients$Atorvastatin_in[i] <- 1
  } else {Table_Patients$Atorvastatin_in[i] <- 0}
  
  if (Table_Patients$Atorvastatin_out[i] > 0 && is.na(Table_Patients$Atorvastatin_out[i]) == FALSE) {
    Table_Patients$Atorvastatin_out[i] <- 1
  } else {Table_Patients$Atorvastatin_out[i] <- 0}
  
  if (Table_Patients$Ator_EZ_in[i] > 0 && is.na(Table_Patients$Ator_EZ_in[i]) == FALSE) {
    Table_Patients$Ator_EZ_in[i] <- 1
  } else {Table_Patients$Ator_EZ_in[i] <- 0}
  
  if (Table_Patients$Ator_EZ_out[i] > 0 && is.na(Table_Patients$Ator_EZ_out[i]) == FALSE) {
    Table_Patients$Ator_EZ_out[i] <- 1
  } else {Table_Patients$Ator_EZ_out[i] <- 0}
  
  if (Table_Patients$Bezafibrat_in[i] > 0 && is.na(Table_Patients$Bezafibrat_in[i]) == FALSE) {
    Table_Patients$Bezafibrat_in[i] <- 1
  } else {Table_Patients$Bezafibrat_in[i] <- 0}
  
  if (Table_Patients$Bezafibrat_out[i] > 0 && is.na(Table_Patients$Bezafibrat_out[i]) == FALSE) {
    Table_Patients$Bezafibrat_out[i] <- 1
  } else {Table_Patients$Bezafibrat_out[i] <- 0}
  
  if (Table_Patients$Rosuvastatin_in[i] > 0 && is.na(Table_Patients$Rosuvastatin_in[i]) == FALSE) {
    Table_Patients$Rosuvastatin_in[i] <- 1
  } else {Table_Patients$Rosuvastatin_in[i] <- 0}
  
  if (Table_Patients$Rosuvastatin_out[i] > 0 && is.na(Table_Patients$Rosuvastatin_out[i]) == FALSE) {
    Table_Patients$Rosuvastatin_out[i] <- 1
  } else {Table_Patients$Rosuvastatin_out[i] <- 0}
  
  if (Table_Patients$Fenofibrat_in[i] > 0 && is.na(Table_Patients$Fenofibrat_in[i]) == FALSE) {
    Table_Patients$Fenofibrat_in[i] <- 1
  } else {Table_Patients$Fenofibrat_in[i] <- 0}
  
  if (Table_Patients$Fenofibrat_out[i] > 0 && is.na(Table_Patients$Fenofibrat_out[i]) == FALSE) {
    Table_Patients$Fenofibrat_out[i] <- 1
  } else {Table_Patients$Fenofibrat_out[i] <- 0}
  
  if (Table_Patients$Fluvastatin_in[i] > 0 && is.na(Table_Patients$Fluvastatin_in[i]) == FALSE) {
    Table_Patients$Fluvastatin_in[i] <- 1
  } else {Table_Patients$Fluvastatin_in[i] <- 0}
  
  if (Table_Patients$Fluvastatin_out[i] > 0 && is.na(Table_Patients$Fluvastatin_out[i]) == FALSE) {
    Table_Patients$Fluvastatin_out[i] <- 1
  } else {Table_Patients$Fluvastatin_out[i] <- 0}
  
  if (Table_Patients$Gemfibrozil_in[i] > 0 && is.na(Table_Patients$Gemfibrozil_in[i]) == FALSE) {
    Table_Patients$Gemfibrozil_in[i] <- 1
  } else {Table_Patients$Gemfibrozil_in[i] <- 0}
  
  if (Table_Patients$Gemfibrozil_out[i] > 0 && is.na(Table_Patients$Gemfibrozil_out[i]) == FALSE) {
    Table_Patients$Gemfibrozil_out[i] <- 1
  } else {Table_Patients$Gemfibrozil_out[i] <- 0}
  
  if (Table_Patients$Sim_EZ_in[i] > 0 && is.na(Table_Patients$Sim_EZ_in[i]) == FALSE) {
    Table_Patients$Sim_EZ_in[i] <- 1
  } else {Table_Patients$Sim_EZ_in[i] <- 0}
  
  if (Table_Patients$Sim_EZ_out[i] > 0 && is.na(Table_Patients$Sim_EZ_out[i]) == FALSE) {
    Table_Patients$Sim_EZ_out[i] <- 1
  } else {Table_Patients$Sim_EZ_out[i] <- 0}
  
  if (Table_Patients$Pitavastatin_in[i] > 0 && is.na(Table_Patients$Pitavastatin_in[i]) == FALSE) {
    Table_Patients$Pitavastatin_in[i] <- 1
  } else {Table_Patients$Pitavastatin_in[i] <- 0}
  
  if (Table_Patients$Pitavastatin_out[i] > 0 && is.na(Table_Patients$Pitavastatin_out[i]) == FALSE) {
    Table_Patients$Pitavastatin_out[i] <- 1
  } else {Table_Patients$Pitavastatin_out[i] <- 0}
  
  if (Table_Patients$Pravastatin_in[i] > 0 && is.na(Table_Patients$Pravastatin_in[i]) == FALSE) {
    Table_Patients$Pravastatin_in[i] <- 1
  } else {Table_Patients$Pravastatin_in[i] <- 0}
  
  if (Table_Patients$Pravastatin_out[i] > 0 && is.na(Table_Patients$Pravastatin_out[i]) == FALSE) {
    Table_Patients$Pravastatin_out[i] <- 1
  } else {Table_Patients$Pravastatin_out[i] <- 0}
  
  if (Table_Patients$Alirocumab_in[i] > 0 && is.na(Table_Patients$Alirocumab_in[i]) == FALSE) {
    Table_Patients$Alirocumab_in[i] <- 1
  } else {Table_Patients$Alirocumab_in[i] <- 0}
  
  if (Table_Patients$Alirocumab_out[i] > 0 && is.na(Table_Patients$Alirocumab_out[i]) == FALSE) {
    Table_Patients$Alirocumab_out[i] <- 1
  } else {Table_Patients$Alirocumab_out[i] <- 0}
  
  if (Table_Patients$Simvastatin_in[i] > 0 && is.na(Table_Patients$Simvastatin_in[i]) == FALSE) {
    Table_Patients$Simvastatin_in[i] <- 1
  } else {Table_Patients$Simvastatin_in[i] <- 0}
  
  if (Table_Patients$Simvastatin_out[i] > 0 && is.na(Table_Patients$Simvastatin_out[i]) == FALSE) {
    Table_Patients$Simvastatin_out[i] <- 1
  } else {Table_Patients$Simvastatin_out[i] <- 0}
  
  if (Table_Patients$Ezetimib_in[i] > 0 && is.na(Table_Patients$Ezetimib_in[i]) == FALSE) {
    Table_Patients$Ezetimib_in[i] <- 1
  } else {Table_Patients$Ezetimib_in[i] <- 0}
  
  if (Table_Patients$Ezetimib_out[i] > 0 && is.na(Table_Patients$Ezetimib_out[i]) == FALSE) {
    Table_Patients$Ezetimib_out[i] <- 1
  } else {Table_Patients$Ezetimib_out[i] <- 0}
}


# set In (if == 0) to the value Out

for (i in 1:nrow(Table_Patients)) {

  if (Table_Patients$Atorvastatin_in[i] == 0) {
    Table_Patients$Atorvastatin_in[i] <- Table_Patients$Atorvastatin_out[i]
  }
  
  if (Table_Patients$Ator_EZ_in[i] == 0) {
    Table_Patients$Ator_EZ_in[i] <- Table_Patients$Ator_EZ_out[i]
  }

  if (Table_Patients$Bezafibrat_in[i] == 0) {
    Table_Patients$Bezafibrat_in[i] <- Table_Patients$Bezafibrat_out[i]
  }
  
  if (Table_Patients$Rosuvastatin_in[i] == 0) {
    Table_Patients$Rosuvastatin_in[i] <- Table_Patients$Rosuvastatin_out[i]
  }

  if (Table_Patients$Fenofibrat_in[i] == 0) {
    Table_Patients$Fenofibrat_in[i] <- Table_Patients$Fenofibrat_out[i]
  }
  
  if (Table_Patients$Fluvastatin_in[i] == 0) {
    Table_Patients$Fluvastatin_in[i] <- Table_Patients$Fluvastatin_out[i]
  }
  

  if (Table_Patients$Gemfibrozil_in[i] == 0) {
    Table_Patients$Gemfibrozil_in[i] <- Table_Patients$Gemfibrozil_out[i]
  }

  if (Table_Patients$Sim_EZ_in[i] == 0) {
    Table_Patients$Sim_EZ_in[i] <- Table_Patients$Sim_EZ_out[i]
  }
  
  if (Table_Patients$Pitavastatin_in[i] == 0) {
    Table_Patients$Pitavastatin_in[i] <- Table_Patients$Pitavastatin_out[i]
  }

  if (Table_Patients$Pravastatin_in[i] == 0) {
    Table_Patients$Pravastatin_in[i] <- Table_Patients$Pravastatin_out[i]
  }
  
  if (Table_Patients$Alirocumab_in[i] == 0) {
    Table_Patients$Alirocumab_in[i] <- Table_Patients$Alirocumab_out[i]
  }
  
  if (Table_Patients$Simvastatin_in[i] == 0) {
    Table_Patients$Simvastatin_in[i] <- Table_Patients$Simvastatin_out[i]
  }

  if (Table_Patients$Ezetimib_in[i] == 0) {
    Table_Patients$Ezetimib_in[i] <- Table_Patients$Ezetimib_out[i]
  }
}


simvastatin <- 0
rosuvastatin <- 0
atorvastatin <- 0
fluvastatin <- 0
pitavastatin <- 0
pravastatin <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$Simvastatin_in[i] != 0) {
    simvastatin <- simvastatin + 1
  }
  if (Table_Patients$Rosuvastatin_in[i] != 0) {
    rosuvastatin <- rosuvastatin + 1
  }
  if (Table_Patients$Atorvastatin_in[i] != 0) {
    atorvastatin <- atorvastatin + 1
  }
  if (Table_Patients$Fluvastatin_in[i] != 0) {
    fluvastatin <- fluvastatin + 1
  }
  if (Table_Patients$Pitavastatin_in[i] != 0) {
    pitavastatin <- pitavastatin + 1
  }
  if (Table_Patients$Pravastatin_in[i] != 0) {
    pravastatin <- pravastatin + 1
  }
}





