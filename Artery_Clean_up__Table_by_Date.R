library(readr)
library(tidyr)
library(gtsummary)

# get rid of left and right


target <- which(names(Table_Full_without) == 'LOKALISATION')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Femoralis_Communis = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Femoralis_Communis')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Femoralis_Profundus = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Femoralis_Profundus')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Femoralis_Superficialis = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Femoralis_Superficialis')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Fibularis = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Fibularis')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Iliaca_Communis = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Iliaca_Communis')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Iliaca_Externa = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Iliaca_Externa')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Iliaca_Interna = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Iliaca_Interna')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Poplitea = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Poplitea')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Tibialis_Anterior = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Tibialis_Anterior')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Tibialis_Posterior = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Tibialis_Posterior')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Truncus_Tibiofibularis = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])


for (i in 1:nrow(Table_Full_without)) {
  if (grepl("fem. com.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. femoralis communis"
    Table_Full_without$Femoralis_Communis[i] <- 1
  } else if (grepl("fem. prof.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. femoralis profundus"
    Table_Full_without$Femoralis_Profundus[i] <- 1
  } else if (grepl("fem. sup.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. femoralis superficialis"
    Table_Full_without$Femoralis_Superficialis[i] <- 1
  } else if (grepl("A. fib.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. fibularis"
    Table_Full_without$Fibularis[i] <- 1
  } else if (grepl("iliaca com.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. iliaca communis"
    Table_Full_without$Iliaca_Communis[i] <- 1
  } else if (grepl("iliaca ext.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. iliaca externa"
    Table_Full_without$Iliaca_Externa[i] <- 1
  } else if (grepl("iliaca int.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. iliaca interna"
    Table_Full_without$Iliaca_Interna[i] <- 1
  } else if (grepl("poplitea", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. poplitea"
    Table_Full_without$Poplitea[i] <- 1
  } else if (grepl("tib. ant.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. tibialis anterior"
    Table_Full_without$Tibialis_Anterior[i] <- 1
  } else if (grepl("tib. post.", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "A. tibialis posterior"
    Table_Full_without$Tibialis_Posterior[i] <- 1
  } else if (grepl("Truncus tibiofib", Table_Full_without$LOKALISATION[i])) {
    Table_Full_without$LOKALISATION[i] <- "Truncus tibiofibularis"
    Table_Full_without$Truncus_Tibiofibularis[i] <- 1
  }
}









