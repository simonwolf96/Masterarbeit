

# number of LTL by severity

number_of_LTL_1 <- 0
number_of_LTL_2 <- 0
number_of_LTL_3 <- 0
number_of_LTL_missing <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$LTL[i] == 1){
    if (Table_Full$HIGHEST_GROUP[i] == 1){
      number_of_LTL_1 <- number_of_LTL_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      number_of_LTL_2 <- number_of_LTL_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
        number_of_LTL_3 <- number_of_LTL_3 + 1
    } else (number_of_LTL_missing <- number_of_LTL_missing + 1)
  } else {next}
}


# number of PTEE by severity

number_of_PTEE_1 <- 0
number_of_PTEE_2 <- 0
number_of_PTEE_3 <- 0
number_of_PTEE_missing <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$PTEE[i] == 1){
    if (Table_Full$HIGHEST_GROUP[i] == 1){
      number_of_PTEE_1 <- number_of_PTEE_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      number_of_PTEE_2 <- number_of_PTEE_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      number_of_PTEE_3 <- number_of_PTEE_3 + 1
    } else (number_of_PTEE_missing <- number_of_PTEE_missing + 1)
  } else {next}
}


# number of Stent by severity

number_of_Stent_1 <- 0
number_of_Stent_2 <- 0
number_of_Stent_3 <- 0
number_of_Stent_missing <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$Stent[i] == 1){
    if (Table_Full$HIGHEST_GROUP[i] == 1){
      number_of_Stent_1 <- number_of_Stent_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      number_of_Stent_2 <- number_of_Stent_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      number_of_Stent_3 <- number_of_Stent_3 + 1
    } else (number_of_Stent_missing <- number_of_Stent_missing + 1)
  } else {next}
}


# number of Stentgraf by severity

number_of_Stentgraf_1 <- 0
number_of_Stentgraf_2 <- 0
number_of_Stentgraf_3 <- 0
number_of_Stentgraf_missing <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$Stentgraf[i] == 1){
    if (Table_Full$HIGHEST_GROUP[i] == 1){
      number_of_Stentgraf_1 <- number_of_Stentgraf_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      number_of_Stentgraf_2 <- number_of_Stentgraf_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      number_of_Stentgraf_3 <- number_of_Stentgraf_3 + 1
    } else (number_of_Stentgraf_missing <- number_of_Stentgraf_missing + 1)
  } else {next}
}


# number of Atherektomie by severity

number_of_Atherektomie_1 <- 0
number_of_Atherektomie_2 <- 0
number_of_Atherektomie_3 <- 0
number_of_Atherektomie_missing <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$Atherektomie[i] == 1){
    if (Table_Full$HIGHEST_GROUP[i] == 1){
      number_of_Atherektomie_1 <- number_of_Atherektomie_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      number_of_Atherektomie_2 <- number_of_Atherektomie_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      number_of_Atherektomie_3 <- number_of_Atherektomie_3 + 1
    } else (number_of_Atherektomie_missing <- number_of_Atherektomie_missing + 1)
  } else {next}
}


# number of DrugCoatedPTA by severity

number_of_DrugCoatedPTA_1 <- 0
number_of_DrugCoatedPTA_2 <- 0
number_of_DrugCoatedPTA_3 <- 0
number_of_DrugCoatedPTA_missing <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$DrugCoatedPTA[i] == 1){
    if (Table_Full$HIGHEST_GROUP[i] == 1){
      number_of_DrugCoatedPTA_1 <- number_of_DrugCoatedPTA_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      number_of_DrugCoatedPTA_2 <- number_of_DrugCoatedPTA_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      number_of_DrugCoatedPTA_3 <- number_of_DrugCoatedPTA_3 + 1
    } else (number_of_DrugCoatedPTA_missing <- number_of_DrugCoatedPTA_missing + 1)
  } else {next}
}


# number of DES by severity

number_of_DES_1 <- 0
number_of_DES_2 <- 0
number_of_DES_3 <- 0
number_of_DES_missing <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$DES[i] == 1){
    if (Table_Full$HIGHEST_GROUP[i] == 1){
      number_of_DES_1 <- number_of_DES_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      number_of_DES_2 <- number_of_DES_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      number_of_DES_3 <- number_of_DES_3 + 1
    } else (number_of_DES_missing <- number_of_DES_missing + 1)
  } else {next}
}


# number of Reentrydevice by severity

number_of_Reentrydevice_1 <- 0
number_of_Reentrydevice_2 <- 0
number_of_Reentrydevice_3 <- 0
number_of_Reentrydevice_missing <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$REENTRYDEVICE[i] == 1){
    if (Table_Full$HIGHEST_GROUP[i] == 1){
      number_of_Reentrydevice_1 <- number_of_Reentrydevice_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      number_of_Reentrydevice_2 <- number_of_Reentrydevice_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      number_of_Reentrydevice_3 <- number_of_Reentrydevice_3 + 1
    } else (number_of_Reentrydevice_missing <- number_of_Reentrydevice_missing + 1)
  } else {next}
}


number_of_LTL_1_percentage <- round(number_of_LTL_1 / nrow(Table_Full) * 100, digits = 2)
number_of_LTL_2_percentage <- round(number_of_LTL_2 / nrow(Table_Full) * 100, digits = 2)
number_of_LTL_3_percentage <- round(number_of_LTL_3 / nrow(Table_Full) * 100, digits = 2)
number_of_LTL_missing_percentage <- round(number_of_LTL_missing / nrow(Table_Full) * 100, digits = 2)

number_of_PTEE_1_percentage <- round(number_of_PTEE_1 / nrow(Table_Full) * 100, digits = 2)
number_of_PTEE_2_percentage <- round(number_of_PTEE_2 / nrow(Table_Full) * 100, digits = 2)
number_of_PTEE_3_percentage <- round(number_of_PTEE_3 / nrow(Table_Full) * 100, digits = 2)
number_of_PTEE_missing_percentage <- round(number_of_PTEE_missing / nrow(Table_Full) * 100, digits = 2)

number_of_Stent_1_percentage <- round(number_of_Stent_1 / nrow(Table_Full) * 100, digits = 2)
number_of_Stent_2_percentage <- round(number_of_Stent_2 / nrow(Table_Full) * 100, digits = 2)
number_of_Stent_3_percentage <- round(number_of_Stent_3 / nrow(Table_Full) * 100, digits = 2)
number_of_Stent_missing_percentage <- round(number_of_Stent_missing / nrow(Table_Full) * 100, digits = 2)

number_of_Stentgraf_1_percentage <- round(number_of_Stentgraf_1 / nrow(Table_Full) * 100, digits = 2)
number_of_Stentgraf_2_percentage <- round(number_of_Stentgraf_2 / nrow(Table_Full) * 100, digits = 2)
number_of_Stentgraf_3_percentage <- round(number_of_Stentgraf_3 / nrow(Table_Full) * 100, digits = 2)
number_of_Stentgraf_missing_percentage <- round(number_of_Stentgraf_missing / nrow(Table_Full) * 100, digits = 2)

number_of_Atherektomie_1_percentage <- round(number_of_Atherektomie_1 / nrow(Table_Full) * 100, digits = 2)
number_of_Atherektomie_2_percentage <- round(number_of_Atherektomie_2 / nrow(Table_Full) * 100, digits = 2)
number_of_Atherektomie_3_percentage <- round(number_of_Atherektomie_3 / nrow(Table_Full) * 100, digits = 2)
number_of_Atherektomie_missing_percentage <- round(number_of_Atherektomie_missing / nrow(Table_Full) * 100, digits = 2)

number_of_DrugCoatedPTA_1_percentage <- round(number_of_DrugCoatedPTA_1 / nrow(Table_Full) * 100, digits = 2)
number_of_DrugCoatedPTA_2_percentage <- round(number_of_DrugCoatedPTA_2 / nrow(Table_Full) * 100, digits = 2)
number_of_DrugCoatedPTA_3_percentage <- round(number_of_DrugCoatedPTA_3 / nrow(Table_Full) * 100, digits = 2)
number_of_DrugCoatedPTA_missing_percentage <- round(number_of_DrugCoatedPTA_missing / nrow(Table_Full) * 100, digits = 2)

number_of_DES_1_percentage <- round(number_of_DES_1 / nrow(Table_Full) * 100, digits = 2)
number_of_DES_2_percentage <- round(number_of_DES_2 / nrow(Table_Full) * 100, digits = 2)
number_of_DES_3_percentage <- round(number_of_DES_3 / nrow(Table_Full) * 100, digits = 2)
number_of_DES_missing_percentage <- round(number_of_DES_missing / nrow(Table_Full) * 100, digits = 2)

number_of_Reentrydevice_1_percentage <- round(number_of_Reentrydevice_1 / nrow(Table_Full) * 100, digits = 2)
number_of_Reentrydevice_2_percentage <- round(number_of_Reentrydevice_2 / nrow(Table_Full) * 100, digits = 2)
number_of_Reentrydevice_3_percentage <- round(number_of_Reentrydevice_3 / nrow(Table_Full) * 100, digits = 2)
number_of_Reentrydevice_missing_percentage <- round(number_of_Reentrydevice_missing / nrow(Table_Full) * 100, digits = 2)



