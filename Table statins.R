# build new table
library(gtsummary)
library(tidyverse)


Table_Patients[is.na(Table_Patients$Atorvastatin_in),]$Atorvastatin_in <- 0
Table_Patients[Table_Patients$Atorvastatin_in == 99,]$Atorvastatin_in <- 'unknown'
Table_Patients[Table_Patients$Atorvastatin_in == 0,]$Atorvastatin_in <- NA

Table_Patients[is.na(Table_Patients$Rosuvastatin_in),]$Rosuvastatin_in <- 0
Table_Patients[Table_Patients$Rosuvastatin_in == 99,]$Rosuvastatin_in <- 'unknown'
Table_Patients[Table_Patients$Rosuvastatin_in == 0,]$Rosuvastatin_in <- NA


Table_Patients[is.na(Table_Patients$Fluvastatin_in),]$Fluvastatin_in <- 0
Table_Patients[Table_Patients$Fluvastatin_in == 99,]$Fluvastatin_in <- 'unknown'
Table_Patients[Table_Patients$Fluvastatin_in == 0,]$Fluvastatin_in <- NA


Table_Patients[is.na(Table_Patients$Pitavastatin_in),]$Pitavastatin_in <- 0
Table_Patients[Table_Patients$Pitavastatin_in == 99,]$Pitavastatin_in <- 'unknown'
Table_Patients[Table_Patients$Pitavastatin_in == 0,]$Pitavastatin_in <- NA

Table_Patients[is.na(Table_Patients$Pravastatin_in),]$Pravastatin_in <- 0
Table_Patients[Table_Patients$Pravastatin_in == 99,]$Pravastatin_in <- 'unknown'
Table_Patients[Table_Patients$Pravastatin_in == 0,]$Pravastatin_in <- NA

Table_Patients[is.na(Table_Patients$Simvastatin_in),]$Simvastatin_in <- 0
Table_Patients[Table_Patients$Simvastatin_in == 99,]$Simvastatin_in <- 'unknown'
Table_Patients[Table_Patients$Simvastatin_in == 0,]$Simvastatin_in <- NA


table_statins <- select(Table_Patients, Severity, Atorvastatin_in, Rosuvastatin_in, Fluvastatin_in, Pitavastatin_in, Pravastatin_in, Simvastatin_in)
tbl_summary(table_statins, by = Severity, missing = "no",
              label = list(
                Atorvastatin_in ~ 'Atorvastatin [mg]',
                Rosuvastatin_in ~ 'Rosuvastatin [mg]',
                Fluvastatin_in ~ 'Fluvastatin [mg]',
                Pitavastatin_in ~ 'Pitavastatin [mg]',
                Pravastatin_in ~ 'Pravastatin [mg]',
                Simvastatin_in ~ 'Simvastatin [mg]'
              ),
              sort = Rosuvastatin_in ~ 'alphanumeric') %>% add_overall()  %>% add_p() %>%
  as_gt(include = -cols_align) %>% gt::tab_source_note(c(gt::md("PAD-Group 1: PAD grade IIa and IIb"), gt::md("PAD-Group 2: III, IV, and diabetic foot syndrom")))





for (i in 1:nrow(Table_Patients)) {
  if (is.na(Table_Patients$Atorvastatin_in[i]) == FALSE && Table_Patients$Atorvastatin_in[i] == 'unknown') {
    Table_Patients$Atorvastatin_in[i] <- NA
  }
  if (is.na(Table_Patients$Rosuvastatin_in[i]) == FALSE && Table_Patients$Rosuvastatin_in[i] == 'unknown') {
    Table_Patients$Rosuvastatin_in[i] <- NA
  }
  if (is.na(Table_Patients$Fluvastatin_in[i]) == FALSE && Table_Patients$Fluvastatin_in[i] == 'unknown') {
    Table_Patients$Fluvastatin_in[i] <- NA
  }
  if (is.na(Table_Patients$Pitavastatin_in[i]) == FALSE && Table_Patients$Pitavastatin_in[i] == 'unknown') {
    Table_Patients$Pitavastatin_in[i] <- NA
  }
  if (is.na(Table_Patients$Pravastatin_in[i]) == FALSE && Table_Patients$Pravastatin_in[i] == 'unknown') {
    Table_Patients$Pravastatin_in[i] <- NA
  }
  if (is.na(Table_Patients$Simvastatin_in[i]) == FALSE && Table_Patients$Simvastatin_in[i] == 'unknown') {
    Table_Patients$Simvastatin_in[i] <- NA
  }
}

