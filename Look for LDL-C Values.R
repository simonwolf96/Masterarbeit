library(lubridate)


# try to get LDL-C value from other date (+/- 3 months (90 days))

x <- 0
for (i in 1:(nrow(Table_Full)-1)) {
  if (is.na(Table_Full$LDL_MAX_numeric[i])) {
    for (j in 2:nrow(Table_Full)) {
      if (Table_Full$FALLNR[j] == Table_Full$FALLNR[i] && is.na(Table_Full$LDL_MAX_numeric[j]) == FALSE && difftime(dmy(Table_Full$KATBERDAT_A[i]), dmy(Table_Full$KATBERDAT_A[j])) <= 90) {
        Table_Full$LDL_MAX_numeric[i] <- Table_Full$LDL_MAX_numeric[j]
        print(difftime(dmy(Table_Full$KATBERDAT_A[i]), dmy(Table_Full$KATBERDAT_A[j])))
        break
      } else {next}
    }
  } else {next}
}


# try to get HDL-C value from other date (+/- 3 months (90 days))

x <- 0
for (i in 1:(nrow(Table_Full)-1)) {
  if (is.na(Table_Full$HDL_MAX_numeric[i])) {
    for (j in 2:nrow(Table_Full)) {
      if (Table_Full$FALLNR[j] == Table_Full$FALLNR[i] && is.na(Table_Full$HDL_MAX_numeric[j]) == FALSE && difftime(dmy(Table_Full$KATBERDAT_A[i]), dmy(Table_Full$KATBERDAT_A[j])) <= 90) {
        Table_Full$HDL_MAX_numeric[i] <- Table_Full$HDL_MAX_numeric[j]
        print(difftime(dmy(Table_Full$KATBERDAT_A[i]), dmy(Table_Full$KATBERDAT_A[j])))
        break
      } else {next}
    }
  } else {next}
}



# try to get Triglyceride-C value from other date (+/- 3 months (90 days))

x <- 0
for (i in 1:(nrow(Table_Full)-1)) {
  if (is.na(Table_Full$TRIGLYCERIDE_MAX_numeric[i])) {
    for (j in 2:nrow(Table_Full)) {
      if (Table_Full$FALLNR[j] == Table_Full$FALLNR[i] && is.na(Table_Full$TRIGLYCERIDE_MAX_numeric[j]) == FALSE && difftime(dmy(Table_Full$KATBERDAT_A[i]), dmy(Table_Full$KATBERDAT_A[j])) <= 90) {
        Table_Full$TRIGLYCERIDE_MAX_numeric[i] <- Table_Full$TRIGLYCERIDE_MAX_numeric[j]
        print(difftime(dmy(Table_Full$KATBERDAT_A[i]), dmy(Table_Full$KATBERDAT_A[j])))
        break
      } else {next}
    }
  } else {next}
}


