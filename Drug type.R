# find the number of patients with a certain statin

# atorvastatin in and out for all severities
number_atorvastatin_in_1 <- 0
number_atorvastatin_in_2 <- 0
number_atorvastatin_in_3 <- 0
number_atorvastatin_in_missing <- 0

number_atorvastatin_out_1 <- 0
number_atorvastatin_out_2 <- 0
number_atorvastatin_out_3 <- 0
number_atorvastatin_out_missing <- 0

# Ator_EZ in and out for all severities
number_Ator_EZ_in_1 <- 0
number_Ator_EZ_in_2 <- 0
number_Ator_EZ_in_3 <- 0
number_Ator_EZ_in_missing <- 0

number_Ator_EZ_out_1 <- 0
number_Ator_EZ_out_2 <- 0
number_Ator_EZ_out_3 <- 0
number_Ator_EZ_out_missing <- 0

# Bezafibrate in and out for all severities
number_bezafibrat_in_1 <- 0
number_bezafibrat_in_2 <- 0
number_bezafibrat_in_3 <- 0
number_bezafibrat_in_missing <- 0

number_bezafibrat_out_1 <- 0
number_bezafibrat_out_2 <- 0
number_bezafibrat_out_3 <- 0
number_bezafibrat_out_missing <- 0

# Rosuvastatin in and out for all severities
number_rosuvastatin_in_1 <- 0
number_rosuvastatin_in_2 <- 0
number_rosuvastatin_in_3 <- 0
number_rosuvastatin_in_missing <- 0

number_rosuvastatin_out_1 <- 0
number_rosuvastatin_out_2 <- 0
number_rosuvastatin_out_3 <- 0
number_rosuvastatin_out_missing <- 0

# Fenofibrat in and out for all severities
number_fenofibrat_in_1 <- 0
number_fenofibrat_in_2 <- 0
number_fenofibrat_in_3 <- 0
number_fenofibrat_in_missing <- 0

number_fenofibrat_out_1 <- 0
number_fenofibrat_out_2 <- 0
number_fenofibrat_out_3 <- 0
number_fenofibrat_out_missing <- 0

# Fluvastatin in and out for all severities
number_fluvastatin_in_1 <- 0
number_fluvastatin_in_2 <- 0
number_fluvastatin_in_3 <- 0
number_fluvastatin_in_missing <- 0

number_fluvastatin_out_1 <- 0
number_fluvastatin_out_2 <- 0
number_fluvastatin_out_3 <- 0
number_fluvastatin_out_missing <- 0

# Gemfibrozil in and out for all severities
number_gemfibrozil_in_1 <- 0
number_gemfibrozil_in_2 <- 0
number_gemfibrozil_in_3 <- 0
number_gemfibrozil_in_missing <- 0

number_gemfibrozil_out_1 <- 0
number_gemfibrozil_out_2 <- 0
number_gemfibrozil_out_3 <- 0
number_gemfibrozil_out_missing <- 0

# Sim_EZ in and out for all severities
number_Sim_EZ_in_1 <- 0
number_Sim_EZ_in_2 <- 0
number_Sim_EZ_in_3 <- 0
number_Sim_EZ_in_missing <- 0

number_Sim_EZ_out_1 <- 0
number_Sim_EZ_out_2 <- 0
number_Sim_EZ_out_3 <- 0
number_Sim_EZ_out_missing <- 0

# Heparin in and out for all severities
number_heparin_in_1 <- 0
number_heparin_in_2 <- 0
number_heparin_in_3 <- 0
number_heparin_in_missing <- 0

number_heparin_out_1 <- 0
number_heparin_out_2 <- 0
number_heparin_out_3 <- 0
number_heparin_out_missing <- 0

# Pitavastatin in and out for all severities
number_pitavastatin_in_1 <- 0
number_pitavastatin_in_2 <- 0
number_pitavastatin_in_3 <- 0
number_pitavastatin_in_missing <- 0

number_pitavastatin_out_1 <- 0
number_pitavastatin_out_2 <- 0
number_pitavastatin_out_3 <- 0
number_pitavastatin_out_missing <- 0

# Pravastatin in and out for all severities
number_pravastatin_in_1 <- 0
number_pravastatin_in_2 <- 0
number_pravastatin_in_3 <- 0
number_pravastatin_in_missing <- 0

number_pravastatin_out_1 <- 0
number_pravastatin_out_2 <- 0
number_pravastatin_out_3 <- 0
number_pravastatin_out_missing <- 0

# Alirocumab in and out for all severities
number_alirocumab_in_1 <- 0
number_alirocumab_in_2 <- 0
number_alirocumab_in_3 <- 0
number_alirocumab_in_missing <- 0

number_alirocumab_out_1 <- 0
number_alirocumab_out_2 <- 0
number_alirocumab_out_3 <- 0
number_alirocumab_out_missing <- 0

# Simvastatin in and out for all severities
number_simvastatin_in_1 <- 0
number_simvastatin_in_2 <- 0
number_simvastatin_in_3 <- 0
number_simvastatin_in_missing <- 0

number_simvastatin_out_1 <- 0
number_simvastatin_out_2 <- 0
number_simvastatin_out_3 <- 0
number_simvastatin_out_missing <- 0

# Ezetimib in and out for all severities
number_ezetimib_in_1 <- 0
number_ezetimib_in_2 <- 0
number_ezetimib_in_3 <- 0
number_ezetimib_in_missing <- 0

number_ezetimib_out_1 <- 0
number_ezetimib_out_2 <- 0
number_ezetimib_out_3 <- 0
number_ezetimib_out_missing <- 0


for (i in 1:nrow(Table_Patients)) {
  if (is.na(Table_Patients$Atorvastatin_in[i])) {
    Table_Patients$Atorvastatin_in[i] <- 0
  }
  if (is.na(Table_Patients$Atorvastatin_out[i])) {
    Table_Patients$Atorvastatin_out[i] <- 0
  }
  if (is.na(Table_Patients$Ator_EZ_in[i])) {
    Table_Patients$Ator_EZ_in[i] <- 0
  }
  if (is.na(Table_Patients$Ator_EZ_out[i])) {
    Table_Patients$Ator_EZ_out[i] <- 0
  }
  if (is.na(Table_Patients$Bezafibrat_in[i])) {
    Table_Patients$Bezafibrat_in[i] <- 0
  }
  if (is.na(Table_Patients$Bezafibrat_out[i])) {
    Table_Patients$Bezafibrat_out[i] <- 0
  }
  if (is.na(Table_Patients$Rosuvastatin_in[i])) {
    Table_Patients$Rosuvastatin_in[i] <- 0
  }
  if (is.na(Table_Patients$Rosuvastatin_out[i])) {
    Table_Patients$Rosuvastatin_out[i] <- 0
  }
  if (is.na(Table_Patients$Fenofibrat_in[i])) {
    Table_Patients$Fenofibrat_in[i] <- 0
  }
  if (is.na(Table_Patients$Fenofibrat_out[i])) {
    Table_Patients$Fenofibrat_out[i] <- 0
  }
  if (is.na(Table_Patients$Fluvastatin_in[i])) {
    Table_Patients$Fluvastatin_in[i] <- 0
  }
  if (is.na(Table_Patients$Fluvastatin_out[i])) {
    Table_Patients$Fluvastatin_out[i] <- 0
  }
  if (is.na(Table_Patients$Gemfibrozil_in[i])) {
    Table_Patients$Gemfibrozil_in[i] <- 0
  }
  if (is.na(Table_Patients$Gemfibrozil_out[i])) {
    Table_Patients$Gemfibrozil_out[i] <- 0
  }
  if (is.na(Table_Patients$Sim_EZ_in[i])) {
    Table_Patients$Sim_EZ_in[i] <- 0
  }
  if (is.na(Table_Patients$Sim_EZ_out[i])) {
    Table_Patients$Sim_EZ_out[i] <- 0
  }
  if (is.na(Table_Patients$Heparin_in[i])) {
    Table_Patients$Heparin_in[i] <- 0
  }
  if (is.na(Table_Patients$Heparin_out[i])) {
    Table_Patients$Heparin_out[i] <- 0
  }
  if (is.na(Table_Patients$Pitavastatin_in[i])) {
    Table_Patients$Pitavastatin_in[i] <- 0
  }
  if (is.na(Table_Patients$Pitavastatin_out[i])) {
    Table_Patients$Pitavastatin_out[i] <- 0
  }
  if (is.na(Table_Patients$Pravastatin_in[i])) {
    Table_Patients$Pravastatin_in[i] <- 0
  }
  if (is.na(Table_Patients$Pravastatin_out[i])) {
    Table_Patients$Pravastatin_out[i] <- 0
  }
  if (is.na(Table_Patients$Alirocumab_in[i])) {
    Table_Patients$Alirocumab_in[i] <- 0
  }
  if (is.na(Table_Patients$Alirocumab_out[i])) {
    Table_Patients$Alirocumab_out[i] <- 0
  }
  if (is.na(Table_Patients$Simvastatin_in[i])) {
    Table_Patients$Simvastatin_in[i] <- 0
  }
  if (is.na(Table_Patients$Simvastatin_out[i])) {
    Table_Patients$Simvastatin_out[i] <- 0
  }
  if (is.na(Table_Patients$Ezetimib_in[i])) {
    Table_Patients$Ezetimib_in[i] <- 0
  }
  if (is.na(Table_Patients$Ezetimib_out[i])) {
    Table_Patients$Ezetimib_out[i] <- 0
  }
}



for(i in 1:nrow(Table_Patients)){
  # Atorvastatin
  if (Table_Patients$Atorvastatin_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_atorvastatin_in_1 <- number_atorvastatin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_atorvastatin_in_2 <- number_atorvastatin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_atorvastatin_in_3 <- number_atorvastatin_in_3 + 1
    } else {
      number_atorvastatin_in_missing <- number_atorvastatin_in_missing + 1
    } 
  }
  if (Table_Patients$Atorvastatin_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_atorvastatin_out_1 <- number_atorvastatin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_atorvastatin_out_2 <- number_atorvastatin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_atorvastatin_out_3 <- number_atorvastatin_out_3 + 1
    } else {
      number_atorvastatin_out_missing <- number_atorvastatin_out_missing + 1
    } 
  } 

  # Ator_EZ
  if (Table_Patients$Ator_EZ_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_Ator_EZ_in_1 <- number_Ator_EZ_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_Ator_EZ_in_2 <- number_Ator_EZ_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_Ator_EZ_in_3 <- number_Ator_EZ_in_3 + 1
    } else {
      number_Ator_EZ_in_missing <- number_Ator_EZ_in_missing + 1
    } 
  }
  if (Table_Patients$Ator_EZ_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_Ator_EZ_out_1 <- number_Ator_EZ_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_Ator_EZ_out_2 <- number_Ator_EZ_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_Ator_EZ_out_3 <- number_Ator_EZ_out_3 + 1
    } else {
      number_Ator_EZ_out_missing <- number_Ator_EZ_out_missing + 1
    } 
  } 
  
  # Bezafibrat
  if (Table_Patients$Bezafibrat_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_bezafibrat_in_1 <- number_bezafibrat_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_bezafibrat_in_2 <- number_bezafibrat_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_bezafibrat_in_3 <- number_bezafibrat_in_3 + 1
    } else {
      number_bezafibrat_in_missing <- number_bezafibrat_in_missing + 1
    } 
  }
  if (Table_Patients$Bezafibrat_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_bezafibrat_out_1 <- number_bezafibrat_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_bezafibrat_out_2 <- number_bezafibrat_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_bezafibrat_out_3 <- number_bezafibrat_out_3 + 1
    } else {
      number_bezafibrat_out_missing <- number_bezafibrat_out_missing + 1
    } 
  }
  
  # Rosuvastatin
  if (Table_Patients$Rosuvastatin_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_rosuvastatin_in_1 <- number_rosuvastatin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_rosuvastatin_in_2 <- number_rosuvastatin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_rosuvastatin_in_3 <- number_rosuvastatin_in_3 + 1
    } else {
      number_rosuvastatin_in_missing <- number_rosuvastatin_in_missing + 1
    } 
  }
  if (Table_Patients$Rosuvastatin_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_rosuvastatin_out_1 <- number_rosuvastatin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_rosuvastatin_out_2 <- number_rosuvastatin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_rosuvastatin_out_3 <- number_rosuvastatin_out_3 + 1
    } else {
      number_rosuvastatin_out_missing <- number_rosuvastatin_out_missing + 1
    } 
  } 
  
  # Fenofibrat
  if (Table_Patients$Fenofibrat_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_fenofibrat_in_1 <- number_fenofibrat_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_fenofibrat_in_2 <- number_fenofibrat_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_fenofibrat_in_3 <- number_fenofibrat_in_3 + 1
    } else {
      number_fenofibrat_in_missing <- number_fenofibrat_in_missing + 1
    } 
  }
  if (Table_Patients$Fenofibrat_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_fenofibrat_out_1 <- number_fenofibrat_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_fenofibrat_out_2 <- number_fenofibrat_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_fenofibrat_out_3 <- number_fenofibrat_out_3 + 1
    } else {
      number_fenofibrat_out_missing <- number_fenofibrat_out_missing + 1
    } 
  } 
  
  # Fluvastatin
  if (Table_Patients$Fluvastatin_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_fluvastatin_in_1 <- number_fluvastatin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_fluvastatin_in_2 <- number_fluvastatin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_fluvastatin_in_3 <- number_fluvastatin_in_3 + 1
    } else {
      number_fluvastatin_in_missing <- number_fluvastatin_in_missing + 1
    } 
  }
  if (Table_Patients$Fluvastatin_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_fluvastatin_out_1 <- number_fluvastatin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_fluvastatin_out_2 <- number_fluvastatin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_fluvastatin_out_3 <- number_fluvastatin_out_3 + 1
    } else {
      number_fluvastatin_out_missing <- number_fluvastatin_out_missing + 1
    } 
  } 
  
  # Sim_EZ
  if (Table_Patients$Sim_EZ_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_Sim_EZ_in_1 <- number_Sim_EZ_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_Sim_EZ_in_2 <- number_Sim_EZ_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_Sim_EZ_in_3 <- number_Sim_EZ_in_3 + 1
    } else {
      number_Sim_EZ_in_missing <- number_Sim_EZ_in_missing + 1
    } 
  }
  if (Table_Patients$Sim_EZ_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_Sim_EZ_out_1 <- number_Sim_EZ_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_Sim_EZ_out_2 <- number_Sim_EZ_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_Sim_EZ_out_3 <- number_Sim_EZ_out_3 + 1
    } else {
      number_Sim_EZ_out_missing <- number_Sim_EZ_out_missing + 1
    } 
  } 
  
  # Heparin
  if (Table_Patients$Heparin_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_heparin_in_1 <- number_heparin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_heparin_in_2 <- number_heparin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_heparin_in_3 <- number_heparin_in_3 + 1
    } else {
      number_heparin_in_missing <- number_heparin_in_missing + 1
    } 
  }
  if (Table_Patients$Heparin_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_heparin_out_1 <- number_heparin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_heparin_out_2 <- number_heparin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_heparin_out_3 <- number_heparin_out_3 + 1
    } else {
      number_heparin_out_missing <- number_heparin_out_missing + 1
    } 
  } 
  
  # Pitavastatin
  if (Table_Patients$Pitavastatin_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_pitavastatin_in_1 <- number_pitavastatin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_pitavastatin_in_2 <- number_pitavastatin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_pitavastatin_in_3 <- number_pitavastatin_in_3 + 1
    } else {
      number_pitavastatin_in_missing <- number_pitavastatin_in_missing + 1
    } 
  }
  if (Table_Patients$Pitavastatin_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_pitavastatin_out_1 <- number_pitavastatin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_pitavastatin_out_2 <- number_pitavastatin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_pitavastatin_out_3 <- number_pitavastatin_out_3 + 1
    } else {
      number_pitavastatin_out_missing <- number_pitavastatin_out_missing + 1
    } 
  } 
  
  # Pravastatin
  if (Table_Patients$Pravastatin_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_pravastatin_in_1 <- number_pravastatin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_pravastatin_in_2 <- number_pravastatin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_pravastatin_in_3 <- number_pravastatin_in_3 + 1
    } else {
      number_pravastatin_in_missing <- number_pravastatin_in_missing + 1
    } 
  }
  if (Table_Patients$Pravastatin_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_pravastatin_out_1 <- number_pravastatin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_pravastatin_out_2 <- number_pravastatin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_pravastatin_out_3 <- number_pravastatin_out_3 + 1
    } else {
      number_pravastatin_out_missing <- number_pravastatin_out_missing + 1
    } 
  } 
  
  # Alirocumab
  if (Table_Patients$Alirocumab_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_alirocumab_in_1 <- number_alirocumab_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_alirocumab_in_2 <- number_alirocumab_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_alirocumab_in_3 <- number_alirocumab_in_3 + 1
    } else {
      number_alirocumab_in_missing <- number_alirocumab_in_missing + 1
    } 
  }
  if (Table_Patients$Alirocumab_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_alirocumab_out_1 <- number_alirocumab_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_alirocumab_out_2 <- number_alirocumab_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_alirocumab_out_3 <- number_alirocumab_out_3 + 1
    } else {
      number_alirocumab_out_missing <- number_alirocumab_out_missing + 1
    } 
  } 
  
  # Simvastatin
  if (Table_Patients$Simvastatin_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_simvastatin_in_1 <- number_simvastatin_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_simvastatin_in_2 <- number_simvastatin_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_simvastatin_in_3 <- number_simvastatin_in_3 + 1
    } else {
      number_simvastatin_in_missing <- number_simvastatin_in_missing + 1
    } 
  }
  if (Table_Patients$Simvastatin_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_simvastatin_out_1 <- number_simvastatin_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_simvastatin_out_2 <- number_simvastatin_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_simvastatin_out_3 <- number_simvastatin_out_3 + 1
    } else {
      number_simvastatin_out_missing <- number_simvastatin_out_missing + 1
    } 
  } 
  
  # Ezetimib
  if (Table_Patients$Ezetimib_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_ezetimib_in_1 <- number_ezetimib_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_ezetimib_in_2 <- number_ezetimib_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_ezetimib_in_3 <- number_ezetimib_in_3 + 1
    } else {
      number_ezetimib_in_missing <- number_ezetimib_in_missing + 1
    } 
  }
  if (Table_Patients$Ezetimib_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_ezetimib_out_1 <- number_ezetimib_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_ezetimib_out_2 <- number_ezetimib_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_ezetimib_out_3 <- number_ezetimib_out_3 + 1
    } else {
      number_ezetimib_out_missing <- number_ezetimib_out_missing + 1
    } 
  } 
  
  # Gemfibrozil
  if (Table_Patients$Gemfibrozil_in[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_gemfibrozil_in_1 <- number_gemfibrozil_in_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_gemfibrozil_in_2 <- number_gemfibrozil_in_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_gemfibrozil_in_3 <- number_gemfibrozil_in_3 + 1
    } else {
      number_gemfibrozil_in_missing <- number_gemfibrozil_in_missing + 1
    } 
  }
  if (Table_Patients$Gemfibrozil_out[i] > 0) {
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      number_gemfibrozil_out_1 <- number_gemfibrozil_out_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      number_gemfibrozil_out_2 <- number_gemfibrozil_out_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      number_gemfibrozil_out_3 <- number_gemfibrozil_out_3 + 1
    } else {
      number_gemfibrozil_out_missing <- number_gemfibrozil_out_missing + 1
    } 
  } 
}



# percentages for all of these

# atorvastatin in and out for all severities
number_atorvastatin_in_1_percentage <- round(number_atorvastatin_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_atorvastatin_in_2_percentage <- round(number_atorvastatin_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_atorvastatin_in_3_percentage <- round(number_atorvastatin_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_atorvastatin_in_missing_percentage <- round(number_atorvastatin_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_atorvastatin_out_1_percentage <- round(number_atorvastatin_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_atorvastatin_out_2_percentage <- round(number_atorvastatin_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_atorvastatin_out_3_percentage <- round(number_atorvastatin_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_atorvastatin_out_missing_percentage <- round(number_atorvastatin_out_1 / nrow(Table_Patients) * 100, digits = 2)

# Ator_EZ in and out for all severities
number_Ator_EZ_in_1_percentage <- round(number_Ator_EZ_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_Ator_EZ_in_2_percentage <- round(number_Ator_EZ_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_Ator_EZ_in_3_percentage <- round(number_Ator_EZ_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_Ator_EZ_in_missing_percentage <- round(number_Ator_EZ_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_Ator_EZ_out_1_percentage <- round(number_Ator_EZ_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_Ator_EZ_out_2_percentage <- round(number_Ator_EZ_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_Ator_EZ_out_3_percentage <- round(number_Ator_EZ_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_Ator_EZ_out_missing_percentage <- round(number_Ator_EZ_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Bezafibrate in and out for all severities
number_bezafibrat_in_1_percentage <- round(number_bezafibrat_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_bezafibrat_in_2_percentage <- round(number_bezafibrat_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_bezafibrat_in_3_percentage <- round(number_bezafibrat_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_bezafibrat_in_missing_percentage <- round(number_bezafibrat_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_bezafibrat_out_1_percentage <- round(number_bezafibrat_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_bezafibrat_out_2_percentage <- round(number_bezafibrat_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_bezafibrat_out_3_percentage <- round(number_bezafibrat_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_bezafibrat_out_missing_percentage <- round(number_bezafibrat_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Rosuvastatin in and out for all severities
number_rosuvastatin_in_1_percentage <- round(number_rosuvastatin_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_rosuvastatin_in_2_percentage <- round(number_rosuvastatin_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_rosuvastatin_in_3_percentage <- round(number_rosuvastatin_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_rosuvastatin_in_missing_percentage <- round(number_rosuvastatin_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_rosuvastatin_out_1_percentage <- round(number_rosuvastatin_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_rosuvastatin_out_2_percentage <- round(number_rosuvastatin_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_rosuvastatin_out_3_percentage <- round(number_rosuvastatin_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_rosuvastatin_out_missing_percentage <- round(number_rosuvastatin_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Fenofibrat in and out for all severities
number_fenofibrat_in_1_percentage <- round(number_fenofibrat_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_fenofibrat_in_2_percentage <- round(number_fenofibrat_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_fenofibrat_in_3_percentage <- round(number_fenofibrat_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_fenofibrat_in_missing_percentage <- round(number_fenofibrat_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_fenofibrat_out_1_percentage <- round(number_fenofibrat_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_fenofibrat_out_2_percentage <- round(number_fenofibrat_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_fenofibrat_out_3_percentage <- round(number_fenofibrat_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_fenofibrat_out_missing_percentage <- round(number_fenofibrat_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Fluvastatin in and out for all severities
number_fluvastatin_in_1_percentage <- round(number_fluvastatin_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_fluvastatin_in_2_percentage <- round(number_fluvastatin_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_fluvastatin_in_3_percentage <- round(number_fluvastatin_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_fluvastatin_in_missing_percentage <- round(number_fluvastatin_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_fluvastatin_out_1_percentage <- round(number_fluvastatin_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_fluvastatin_out_2_percentage <- round(number_fluvastatin_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_fluvastatin_out_3_percentage <- round(number_fluvastatin_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_fluvastatin_out_missing_percentage <- round(number_fluvastatin_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Gemfibrozil in and out for all severities
number_gemfibrozil_in_1_percentage <- round(number_gemfibrozil_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_gemfibrozil_in_2_percentage <- round(number_gemfibrozil_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_gemfibrozil_in_3_percentage <- round(number_gemfibrozil_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_gemfibrozil_in_missing_percentage <- round(number_gemfibrozil_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_gemfibrozil_out_1_percentage <- round(number_gemfibrozil_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_gemfibrozil_out_2_percentage <- round(number_gemfibrozil_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_gemfibrozil_out_3_percentage <- round(number_gemfibrozil_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_gemfibrozil_out_missing_percentage <- round(number_gemfibrozil_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Sim_EZ in and out for all severities
number_Sim_EZ_in_1_percentage <- round(number_Sim_EZ_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_Sim_EZ_in_2_percentage <- round(number_Sim_EZ_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_Sim_EZ_in_3_percentage <- round(number_Sim_EZ_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_Sim_EZ_in_missing_percentage <- round(number_Sim_EZ_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_Sim_EZ_out_1_percentage <- round(number_Sim_EZ_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_Sim_EZ_out_2_percentage <- round(number_Sim_EZ_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_Sim_EZ_out_3_percentage <- round(number_Sim_EZ_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_Sim_EZ_out_missing_percentage <- round(number_Sim_EZ_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Heparin in and out for all severities
number_heparin_in_1_percentage <- round(number_heparin_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_heparin_in_2_percentage <- round(number_heparin_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_heparin_in_3_percentage <- round(number_heparin_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_heparin_in_missing_percentage <- round(number_heparin_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_heparin_out_1_percentage <- round(number_heparin_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_heparin_out_2_percentage <- round(number_heparin_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_heparin_out_3_percentage <- round(number_heparin_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_heparin_out_missing_percentage <- round(number_heparin_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Pitavastatin in and out for all severities
number_pitavastatin_in_1_percentage <- round(number_pitavastatin_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_pitavastatin_in_2_percentage <- round(number_pitavastatin_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_pitavastatin_in_3_percentage <- round(number_pitavastatin_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_pitavastatin_in_missing_percentage <- round(number_pitavastatin_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_pitavastatin_out_1_percentage <- round(number_pitavastatin_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_pitavastatin_out_2_percentage <- round(number_pitavastatin_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_pitavastatin_out_3_percentage <- round(number_pitavastatin_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_pitavastatin_out_missing_percentage <- round(number_pitavastatin_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Pravastatin in and out for all severities
number_pravastatin_in_1_percentage <- round(number_pravastatin_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_pravastatin_in_2_percentage <- round(number_pravastatin_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_pravastatin_in_3_percentage <- round(number_pravastatin_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_pravastatin_in_missing_percentage <- round(number_pravastatin_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_pravastatin_out_1_percentage <- round(number_pravastatin_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_pravastatin_out_2_percentage <- round(number_pravastatin_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_pravastatin_out_3_percentage <- round(number_pravastatin_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_pravastatin_out_missing_percentage <- round(number_pravastatin_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Alirocumab in and out for all severities
number_alirocumab_in_1_percentage <- round(number_alirocumab_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_alirocumab_in_2_percentage <- round(number_alirocumab_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_alirocumab_in_3_percentage <- round(number_alirocumab_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_alirocumab_in_missing_percentage <- round(number_alirocumab_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_alirocumab_out_1_percentage <- round(number_alirocumab_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_alirocumab_out_2_percentage <- round(number_alirocumab_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_alirocumab_out_3_percentage <- round(number_alirocumab_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_alirocumab_out_missing_percentage <- round(number_alirocumab_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Simvastatin in and out for all severities
number_simvastatin_in_1_percentage <- round(number_simvastatin_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_simvastatin_in_2_percentage <- round(number_simvastatin_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_simvastatin_in_3_percentage <- round(number_simvastatin_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_simvastatin_in_missing_percentage <- round(number_simvastatin_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_simvastatin_out_1_percentage <- round(number_simvastatin_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_simvastatin_out_2_percentage <- round(number_simvastatin_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_simvastatin_out_3_percentage <- round(number_simvastatin_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_simvastatin_out_missing_percentage <- round(number_simvastatin_out_missing / nrow(Table_Patients) * 100, digits = 2)

# Ezetimib in and out for all severities
number_ezetimib_in_1_percentage <- round(number_ezetimib_in_1 / nrow(Table_Patients) * 100, digits = 2)
number_ezetimib_in_2_percentage <- round(number_ezetimib_in_2 / nrow(Table_Patients) * 100, digits = 2)
number_ezetimib_in_3_percentage <- round(number_ezetimib_in_3 / nrow(Table_Patients) * 100, digits = 2)
number_ezetimib_in_missing_percentage <- round(number_ezetimib_in_missing / nrow(Table_Patients) * 100, digits = 2)

number_ezetimib_out_1_percentage <- round(number_ezetimib_out_1 / nrow(Table_Patients) * 100, digits = 2)
number_ezetimib_out_2_percentage <- round(number_ezetimib_out_2 / nrow(Table_Patients) * 100, digits = 2)
number_ezetimib_out_3_percentage <- round(number_ezetimib_out_3 / nrow(Table_Patients) * 100, digits = 2)
number_ezetimib_out_missing_percentage <- round(number_ezetimib_out_missing / nrow(Table_Patients) * 100, digits = 2)

