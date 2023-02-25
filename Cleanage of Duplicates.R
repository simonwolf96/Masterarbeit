library(dplyr)
library(tidyverse)
library(readr)


# look through Table_Full and delete any double rows

Table_Full_without <- unique(Table_Full)


# get rid of Nierenarterie, Carotiden and Subclavia

for (i in 1:nrow(Table_Full_without)) {
  if (grepl("Nieren", Table_Full_without$LOKALISATION[i]) || grepl("carotis", Table_Full_without$LOKALISATION[i]) || grepl("subclavia", Table_Full_without$LOKALISATION[i]) || grepl("axillaris", Table_Full_without$LOKALISATION[i]) || grepl("brachiocepha", Table_Full_without$LOKALISATION[i]) || grepl("Tx-N.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without <- Table_Full_without[-i,, drop=F]
  } else {next}
}



target <- which(names(Table_Full_without) == 'ï..PATNR')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Severity = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$HIGHEST_GROUP[i] == 1) {
    Table_Full_without$Severity[i] <- "Severity 1"
  } else if (Table_Full_without$HIGHEST_GROUP[i] == 2) {
    Table_Full_without$Severity[i] <- "Severity 2"
  #} else if (Table_Full_without$HIGHEST_GROUP[i] == 3) {
  #  Table_Full_without$Severity[i] <- "Severity 3"
  } else {
    Table_Full_without$Severity[i] <- "Severity Missing"
  }
}



# delete all patients with age < 18 (inclusion criteria)

for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$ALTER_INTERVENTION[i] <= 17) {
    Table_Full_without <- Table_Full_without[-i,, drop=F]
  } else {next}
}


# delete all Patients with missing severity

for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$Severity[i] == "Severity Missing") {
    Table_Full_without <- Table_Full_without[-i,, drop=F]
  }
}


# clean LDL-C and get rid of NA
Table_Full_without$LDL_MAX_numeric <- parse_number(Table_Full_without$LDL_MAX_numeric)

for (i in 1:nrow(Table_Full_without)) {
  if (is.na(Table_Full_without$LDL_MAX_numeric[i]) == TRUE) {
    Table_Full_without <- Table_Full_without[-i,, drop=F]
  }
}



# get rid of lines without medication

for (i in 1:nrow(Table_Full_without)) {
  if ((is.na(Table_Full_without$Atorvastatin_in[i]) == FALSE || 
      is.na(Table_Full_without$Atorvastatin_out[i]) == FALSE || 
      is.na(Table_Full_without$Ator_EZ_in[i]) == FALSE || 
      is.na(Table_Full_without$Ator_EZ_out[i]) == FALSE || 
      is.na(Table_Full_without$Bezafibrat_in[i]) == FALSE || 
      is.na(Table_Full_without$Bezafibrat_out[i]) == FALSE || 
      is.na(Table_Full_without$Rosuvastatin_in[i]) == FALSE || 
      is.na(Table_Full_without$Rosuvastatin_out[i]) == FALSE || 
      is.na(Table_Full_without$Fenofibrat_in[i]) == FALSE || 
      is.na(Table_Full_without$Fenofibrat_out[i]) == FALSE || 
      is.na(Table_Full_without$Fluvastatin_in[i]) == FALSE || 
      is.na(Table_Full_without$Fluvastatin_out[i]) == FALSE || 
      is.na(Table_Full_without$Gemfibrozil_in[i]) == FALSE || 
      is.na(Table_Full_without$Gemfibrozil_out[i]) == FALSE || 
      is.na(Table_Full_without$Sim_EZ_in[i]) == FALSE || 
      is.na(Table_Full_without$Sim_EZ_out[i]) == FALSE || 
      is.na(Table_Full_without$Heparin_in[i]) == FALSE || 
      is.na(Table_Full_without$Heparin_out[i]) == FALSE || 
      is.na(Table_Full_without$Pitavastatin_in[i]) == FALSE || 
      is.na(Table_Full_without$Pitavastatin_out[i]) == FALSE ||
      is.na(Table_Full_without$Pravastatin_in[i]) == FALSE || 
      is.na(Table_Full_without$Pravastatin_out[i]) == FALSE || 
      is.na(Table_Full_without$Alirocumab_in[i]) == FALSE || 
      is.na(Table_Full_without$Alirocumab_out[i]) == FALSE || 
      is.na(Table_Full_without$Simvastatin_in[i]) == FALSE || 
      is.na(Table_Full_without$Simvastatin_out[i]) == FALSE || 
      is.na(Table_Full_without$Ezetimib_in[i]) == FALSE ||
      is.na(Table_Full_without$Ezetimib_out[i]) == FALSE) == FALSE) {
    Table_Full_without <- Table_Full_without[-i,, drop=F]
  }
} 





