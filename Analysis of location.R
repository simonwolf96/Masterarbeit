# count different localizations

missing_value_1 <- 0
missing_value_2 <- 0
missing_value_3 <- 0
missing_value_unknown <- 0

a.axillaris_1 <- 0
a.axillaris_2 <- 0
a.axillaris_3 <- 0
a.axillaris_unknown <- 0

a.carotis_1 <- 0
a.carotis_2 <- 0
a.carotis_3 <- 0
a.carotis_unknown <- 0

a.femoralis_communis_1 <- 0
a.femoralis_communis_2 <- 0
a.femoralis_communis_3 <- 0
a.femoralis_communis_unknown <- 0

a.femoralis_profundus_1 <- 0
a.femoralis_profundus_2 <- 0
a.femoralis_profundus_3 <- 0
a.femoralis_profundus_unknown <- 0

a.femoralis_superficialis_1 <- 0
a.femoralis_superficialis_2 <- 0
a.femoralis_superficialis_3 <- 0
a.femoralis_superficialis_unknown <- 0

a.fibularis_1 <- 0
a.fibularis_2 <- 0
a.fibularis_3 <- 0
a.fibularis_unknown <- 0

a.iliaca_communis_1 <- 0
a.iliaca_communis_2 <- 0
a.iliaca_communis_3 <- 0
a.iliaca_communis_unknown <- 0

a.iliaca_externa_1 <- 0
a.iliaca_externa_2 <- 0
a.iliaca_externa_3 <- 0
a.iliaca_externa_unknown <- 0

a.iliaca_interna_1 <- 0
a.iliaca_interna_2 <- 0
a.iliaca_interna_3 <- 0
a.iliaca_interna_unknown <- 0

a.poplitea_1 <- 0
a.poplitea_2 <- 0
a.poplitea_3 <- 0
a.poplitea_unknown <- 0

a.subclavia_1 <- 0
a.subclavia_2 <- 0
a.subclavia_3 <- 0
a.subclavia_unknown <- 0

a.tibialis_anterior_1 <- 0
a.tibialis_anterior_2 <- 0
a.tibialis_anterior_3 <- 0
a.tibialis_anterior_unknown <- 0

a.tibialis_posterior_1 <- 0
a.tibialis_posterior_2 <- 0
a.tibialis_posterior_3 <- 0
a.tibialis_posterior_unknown <- 0

a.renalis_1 <- 0
a.renalis_2 <- 0
a.renalis_3 <- 0
a.renalis_unknown <- 0

tr.brachiocephalicus_1 <- 0
tr.brachiocephalicus_2 <- 0
tr.brachiocephalicus_3 <- 0
tr.brachiocephalicus_unknown <- 0

tr.tibiofibularis_1 <- 0
tr.tibiofibularis_2 <- 0
tr.tibiofibularis_3 <- 0
tr.tibiofibularis_unknown <- 0



# sort through Table_Full$Lokalisation for the different names of vessels
# in second step group them to their severity group if 0 stat unknown

for (i in 1:nrow(Table_Full)) {
  
# A. axillaris
  
  if (grepl("axillaris", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.axillaris_1 <- a.axillaris_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.axillaris_2 <- a.axillaris_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.axillaris_3 <- a.axillaris_3 + 1
    } else {a.axillaris_unknown <- a.axillaris_unknown + 1}
    
# A. carotis
    
  } else if (grepl("carotis", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.carotis_1 <- a.carotis_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.carotis_2 <- a.carotis_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.carotis_3 <- a.carotis_3 + 1
    } else {a.carotis_unknown <- a.carotis_unknown + 1}
    
# A. femoralis communis
    
  } else if (grepl("fem. com.", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.femoralis_communis_1 <- a.femoralis_communis_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.femoralis_communis_2 <- a.femoralis_communis_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.femoralis_communis_3 <- a.femoralis_communis_3 + 1
    } else {a.femoralis_communis_unknown <- a.femoralis_communis_unknown + 1}
    
# A. femoralis profundus
    
  } else if (grepl("fem. prof.", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.femoralis_profundus_1 <- a.femoralis_profundus_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.femoralis_profundus_2 <- a.femoralis_profundus_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.femoralis_profundus_3 <- a.femoralis_profundus_3 + 1
    } else {a.femoralis_profundus_unknown <- a.femoralis_profundus_unknown + 1}
    
# A. femoralis superficialis
    
  } else if (grepl("fem. sup.", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.femoralis_superficialis_1 <- a.femoralis_superficialis_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.femoralis_superficialis_2 <- a.femoralis_superficialis_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.femoralis_superficialis_3 <- a.femoralis_superficialis_3 + 1
    } else {a.femoralis_superficialis_unknown <- a.femoralis_superficialis_unknown + 1}
    
# A. fibularis
    
  } else if (grepl("A. fib.", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.fibularis_1 <- a.fibularis_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.fibularis_2 <- a.fibularis_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.fibularis_3 <- a.fibularis_3 + 1
    } else {a.fibularis_unknown <- a.fibularis_unknown + 1}
    
# A. iliaca communis
    
  } else if (grepl("iliaca com.", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.iliaca_communis_1 <- a.iliaca_communis_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.iliaca_communis_2 <- a.iliaca_communis_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.iliaca_communis_3 <- a.iliaca_communis_3 + 1
    } else {a.iliaca_communis_unknown <- a.iliaca_communis_unknown + 1}
    
# A. iliaca externa
    
  } else if (grepl("iliaca ext.", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.iliaca_externa_1 <- a.iliaca_externa_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.iliaca_externa_2 <- a.iliaca_externa_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.iliaca_externa_3 <- a.iliaca_externa_3 + 1
    } else {a.iliaca_externa_unknown <- a.iliaca_externa_unknown + 1}
    
# A. iliaca interna
    
  } else if (grepl("iliaca int.", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.iliaca_interna_1 <- a.iliaca_interna_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.iliaca_interna_2 <- a.iliaca_interna_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.iliaca_interna_3 <- a.iliaca_interna_3 + 1
    } else {a.iliaca_interna_unknown <- a.iliaca_interna_unknown + 1}
    
# A. poplitea
    
  } else if (grepl("poplitea", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.poplitea_1 <- a.poplitea_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.poplitea_2 <- a.poplitea_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.poplitea_3 <- a.poplitea_3 + 1
    } else {a.poplitea_unknown <- a.poplitea_unknown + 1}
    
# A. subclavia
    
  } else if (grepl("subclavia", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.subclavia_1 <- a.subclavia_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.subclavia_2 <- a.subclavia_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.subclavia_3 <- a.subclavia_3 + 1
    } else {a.subclavia_unknown <- a.subclavia_unknown + 1}
    
# A. tibialis anterior
    
  } else if (grepl("tib. ant.", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.tibialis_anterior_1 <- a.tibialis_anterior_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.tibialis_anterior_2 <- a.tibialis_anterior_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.tibialis_anterior_3 <- a.tibialis_anterior_3 + 1
    } else {a.tibialis_anterior_unknown <- a.tibialis_anterior_unknown + 1}
    
# A. tibialis posterior
    
  } else if (grepl("tib. post.", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.tibialis_posterior_1 <- a.tibialis_posterior_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.tibialis_posterior_2 <- a.tibialis_posterior_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.tibialis_posterior_3 <- a.tibialis_posterior_3 + 1
    } else {a.tibialis_posterior_unknown <- a.tibialis_posterior_unknown + 1}
    
# A. renalis
    
  } else if (grepl("Nieren", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      a.renalis_1 <- a.renalis_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      a.renalis_2 <- a.renalis_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      a.renalis_3 <- a.renalis_3 + 1
    } else {a.renalis_unknown <- a.renalis_unknown + 1}
    
# Truncus brachiocephalicus
    
  } else if (grepl("brachiocepha", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      tr.brachiocephalicus_1 <- tr.brachiocephalicus_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      tr.brachiocephalicus_2 <- tr.brachiocephalicus_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      tr.brachiocephalicus_3 <- tr.brachiocephalicus_3 + 1
    } else {tr.brachiocephalicus_unknown <- tr.brachiocephalicus_unknown + 1}
    
# Truncus tibiofibularis
    
  } else if (grepl("Truncus tibiofib", Table_Full$LOKALISATION[i])) {
    if (Table_Full$HIGHEST_GROUP[i] == 1) {
      tr.tibiofibularis_1 <- tr.tibiofibularis_1 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
      tr.tibiofibularis_2 <- tr.tibiofibularis_2 + 1
    } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
      tr.tibiofibularis_3 <- tr.tibiofibularis_3 + 1
    } else {tr.tibiofibularis_unknown <- tr.tibiofibularis_unknown + 1}
  } else if (Table_Full$HIGHEST_GROUP[i] == 1) {
    missing_value_1 <- missing_value_1 + 1
  } else if (Table_Full$HIGHEST_GROUP[i] == 2) {
    missing_value_2 <- missing_value_2 + 1
  } else if (Table_Full$HIGHEST_GROUP[i] == 3) {
    missing_value_3 <- missing_value_3 + 1
  } else {missing_value_unknown <- missing_value_unknown + 1}
}



# Calculate Percentage for all different locations and severity

# A. axillaris

a.axillaris_1_percentage <- round(a.axillaris_1 / nrow(Table_Full)*100, digits = 2)
a.axillaris_2_percentage <- round(a.axillaris_2 / nrow(Table_Full)*100, digits = 2)
a.axillaris_3_percentage <- round(a.axillaris_3 / nrow(Table_Full)*100, digits = 2)
a.axillaris_unknown_percentage <- round(a.axillaris_unknown / nrow(Table_Full)*100, digits = 2)

# A. carotis

a.carotis_1_percentage <- round(a.carotis_1 / nrow(Table_Full)*100, digits = 2)
a.carotis_2_percentage <- round(a.carotis_2 / nrow(Table_Full)*100, digits = 2)
a.carotis_3_percentage <- round(a.carotis_3 / nrow(Table_Full)*100, digits = 2)
a.carotis_unknown_percentage <- round(a.carotis_unknown / nrow(Table_Full)*100, digits = 2)

# A. femoralis communis

a.femoralis_communis_1_percentage <- round(a.femoralis_communis_1 / nrow(Table_Full)*100, digits = 2)
a.femoralis_communis_2_percentage <- round(a.femoralis_communis_2 / nrow(Table_Full)*100, digits = 2)
a.femoralis_communis_3_percentage <- round(a.femoralis_communis_3 / nrow(Table_Full)*100, digits = 2)
a.femoralis_communis_unknown_percentage <- round(a.femoralis_communis_unknown / nrow(Table_Full)*100, digits = 2)

# A. femoralis profundus

a.femoralis_profundus_1_percentage <- round(a.femoralis_profundus_1 / nrow(Table_Full)*100, digits = 2)
a.femoralis_profundus_2_percentage <- round(a.femoralis_profundus_2 / nrow(Table_Full)*100, digits = 2)
a.femoralis_profundus_3_percentage <- round(a.femoralis_profundus_3 / nrow(Table_Full)*100, digits = 2)
a.femoralis_profundus_unknown_percentage <- round(a.femoralis_profundus_unknown / nrow(Table_Full)*100, digits = 2)

# A. femoralis superficialis

a.femoralis_superficialis_1_percentage <- round(a.femoralis_superficialis_1 / nrow(Table_Full)*100, digits = 2)
a.femoralis_superficialis_2_percentage <- round(a.femoralis_superficialis_2 / nrow(Table_Full)*100, digits = 2)
a.femoralis_superficialis_3_percentage <- round(a.femoralis_superficialis_3 / nrow(Table_Full)*100, digits = 2)
a.femoralis_superficialis_unknown_percentage <- round(a.femoralis_superficialis_unknown / nrow(Table_Full)*100, digits = 2)

# A. fibularis

a.fibularis_1_percentage <- round(a.fibularis_1 / nrow(Table_Full)*100, digits = 2)
a.fibularis_2_percentage <- round(a.fibularis_2 / nrow(Table_Full)*100, digits = 2)
a.fibularis_3_percentage <- round(a.fibularis_3 / nrow(Table_Full)*100, digits = 2)
a.fibularis_unknown_percentage <- round(a.fibularis_unknown / nrow(Table_Full)*100, digits = 2)

# A. iliaca communis

a.iliaca_communis_1_percentage <- round(a.iliaca_communis_1 / nrow(Table_Full)*100, digits = 2)
a.iliaca_communis_2_percentage <- round(a.iliaca_communis_2 / nrow(Table_Full)*100, digits = 2)
a.iliaca_communis_3_percentage <- round(a.iliaca_communis_3 / nrow(Table_Full)*100, digits = 2)
a.iliaca_communis_unknown_percentage <- round(a.iliaca_communis_unknown / nrow(Table_Full)*100, digits = 2)

# A. iliaca externa

a.iliaca_externa_1_percentage <- round(a.iliaca_externa_1 / nrow(Table_Full)*100, digits = 2)
a.iliaca_externa_2_percentage <- round(a.iliaca_externa_2 / nrow(Table_Full)*100, digits = 2)
a.iliaca_externa_3_percentage <- round(a.iliaca_externa_3 / nrow(Table_Full)*100, digits = 2)
a.iliaca_externa_unknown_percentage <- round(a.iliaca_externa_unknown / nrow(Table_Full)*100, digits = 2)

# A. iliaca interna

a.iliaca_interna_1_percentage <- round(a.iliaca_interna_1 / nrow(Table_Full)*100, digits = 2)
a.iliaca_interna_2_percentage <- round(a.iliaca_interna_2 / nrow(Table_Full)*100, digits = 2)
a.iliaca_interna_3_percentage <- round(a.iliaca_interna_3 / nrow(Table_Full)*100, digits = 2)
a.iliaca_interna_unknown_percentage <- round(a.iliaca_interna_unknown / nrow(Table_Full)*100, digits = 2)

# A. poplitea

a.poplitea_1_percentage <- round(a.poplitea_1 / nrow(Table_Full)*100, digits = 2)
a.poplitea_2_percentage <- round(a.poplitea_2 / nrow(Table_Full)*100, digits = 2)
a.poplitea_3_percentage <- round(a.poplitea_3 / nrow(Table_Full)*100, digits = 2)
a.poplitea_unknown_percentage <- round(a.poplitea_unknown / nrow(Table_Full)*100, digits = 2)

# A. subclavia

a.subclavia_1_percentage <- round(a.subclavia_1 / nrow(Table_Full)*100, digits = 2)
a.subclavia_2_percentage <- round(a.subclavia_2 / nrow(Table_Full)*100, digits = 2)
a.subclavia_3_percentage <- round(a.subclavia_3 / nrow(Table_Full)*100, digits = 2)
a.subclavia_unknown_percentage <- round(a.subclavia_unknown / nrow(Table_Full)*100, digits = 2)

# A. tibialis anterior

a.tibialis_anterior_1_percentage <- round(a.tibialis_anterior_1 / nrow(Table_Full)*100, digits = 2)
a.tibialis_anterior_2_percentage <- round(a.tibialis_anterior_2 / nrow(Table_Full)*100, digits = 2)
a.tibialis_anterior_3_percentage <- round(a.tibialis_anterior_3 / nrow(Table_Full)*100, digits = 2)
a.tibialis_anterior_unknown_percentage <- round(a.tibialis_anterior_unknown / nrow(Table_Full)*100, digits = 2)

# A. tibialis posterior

a.tibialis_posterior_1_percentage <- round(a.tibialis_posterior_1 / nrow(Table_Full)*100, digits = 2)
a.tibialis_posterior_2_percentage <- round(a.tibialis_posterior_2 / nrow(Table_Full)*100, digits = 2)
a.tibialis_posterior_3_percentage <- round(a.tibialis_posterior_3 / nrow(Table_Full)*100, digits = 2)
a.tibialis_posterior_unknown_percentage <- round(a.tibialis_posterior_unknown / nrow(Table_Full)*100, digits = 2)

# A. renalis

a.renalis_1_percentage <- round(a.renalis_1 / nrow(Table_Full)*100, digits = 2)
a.renalis_2_percentage <- round(a.renalis_2 / nrow(Table_Full)*100, digits = 2)
a.renalis_3_percentage <- round(a.renalis_3 / nrow(Table_Full)*100, digits = 2)
a.renalis_unknown_percentage <- round(a.renalis_unknown / nrow(Table_Full)*100, digits = 2)

# Truncus brachiocephalicus

tr.brachiocephalicus_1_percentage <- round(tr.brachiocephalicus_1 / nrow(Table_Full)*100, digits = 2)
tr.brachiocephalicus_2_percentage <- round(tr.brachiocephalicus_2 / nrow(Table_Full)*100, digits = 2)
tr.brachiocephalicus_3_percentage <- round(tr.brachiocephalicus_3 / nrow(Table_Full)*100, digits = 2)
tr.brachiocephalicus_unknown_percentage <- round(tr.brachiocephalicus_unknown / nrow(Table_Full)*100, digits = 2)

# Truncus tibiofibularis

tr.tibiofibularis_1_percentage <- round(tr.tibiofibularis_1 / nrow(Table_Full)*100, digits = 2)
tr.tibiofibularis_2_percentage <- round(tr.tibiofibularis_2 / nrow(Table_Full)*100, digits = 2)
tr.tibiofibularis_3_percentage <- round(tr.tibiofibularis_3 / nrow(Table_Full)*100, digits = 2)
tr.tibiofibularis_unknown_percentage <- round(tr.tibiofibularis_unknown / nrow(Table_Full)*100, digits = 2)

# missing locations

missing_value_1_percentage <- round(missing_value_1 / nrow(Table_Full)*100, digits = 2)
missing_value_2_percentage <- round(missing_value_2 / nrow(Table_Full)*100, digits = 2)
missing_value_3_percentage <- round(missing_value_3 / nrow(Table_Full)*100, digits = 2)
missing_value_unknown_percentage <- round(missing_value_unknown / nrow(Table_Full)*100, digits = 2)



