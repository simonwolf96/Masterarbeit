# find out if treatment worsened or improved from in to out

worsening_2016 <- 0
worsening_2019 <- 0
improvement_2016 <- 0
improvement_2019 <- 0


for (i in 1:nrow(Table_Full)) {
  if (Table_Full$Treatment_change_2016[i] != 0){
    cat("Änderung bei Guidelines 2016 = ", Table_Full$Treatment_change_2016[i], "\n")
    if (Table_Full$Treatment_change_2016[i] == 1) {
      worsening_2016 <- worsening_2016 + 1
    } else if ((Table_Full$Treatment_change_2016[i] == 2)) {
      improvement_2016 <- improvement_2016 + 1
    }
  }
  if (Table_Full$Treatment_change_2019[i] != 0) {
    cat("Änderung bei Guidelines 2019 = ", Table_Full$Treatment_change_2019[i], "\n")
    if (Table_Full$Treatment_change_2019[i] == 1) {
      worsening_2019 <- worsening_2019 + 1
    } else if (Table_Full$Treatment_change_2019[i] == 2) {
      improvement_2019 <- improvement_2019 + 1
    } 
  }
}


cat("Veränderung 2016 (worsening, improvement): ", worsening_2016, ", ", improvement_2016, "\n")
cat("Veränderung 2019 (worsening, improvement)", worsening_2019, ", ", improvement_2019, "\n")

