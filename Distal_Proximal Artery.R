# group arteries in proximal and distal

target <- which(names(Table_Full_without) == 'Truncus_Tibiofibularis')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Distal = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Distal')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Proximal = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Proximal')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Vessel_Missing = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Vessel_Missing')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Distal_Severity = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Distal_Severity')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Proximal_Severity = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])
# 
# 
# 
# 
# for (i in 1:nrow(Table_Full_without)) {
#   if (Table_Full_without$Truncus_Tibiofibularis[i] != 0) {
#     Table_Full_without$Distal[i] <- 'Truncus Tibiofibularis'
#   } else if (Table_Full_without$Fibularis[i] != 0) {
#     Table_Full_without$Distal[i] <- 'A. Fibularis'
#   } else if (Table_Full_without$Tibialis_Anterior[i] != 0) {
#     Table_Full_without$Distal[i] <- 'A. Tibialis Anterior'
#   } else if (Table_Full_without$Tibialis_Posterior[i] != 0) {
#     Table_Full_without$Distal[i] <- 'A. Tibialis Posterior'
#   } else if (Table_Full_without$Iliaca_Externa[i] != 0) {
#     Table_Full_without$Proximal[i] <- 'A. Iliaca Externa'
#   } else if (Table_Full_without$Iliaca_Communis[i] != 0) {
#     Table_Full_without$Proximal[i] <- 'A. Iliaca Communis'
#   } else if (Table_Full_without$Iliaca_Interna[i] != 0) {
#     Table_Full_without$Proximal[i] <- 'A. Iliaca Interna'
#   } else if (Table_Full_without$Femoralis_Communis[i] != 0) {
#     Table_Full_without$Proximal[i] <- 'A. Femoralis Communis'
#   } else if (Table_Full_without$Femoralis_Profundus[i] != 0) {
#     Table_Full_without$Proximal[i] <- 'A. Femoralis Profundus'
#   } else if (Table_Full_without$Femoralis_Superficialis[i] != 0) {
#     Table_Full_without$Proximal[i] <- 'A. Femoralis Superficialis'
#   } else if (Table_Full_without$Poplitea[i] != 0) {
#     Table_Full_without$Proximal[i] <- 'A. Poplitea'
#   }
# }
# 



for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$Truncus_Tibiofibularis[i] == 1
      || Table_Full_without$Fibularis[i] == 1 
      || Table_Full_without$Tibialis_Anterior[i] == 1
      || Table_Full_without$Tibialis_Posterior[i] == 1) {
    
    Table_Full_without$Distal[i] <- 1
    
  } else if (Table_Full_without$Iliaca_Externa[i] == 1 
             || Table_Full_without$Iliaca_Interna[i] == 1 
             || Table_Full_without$Iliaca_Communis[i] == 1 
             || Table_Full_without$Poplitea[i] == 1
             || Table_Full_without$Femoralis_Communis[i] == 1
             || Table_Full_without$Femoralis_Profundus[i] == 1 
             || Table_Full_without$Femoralis_Superficialis[i] == 1) {
    Table_Full_without$Proximal[i] <- 1
  }
}


# set Vessel_Missing <- 1 if no vessel in Proximal or Distal

for (i in 1:nrow(Table_Full_without)) {
  if ((Table_Full_without$Distal[i] == 1 || Table_Full_without$Proximal[i] == 1) == FALSE) {
    Table_Full_without$Vessel_Missing[i] <- 1
  } else {next}
}


for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$Distal[i] == 1) {
    if (Table_Full_without$HIGHEST_GROUP[i] == 1) {
      Table_Full_without$Distal_Severity[i] <- 'Severity 1'
    } else if (Table_Full_without$HIGHEST_GROUP[i] == 2) {
      Table_Full_without$Distal_Severity[i] <- 'Severity 2'
    } else if (Table_Full_without$HIGHEST_GROUP[i] == 3) {
      Table_Full_without$Distal_Severity[i] <- 'Severity 3'
    }
  } else if (Table_Full_without$Proximal[i] == 1) {
    if (Table_Full_without$HIGHEST_GROUP[i] == 1) {
      Table_Full_without$Proximal_Severity[i] <- 'Severity 1'
    } else if (Table_Full_without$HIGHEST_GROUP[i] == 2) {
      Table_Full_without$Proximal_Severity[i] <- 'Severity 2'
    } else if (Table_Full_without$HIGHEST_GROUP[i] == 3) {
      Table_Full_without$Proximal_Severity[i] <- 'Severity 3'
    }
  }
}




# 
# for (i in 1:nrow(Table_Full_without)) {
#   Table_Full_without$Distal[i] <- 0
#   Table_Full_without$Proximal[i] <-0
# }





target <- which(names(Table_Full_without) == 'Proximal_Severity')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Artery_Severity = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

for (i in 1:nrow(Table_Full_without)) {
  if (is.na(Table_Full_without$Distal_Severity[i]) == FALSE) {
    Table_Full_without$Artery_Severity[i] <- '2'
  }
  if (is.na(Table_Full_without$Proximal_Severity[i]) == FALSE) {
    Table_Full_without$Artery_Severity[i] <- '1'
  }
}





