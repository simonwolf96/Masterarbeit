# copy drugs to all the dates (only needed for Table_Full)


for (i in 1:nrow(Table_Full)) {
  for (j in 1:nrow(Table_Full)) {
    if (Table_Full$FALLNR[i] == Table_Full$FALLNR[j]) {
      
      if (is.na(Table_Full$Atorvastatin_in[i]) && is.na(Table_Full$Atorvastatin_in[j]) == FALSE) {
        Table_Full$Atorvastatin_in[i] <- Table_Full$Atorvastatin_in[j]
      }
      
      if (is.na(Table_Full$Atorvastatin_out[i]) && is.na(Table_Full$Atorvastatin_out[j]) == FALSE) {
        Table_Full$Atorvastatin_out[i] <- Table_Full$Atorvastatin_out[j]
      }
      
      if (is.na(Table_Full$Ator_EZ_in[i]) && is.na(Table_Full$Ator_EZ_in[j]) == FALSE) {
        Table_Full$Ator_EZ_in[i] <- Table_Full$Ator_EZ_in[j]
      }
      
      if (is.na(Table_Full$Ator_EZ_out[i]) && is.na(Table_Full$Ator_EZ_out[j]) == FALSE) {
        Table_Full$Ator_EZ_out[i] <- Table_Full$Ator_EZ_out[j]
      }
      
      if (is.na(Table_Full$Bezafibrat_in[i]) && is.na(Table_Full$Bezafibrat_in[j]) == FALSE) {
        Table_Full$Bezafibrat_in[i] <- Table_Full$Bezafibrat_in[j]
      }
      
      if (is.na(Table_Full$Bezafibrat_out[i]) && is.na(Table_Full$Bezafibrat_out[j]) == FALSE) {
        Table_Full$Bezafibrat_out[i] <- Table_Full$Bezafibrat_out[j]
      }
      
      if (is.na(Table_Full$Rosuvastatin_in[i]) && is.na(Table_Full$Rosuvastatin_in[j]) == FALSE) {
        Table_Full$Rosuvastatin_in[i] <- Table_Full$Rosuvastatin_in[j]
      }
      
      if (is.na(Table_Full$Rosuvastatin_out[i]) && is.na(Table_Full$Rosuvastatin_out[j]) == FALSE) {
        Table_Full$Rosuvastatin_out[i] <- Table_Full$Rosuvastatin_out[j]
      }
      
      if (is.na(Table_Full$Fenofibrat_in[i]) && is.na(Table_Full$Fenofibrat_in[j]) == FALSE) {
        Table_Full$Fenofibrat_in[i] <- Table_Full$Fenofibrat_in[j]
      }
      
      if (is.na(Table_Full$Fenofibrat_out[i]) && is.na(Table_Full$Fenofibrat_out[j]) == FALSE) {
        Table_Full$Fenofibrat_out[i] <- Table_Full$Fenofibrat_out[j]
      }
      
      if (is.na(Table_Full$Fluvastatin_in[i]) && is.na(Table_Full$Fluvastatin_in[j]) == FALSE) {
        Table_Full$Fluvastatin_in[i] <- Table_Full$Fluvastatin_in[j]
      }
      
      if (is.na(Table_Full$Fluvastatin_out[i]) && is.na(Table_Full$Fluvastatin_out[j]) == FALSE) {
        Table_Full$Fluvastatin_out[i] <- Table_Full$Fluvastatin_out[j]
      }
      
      if (is.na(Table_Full$Gemfibrozil_in[i]) && is.na(Table_Full$Gemfibrozil_in[j]) == FALSE) {
        Table_Full$Gemfibrozil_in[i] <- Table_Full$Gemfibrozil_in[j]
      }
      
      if (is.na(Table_Full$Gemfibrozil_out[i]) && is.na(Table_Full$Gemfibrozil_out[j]) == FALSE) {
        Table_Full$Gemfibrozil_out[i] <- Table_Full$Gemfibrozil_out[j]
      }
      
      if (is.na(Table_Full$Sim_EZ_in[i]) && is.na(Table_Full$Sim_EZ_in[j]) == FALSE) {
        Table_Full$Sim_EZ_in[i] <- Table_Full$Sim_EZ_in[j]
      }
      
      if (is.na(Table_Full$Sim_EZ_out[i]) && is.na(Table_Full$Sim_EZ_out[j]) == FALSE) {
        Table_Full$Sim_EZ_out[i] <- Table_Full$Sim_EZ_out[j]
      }
      
      if (is.na(Table_Full$Pitavastatin_in[i]) && is.na(Table_Full$Pitavastatin_in[j]) == FALSE) {
        Table_Full$Pitavastatin_in[i] <- Table_Full$Pitavastatin_in[j]
      }
      
      if (is.na(Table_Full$Pitavastatin_out[i]) && is.na(Table_Full$Pitavastatin_out[j]) == FALSE) {
        Table_Full$Pitavastatin_out[i] <- Table_Full$Pitavastatin_out[j]
      }
      
      if (is.na(Table_Full$Pravastatin_in[i]) && is.na(Table_Full$Pravastatin_in[j]) == FALSE) {
        Table_Full$Pravastatin_in[i] <- Table_Full$Pravastatin_in[j]
      }
      
      if (is.na(Table_Full$Pravastatin_out[i]) && is.na(Table_Full$Pravastatin_out[j]) == FALSE) {
        Table_Full$Pravastatin_out[i] <- Table_Full$Pravastatin_out[j]
      }
      
      if (is.na(Table_Full$Alirocumab_in[i]) && is.na(Table_Full$Alirocumab_in[j]) == FALSE) {
        Table_Full$Alirocumab_in[i] <- Table_Full$Alirocumab_in[j]
      }
      
      if (is.na(Table_Full$Alirocumab_out[i]) && is.na(Table_Full$Alirocumab_out[j]) == FALSE) {
        Table_Full$Alirocumab_out[i] <- Table_Full$Alirocumab_out[j]
      }

      if (is.na(Table_Full$Simvastatin_in[i]) && is.na(Table_Full$Simvastatin_in[j]) == FALSE) {
        Table_Full$Simvastatin_in[i] <- Table_Full$Simvastatin_in[j]
      }
      
      if (is.na(Table_Full$Simvastatin_out[i]) && is.na(Table_Full$Simvastatin_out[j]) == FALSE) {
        Table_Full$Simvastatin_out[i] <- Table_Full$Simvastatin_out[j]
      }
        
      if (is.na(Table_Full$Ezetimib_in[i]) && is.na(Table_Full$Ezetimib_in[j]) == FALSE) {
        Table_Full$Ezetimib_in[i] <- Table_Full$Ezetimib_in[j]
      }
      
      if (is.na(Table_Full$Ezetimib_out[i]) && is.na(Table_Full$Ezetimib_out[j]) == FALSE) {
        Table_Full$Ezetimib_out[i] <- Table_Full$Ezetimib_out[j]
      }
    }
  }
}




Table_Full[is.na(Table_Full$Atorvastatin_in),]$Atorvastatin_in <-  0
Table_Full[is.na(Table_Full$Atorvastatin_out),]$Atorvastatin_out <-  0

Table_Full[is.na(Table_Full$Ator_EZ_in),]$Ator_EZ_in <-  0
Table_Full[is.na(Table_Full$Ator_EZ_out),]$Ator_EZ_out <-  0

Table_Full[is.na(Table_Full$Bezafibrat_in),]$Bezafibrat_in <-  0
Table_Full[is.na(Table_Full$Bezafibrat_out),]$Bezafibrat_out <-  0

Table_Full[is.na(Table_Full$Rosuvastatin_in),]$Rosuvastatin_in <-  0
Table_Full[is.na(Table_Full$Rosuvastatin_out),]$Rosuvastatin_out <-  0

Table_Full[is.na(Table_Full$Fenofibrat_in),]$Fenofibrat_in <-  0
Table_Full[is.na(Table_Full$Fenofibrat_out),]$Fenofibrat_out <-  0

Table_Full[is.na(Table_Full$Fluvastatin_in),]$Fluvastatin_in <-  0
Table_Full[is.na(Table_Full$Fluvastatin_out),]$Fluvastatin_out <-  0

Table_Full[is.na(Table_Full$Gemfibrozil_in),]$Gemfibrozil_in <-  0
Table_Full[is.na(Table_Full$Gemfibrozil_out),]$Gemfibrozil_out <-  0

Table_Full[is.na(Table_Full$Sim_EZ_in),]$Sim_EZ_in <-  0
Table_Full[is.na(Table_Full$Sim_EZ_out),]$Sim_EZ_out <-  0

Table_Full[is.na(Table_Full$Pitavastatin_in),]$Pitavastatin_in <-  0
Table_Full[is.na(Table_Full$Pitavastatin_out),]$Pitavastatin_out <-  0

Table_Full[is.na(Table_Full$Pravastatin_in),]$Pravastatin_in <-  0
Table_Full[is.na(Table_Full$Pravastatin_out),]$Pravastatin_out <-  0

Table_Full[is.na(Table_Full$Alirocumab_in),]$Alirocumab_in <-  0
Table_Full[is.na(Table_Full$Alirocumab_out),]$Alirocumab_out <-  0

Table_Full[is.na(Table_Full$Simvastatin_in),]$Simvastatin_in <-  0
Table_Full[is.na(Table_Full$Simvastatin_out),]$Simvastatin_out <-  0

Table_Full[is.na(Table_Full$Ezetimib_in),]$Ezetimib_in <-  0
Table_Full[is.na(Table_Full$Ezetimib_out),]$Ezetimib_out <-  0


for (i in 1:nrow(Table_Full)) {
  if (Table_Full$Atorvastatin_in[i] != Table_Full$Atorvastatin_out[i]) {
    if ((Table_Full$Atorvastatin_in[i] < Table_Full$Atorvastatin_out[i] && Table_Full$Atorvastatin_out[i] != 99) || (Table_Full$Atorvastatin_in[i] == 99 && Table_Full$Atorvastatin_out[i] != 0) || (Table_Full$Atorvastatin_in[i] == 0 && Table_Full$Atorvastatin_out[i] != 0)) {
      Table_Full$Atorvastatin_in[i] <- Table_Full$Atorvastatin_out[i]
    }
  }
  if (Table_Full$Ator_EZ_in[i] != Table_Full$Ator_EZ_out[i]) {
    if (Table_Full$Ator_EZ_in[i] < Table_Full$Ator_EZ_out[i]) {
      Table_Full$Ator_EZ_in[i] <- Table_Full$Ator_EZ_out[i]
    }
  }
  if (Table_Full$Bezafibrat_in[i] != Table_Full$Bezafibrat_out[i]) {
    if (Table_Full$Bezafibrat_in[i] < Table_Full$Bezafibrat_out[i]) {
      Table_Full$Bezafibrat_in[i] <- Table_Full$Bezafibrat_out[i]
    }
  }
  if (Table_Full$Rosuvastatin_in[i] != Table_Full$Rosuvastatin_out[i]) {
    if ((Table_Full$Rosuvastatin_in[i] < Table_Full$Rosuvastatin_out[i] && Table_Full$Rosuvastatin_out[i] != 99) || (Table_Full$Rosuvastatin_in[i] == 99 && Table_Full$Rosuvastatin_out[i] != 0) || (Table_Full$Rosuvastatin_in[i] == 0 && Table_Full$Rosuvastatin_out[i] != 0)) {
      Table_Full$Rosuvastatin_in[i] <- Table_Full$Rosuvastatin_out[i]
    }
  }
  if (Table_Full$Fenofibrat_in[i] != Table_Full$Fenofibrat_out[i]) {
    if (Table_Full$Fenofibrat_in[i] < Table_Full$Fenofibrat_out[i]) {
      Table_Full$Fenofibrat_in[i] <- Table_Full$Fenofibrat_out[i]
    }
  }
  if (Table_Full$Fluvastatin_in[i] != Table_Full$Fluvastatin_out[i]) {
    if ((Table_Full$Fluvastatin_in[i] < Table_Full$Fluvastatin_out[i] && Table_Full$Fluvastatin_out[i] != 99) || (Table_Full$Fluvastatin_in[i] == 99 && Table_Full$Fluvastatin_out[i] != 0) || (Table_Full$Fluvastatin_in[i] == 0 && Table_Full$Fluvastatin_out[i] != 0))  {
      Table_Full$Fluvastatin_in[i] <- Table_Full$Fluvastatin_out[i]
    }
  }
  if (Table_Full$Gemfibrozil_in[i] != Table_Full$Gemfibrozil_out[i]) {
    if (Table_Full$Gemfibrozil_in[i] < Table_Full$Gemfibrozil_out[i]) {
      Table_Full$Gemfibrozil_in[i] <- Table_Full$Gemfibrozil_out[i]
    }
  }
  if (Table_Full$Sim_EZ_in[i] != Table_Full$Sim_EZ_out[i]) {
    if (Table_Full$Sim_EZ_in[i] < Table_Full$Sim_EZ_out[i]) {
      Table_Full$Sim_EZ_in[i] <- Table_Full$Sim_EZ_out[i]
    }
  }
  if (Table_Full$Pitavastatin_in[i] != Table_Full$Pitavastatin_out[i]) {
    if ((Table_Full$Pitavastatin_in[i] < Table_Full$Pitavastatin_out[i] && Table_Full$Pitavastatin_out[i] != 99)  || (Table_Full$Pitavastatin_in[i] == 99 && Table_Full$Pitavastatin_out[i] != 0) || (Table_Full$Pitavastatin_in[i] == 0 && Table_Full$Pitavastatin_out[i] != 0)) {
      Table_Full$Pitavastatin_in[i] <- Table_Full$Pitavastatin_out[i]
    }
  }
  if (Table_Full$Pravastatin_in[i] != Table_Full$Pravastatin_out[i]) {
    if ((Table_Full$Pravastatin_in[i] < Table_Full$Pravastatin_out[i] && Table_Full$Pravastatin_out[i] != 99)  || (Table_Full$Pravastatin_in[i] == 99 && Table_Full$Pravastatin_out[i] != 0) || (Table_Full$Pravastatin_in[i] == 0 && Table_Full$Pravastatin_out[i] != 0)) {
      Table_Full$Pravastatin_in[i] <- Table_Full$Pravastatin_out[i]
    }
  }
  if (Table_Full$Alirocumab_in[i] != Table_Full$Alirocumab_out[i]) {
    if (Table_Full$Alirocumab_in[i] < Table_Full$Alirocumab_out[i]) {
      Table_Full$Alirocumab_in[i] <- Table_Full$Alirocumab_out[i]
    }
  }
  if (Table_Full$Simvastatin_in[i] != Table_Full$Simvastatin_out[i]) {
    if ((Table_Full$Simvastatin_in[i] < Table_Full$Simvastatin_out[i] && Table_Full$Simvastatin_out[i] != 99)  || (Table_Full$Simvastatin_in[i] == 0 && Table_Full$Simvastatin_out[i] != 0)) {
      Table_Full$Simvastatin_in[i] <- Table_Full$Simvastatin_out[i]
    }
  }
  if (Table_Full$Ezetimib_in[i] != Table_Full$Ezetimib_out[i]) {
    if (Table_Full$Ezetimib_in[i] < Table_Full$Ezetimib_out[i]) {
      Table_Full$Ezetimib_in[i] <- Table_Full$Ezetimib_out[i]
    }
  }
}


Table_Full[Table_Full$Atorvastatin_out == 99,]$Atorvastatin_out <-  0
Table_Full[Table_Full$Rosuvastatin_out == 99,]$Rosuvastatin_out <- 0
Table_FUll[Table_Full$Simvastatin_out == 99,]$Simvastatin_out <- 0
Table_Full[Table_Full$Pravastatin_out == 99,]$Pravastatin_out <- 0
Table_Full[Table_Full$Pitavastatin_out == 99,]$Pitavastatin_out <- 0
Table_Full[Table_Full$Fluvastatin_out == 99,]$Fluvastatin_out <- 0



Table_Full[Table_Full$Atorvastatin_in == 0,]$Atorvastatin_in <-  NA
Table_Full[Table_Full$Atorvastatin_out == 0,]$Atorvastatin_out <-  NA

Table_Full[Table_Full$Ator_EZ_in == 0,]$Ator_EZ_in <-  NA
Table_Full[Table_Full$Ator_EZ_out == 0,]$Ator_EZ_out <-  NA

Table_Full[Table_Full$Bezafibrat_in == 0,]$Bezafibrat_in <-  NA
Table_Full[Table_Full$Bezafibrat_out == 0,]$Bezafibrat_out <-  NA

Table_Full[Table_Full$Rosuvastatin_in == 0,]$Rosuvastatin_in <-  NA
Table_Full[Table_Full$Rosuvastatin_out == 0,]$Rosuvastatin_out   <- NA

Table_Full[Table_Full$Fenofibrat_in == 0,]$Fenofibrat_in   <- NA
Table_Full[Table_Full$Fenofibrat_out == 0,]$Fenofibrat_out   <- NA

Table_Full[Table_Full$Fluvastatin_in == 0,]$Fluvastatin_in   <- NA
Table_Full[Table_Full$Fluvastatin_out == 0,]$Fluvastatin_out   <- NA

Table_Full[Table_Full$Gemfibrozil_in == 0,]$Gemfibrozil_in   <- NA
Table_Full[Table_Full$Gemfibrozil_out == 0,]$Gemfibrozil_out   <- NA

Table_Full[Table_Full$Sim_EZ_in == 0,]$Sim_EZ_in   <- NA
Table_Full[Table_Full$Sim_EZ_out == 0,]$Sim_EZ_out  <- NA

Table_Full[Table_Full$Pitavastatin_in == 0,]$Pitavastatin_in  <- NA
Table_Full[Table_Full$Pitavastatin_out == 0,]$Pitavastatin_out  <- NA

Table_Full[Table_Full$Pravastatin_in == 0,]$Pravastatin_in  <- NA
Table_Full[Table_Full$Pravastatin_out == 0,]$Pravastatin_out  <- NA

Table_Full[Table_Full$Alirocumab_in == 0,]$Alirocumab_in  <- NA
Table_Full[Table_Full$Alirocumab_out == 0,]$Alirocumab_out  <- NA

Table_Full[Table_Full$Simvastatin_in == 0,]$Simvastatin_in  <- NA
Table_Full[Table_Full$Simvastatin_out == 0,]$Simvastatin_out  <- NA

Table_Full[Table_Full$Ezetimib_in == 0,]$Ezetimib_in  <- NA
Table_Full[Table_Full$Ezetimib_out == 0,]$Ezetimib_out  <- NA







