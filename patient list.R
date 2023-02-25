# create a table with following conditions
# 1. Each Patient one time
# 2. PTA == TRUE
# 3. Age > 18
# 4. LDL measured
# 5. Include if Drugs are given else include first one with PTA
# 5.1 in and out preferred else only out



target <- which(names(Table_Full) == 'Ezetimib_out')
Table_Full <- cbind(Table_Full[,1:target,drop=F], data.frame(Drugs_in = 0))


target <- which(names(Table_Full) == 'Drugs_in')
Table_Full <- cbind(Table_Full[,1:target,drop=F], data.frame(Drugs_out = 0))


# set Drug_in / Drug_out to 1 if any drug dosage is given

for (i in 1:nrow(Table_Full)) {
  ifelse ((Table_Full$Atorvastatin_in[i] != 0 | Table_Full$Ator_EZ_in[i] != 0 | Table_Full$Bezafibrat_in[i] != 0 | Table_Full$Rosuvastatin_in[i] != 0 | Table_Full$Fenofibrat_in[i] != 0 | Table_Full$Fluvastatin_in[i] != 0 | Table_Full$Gemfibrozil_in[i] != 0 | Table_Full$Sim_EZ_in[i] != 0 | Table_Full$Pitavastatin_in[i] != 0 | Table_Full$Pravastatin_in[i] != 0 | Table_Full$Alirocumab_in[i] != 0 | Table_Full$Simvastatin_in[i] != 0 | Table_Full$Ezetimib_in[i] != 0), Table_Full$Drugs_in[i] <- 1, next)
  ifelse ((Table_Full$Atorvastatin_out[i] != 0 | Table_Full$Ator_EZ_out[i] != 0 | Table_Full$Bezafibrat_out[i] != 0 | Table_Full$Rosuvastatin_out[i] != 0 | Table_Full$Fenofibrat_out[i] != 0 | Table_Full$Fluvastatin_out[i] != 0 | Table_Full$Gemfibrozil_out[i] != 0 | Table_Full$Sim_EZ_out[i] != 0 | Table_Full$Pitavastatin_out[i] != 0 | Table_Full$Pravastatin_out[i] != 0 | Table_Full$Alirocumab_out[i] != 0 | Table_Full$Simvastatin_out[i] != 0 | Table_Full$Ezetimib_out[i] != 0), Table_Full$Drugs_out[i] <- 1, next)
}


# clean LDL_MAX_numeric

for (i in 1:nrow(Table_Full)) {
  ifelse ((Table_Full$LDL_MAX_numeric[i] == "keine" | Table_Full$LDL_MAX_numeric[i] == "nicht" | Table_Full$LDL_MAX_numeric[i] == "<0.1" | 
             Table_Full$LDL_MAX_numeric[i] == ">0.4" | Table_Full$LDL_MAX_numeric[i] == " " | is.na(Table_Full$LDL_MAX_numeric[i])),
          Table_Full$LDL_MAX_numeric[i] <- 0, next)
}




Table_intermediate <- Table_Full[1, 1:ncol(Table_Full)]
target_1 <- 1

Table_Patients <- Table_Full[1, 1:ncol(Table_Full)]
target_2 <- 0




for (i in 1:(nrow(Table_Full))) {
  Table_intermediate <- Table_Full[i, 1:ncol(Table_Full)]
  target_1 <- 1
   if (Table_Full$ï..PATNR[i] == Table_Full$ï..PATNR[i+1]) {       # is i == i+1?
      Table_intermediate <- rbind(Table_intermediate[1:target_1, 1:ncol(Table_Full), drop=F], Table_Full[i+1, 1:ncol(Table_Full)])
      target_1 <- target_1 + 1        # if yes add row to Table_intermediate
    } else {        # if no do the evaluation of the list
     target_2 <- target_2 + 1    # set the target in the new list to 1...
     for (j in 1: nrow(Table_intermediate)) {    # iterate over Table_intermediate
       if (Table_intermediate$PTA[j] == 1 &&         # check for all the statements
             Table_intermediate$LDL_MAX_numeric[j] > 0 &&
             (Table_intermediate$Drugs_in[j] == 1 | Table_intermediate$Drugs_out[j] == 1)) {
          Table_Patients <- rbind(Table_Patients[1:target_2, 1:ncol(Table_Full), drop=F], Table_intermediate[j, 1:ncol(Table_Full)])     # if all are true add row
          target_1 <- 1
          #remove(Table_intermediate)     # remove the used list to initiate new one
          break
          } else if (Table_intermediate$PTA[j] == 1) {
            Table_Patients <- rbind(Table_Patients[1:target_2, 1:ncol(Table_Full), drop=F], Table_intermediate[j, 1:ncol(Table_Full)])
            target_1 <- 1
          } else {
            Table_Patients <- rbind(Table_Patients[1:target_2, 1:ncol(Table_Full), drop=F], Table_intermediate[j, 1:ncol(Table_Full)])
            target_1 <- 1
          }
     }
     #remove(Table_intermediate)
    }
}

if (Table_Patients$FALLNR[nrow(Table_Patients)] != Table_Full$FALLNR[nrow(Table_Full)]) {
  Table_Patients <- rbind(Table_Patients[1:target_2, 1:ncol(Table_Full), drop=F], Table_Full[nrow(Table_Full), 1:ncol(Table_Full)])
}
      
      


      

      
      
      
      
      
      
      