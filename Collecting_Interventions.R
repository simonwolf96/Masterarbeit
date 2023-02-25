# count the procedure for each patient

target <- which(names(Table_Full_without) == 'PTA')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(PTA_total = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'LTL')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(LTL_total = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'PTEE')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(PTEE_total = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Stent')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Stent_total = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Stentgraf')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Stentgraf_total = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Atherektomie')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Atherektomie_total = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'DrugCoatedPTA')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(DrugCoatedPTA_total = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'DES')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(DES_total = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'REENTRYDEVICE')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(REENTRYDEVICE_total = 0), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])



# if by Date: Table_Full_without$FALLNR[i] == Table_Full_without$FALLNR[j]
# if by Patient: Table_Full_without$ï..PATNR[i] == Table_Full_without$ï..PATNR[j]

for (i in 1:nrow(Table_Full_without)) {
  for (j in 1:nrow(Table_Full_without)) {
    if (Table_Full_without$ï..PATNR[i] == Table_Full_without$ï..PATNR[j]) {
      
      if (Table_Full_without$PTA[j] != 0) {
        Table_Full_without$PTA_total[i] <- Table_Full_without$PTA_total[i] + 1
      }
      
      if (Table_Full_without$LTL[j] != 0) {
        Table_Full_without$LTL_total[i] <- Table_Full_without$LTL_total[i] + 1
      }
      
      if (Table_Full_without$PTEE[j] != 0) {
        Table_Full_without$PTEE_total[i] <- Table_Full_without$PTEE_total[i] + 1
      }
      
      if (Table_Full_without$Stent[j] != 0) {
        Table_Full_without$Stent_total[i] <- Table_Full_without$Stent_total[i] + 1
      }
      
      if (Table_Full_without$Stentgraf[j] != 0) {
        Table_Full_without$Stentgraf_total[i] <- Table_Full_without$Stentgraf_total[i] + 1
      }
      
      if (Table_Full_without$Atherektomie[j] != 0) {
        Table_Full_without$Atherektomie_total[i] <- Table_Full_without$Atherektomie_total[i] + 1
      }
      
      if (Table_Full_without$DrugCoatedPTA[j] != 0) {
        Table_Full_without$DrugCoatedPTA_total[i] <- Table_Full_without$DrugCoatedPTA_total[i] + 1
      }
      
      if (Table_Full_without$DES[j] != 0) {
        Table_Full_without$DES_total[i] <- Table_Full_without$DES_total[i] + 1
      }
      
      if (Table_Full_without$REENTRYDEVICE[j] != 0) {
        Table_Full_without$REENTRYDEVICE_total[i] <- Table_Full_without$REENTRYDEVICE_total[i] + 1
      }
    }
  }
}




