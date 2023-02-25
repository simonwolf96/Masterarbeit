

Table_by_Date <- Table_Full_without[1, 1:ncol(Table_Full_without)]
target <- 1


# compare the patient numbers and the Date as well as append if not there yet

for (i in 2:nrow(Table_Full_without)) {
  if (Table_Full_without$KATBERDAT_A[i] != Table_Full_without$KATBERDAT_A[i-1]){
    Table_by_Date <- rbind(Table_by_Date[1:target, 1:ncol(Table_Full_without), drop=F], Table_Full_without[i, 1:ncol(Table_Full_without)])
    target <- target + 1
  } else if (Table_Full_without$KATBERDAT_A[i] == Table_Full_without$KATBERDAT_A[i-1] && Table_Full_without$ï..PATNR[i] != Table_Full_without$ï..PATNR[i-1]){
    Table_by_Date <- rbind(Table_by_Date[1:target, 1:ncol(Table_Full_without), drop=F], Table_Full_without[i, 1:ncol(Table_Full_without)])
    target <- target + 1
  }
}
