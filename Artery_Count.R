# count the different arteries for each patient

library(readr)
library(tidyr)
library(gtsummary)


# if by Date: Table_Full_without$FALLNR[i] == Table_Full_without$FALLNR[j]
# if by Patient: Table_Full_without$ï..PATNR[i] == Table_Full_without$ï..PATNR[j]

for (i in 1:(nrow(Table_Full_without))) {
    for (j in 1:nrow(Table_Full_without)) {
      if (Table_Full_without$ï..PATNR[i] == Table_Full_without$ï..PATNR[j]) {
        
        if (grepl("axillaris", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Axillaris[i] <- Table_Full_without$Axillaris[i] + 1
        }
        
        if (grepl("femoralis communis", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Femoralis_Communis[i] <- Table_Full_without$Femoralis_Communis[i] + 1 
        }
        
        if (grepl("femoralis profundus", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Femoralis_Profundus[i] <- Table_Full_without$Femoralis_Profundus[i] + 1 
        } 
        
        if (grepl("femoralis superficialis", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Femoralis_Superficialis[i] <- Table_Full_without$Femoralis_Superficialis[i] + 1 
        } 
        
        if (grepl("fibularis", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Fibularis[i] <- Table_Full_without$Fibularis[i] + 1 
        } 
        
        if (grepl("iliaca communis", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Iliaca_Communis[i] <- Table_Full_without$Iliaca_Communis[i] + 1 
        } 
        
        if (grepl("iliaca externa", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Iliaca_Externa[i] <- Table_Full_without$Iliaca_Externa[i] + 1 
        } 
        
        if (grepl("iliaca interna", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Iliaca_Interna[i] <- Table_Full_without$Iliaca_Interna[i] + 1 
        } 
        
        if (grepl("poplitea", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Poplitea[i] <- Table_Full_without$Poplitea[i] + 1 
        } 
        
        if (grepl("tibialis anterior", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Tibialis_Anterior[i] <- Table_Full_without$Tibialis_Anterior[i] + 1 
        } 
        
        if (grepl("tibialis posterior", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Tibialis_Posterior[i] <- Table_Full_without$Tibialis_Posterior[i] + 1 
        } 
        
        if (grepl("brachiocepha", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Truncus_Brachiocephalicus[i] <- Table_Full_without$Truncus_Brachiocephalicus[i] + 1 
        } 
        
        if (grepl("Truncus tibiofib", Table_Full_without$LOKALISATION[j])) {
          Table_Full_without$Truncus_Tibiofibularis[i] <- Table_Full_without$Truncus_Tibiofibularis[i] + 1 
        } 
        
    } else {next}
  }
}
