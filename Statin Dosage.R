# find out whether high-, medium-, or low-dosage statin was prescribed

# add new columns

target <- which(names(Table_Patients) == 'Ezetimib_out')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(high_intensity_in = 0))

target <- which(names(Table_Patients) == 'high_intensity_in')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(high_intensity_out = 0))

target <- which(names(Table_Patients) == 'high_intensity_out')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(medium_intensity_in = 0))

target <- which(names(Table_Patients) == 'medium_intensity_in')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(medium_intensity_out = 0))

target <- which(names(Table_Patients) == 'medium_intensity_out')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(low_intensity_in = 0))

target <- which(names(Table_Patients) == 'low_intensity_in')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(low_intensity_out = 0))

target <- which(names(Table_Patients) == 'low_intensity_out')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_in = 0))

target <- which(names(Table_Patients) == 'highest_intensity_in')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_out= 0))

target <- which(names(Table_Patients) == 'highest_intensity_out')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity= 1))


Table_Patients[is.na(Table_Patients$Rosuvastatin_in),]$Rosuvastatin_in <- 0
Table_Patients[Table_Patients$Rosuvastatin_in == 5,]$Rosuvastatin_in <- 1
Table_Patients[Table_Patients$Rosuvastatin_in == 0,]$Rosuvastatin_in <- NA

# check for high_intensity_in, if true set to 1

for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$Atorvastatin_in[i] >= 40 | Table_Patients$Rosuvastatin_in[i] >= 20),
    Table_Patients$high_intensity_in[i] <- 1, next)
}


# check for high_intensity_out, if true set to 1

for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$Atorvastatin_out[i] >= 40 | Table_Patients$Rosuvastatin_out[i] >= 20),
    Table_Patients$high_intensity_out[i] <- 1, next)
}


# check for medium_intensity_in, if true set to 1

for (i in 1:nrow(Table_Patients)) {
  ifelse (((Table_Patients$Atorvastatin_in[i] >= 10 && Table_Patients$Atorvastatin_in[i] <= 20) |
  Table_Patients$Fluvastatin_in[i] > 40 | Table_Patients$Pitavastatin_in[i] >= 2 | Table_Patients$Pravastatin_in[i] >= 40 |
  Table_Patients$Rosuvastatin_in[i] <= 10 | Table_Patients$Simvastatin_in[i] >= 20),
    Table_Patients$medium_intensity_in[i] <- 1, next)
}


# check for medium_intensity_out, if true set to 1

for (i in 1:nrow(Table_Patients)) {
  ifelse (((Table_Patients$Atorvastatin_out[i] >= 10 && Table_Patients$Atorvastatin_out[i] <= 20) |
  Table_Patients$Fluvastatin_out[i] > 40 | Table_Patients$Pitavastatin_out[i] >= 2 | Table_Patients$Pravastatin_out[i] >= 40 |
  Table_Patients$Rosuvastatin_out[i] <= 10 | Table_Patients$Simvastatin_out[i] >= 20),
    Table_Patients$medium_intensity_out[i] <- 1, next)
}


# check for low_intensity_in, if true set to 1

for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$Fluvastatin_in[i] <= 40 | Table_Patients$Pitavastatin_in[i] == 1 | Table_Patients$Pravastatin_in[i] <= 20 | 
  Table_Patients$Simvastatin_in[i] == 10),
    Table_Patients$low_intensity_in[i] <- 1, next)
}


# check for low_intensity_out, if true set to 1

for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$Fluvastatin_out[i] <= 40 | Table_Patients$Pitavastatin_out[i] == 1 | Table_Patients$Pravastatin_out[i] <= 20 |
  Table_Patients$Simvastatin_out[i] == 10),
    Table_Patients$low_intensity_out[i] <- 1, next)
}

# find highest_intensity_in 1 = low, 2 = medium, 3 = high    --> 0 = no Statin

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$high_intensity_in[i] == 1) {
    Table_Patients$highest_intensity_in[i] <- "2"
  } else if (Table_Patients$medium_intensity_in[i] == 1 || Table_Patients$low_intensity_in[i] == 1) {
    Table_Patients$highest_intensity_in[i] <- "1"
  } else {next}
}


# find highest_intensity_out 1 = low, 2 = medium, 3 = high    --> 0 = no Statin

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$high_intensity_out[i] == 1) {
    Table_Patients$highest_intensity_out[i] <- "2"
  } else if (Table_Patients$medium_intensity_out[i] == 1 || Table_Patients$low_intensity_out[i] == 1) {
    Table_Patients$highest_intensity_out[i] <- "1"
  } else {next}
}


# find highest statin intensitiy (either in or out)

Table_Patients$highest_intensity <- Table_Patients$highest_intensity_in


for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$highest_intensity_in[i] >= Table_Patients$highest_intensity_out[i]){
    Table_Patients$highest_intensity[i] <- Table_Patients$highest_intensity_in[i]
  } else {
    Table_Patients$highest_intensity[i] <- Table_Patients$highest_intensity_out[i]
  }
}





# target <- which(names(Table_Patients) == 'highest_intensity_in')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_in_1 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])
# 
# target <- which(names(Table_Patients) == 'highest_intensity_in_1')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_in_2 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])
# 
# target <- which(names(Table_Patients) == 'highest_intensity_in_2')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_in_3 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])
# 
# target <- which(names(Table_Patients) == 'highest_intensity_in_3')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_out_1 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])
# 
# target <- which(names(Table_Patients) == 'highest_intensity_out_1')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_out_2 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])
# 
# target <- which(names(Table_Patients) == 'highest_intensity_out_2')
# Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_out_3 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'highest_intensity_in')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_1 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'highest_intensity_1')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_2 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

target <- which(names(Table_Patients) == 'highest_intensity_2')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(highest_intensity_3 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])



# set highest statin values to none/low/medium == 0 and into high == 1

for (i in 1:nrow(Table_Patients)){
  if (Table_Patients$HIGHEST_GROUP[i] == 1) {
    if (Table_Patients$highest_intensity[i] == 0 || Table_Patients$highest_intensity[i] == 1) {
      Table_Patients$highest_intensity_1[i] <- 0
    } else if (Table_Patients$highest_intensity[i] == 2) {
      Table_Patients$highest_intensity_1[i] <- 1
    }
    #    Table_Patients$highest_intensity_in_1[i] <- Table_Patients$highest_intensity_in[i]
    #    Table_Patients$highest_intensity_out_1[i] <- Table_Patients$highest_intensity_out[i]
    #    Table_Patients$highest_intensity_1[i] <- Table_Patients$highest_intensity[i]
  } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
    if (Table_Patients$highest_intensity[i] == 0 || Table_Patients$highest_intensity[i] == 1) {
      Table_Patients$highest_intensity_2[i] <- 0
    } else if (Table_Patients$highest_intensity[i] == 2) {
      Table_Patients$highest_intensity_2[i] <- 1
    }
    #    Table_Patients$highest_intensity_in_2[i] <- Table_Patients$highest_intensity_in[i]
    #    Table_Patients$highest_intensity_out_2[i] <- Table_Patients$highest_intensity_out[i]
    #    Table_Patients$highest_intensity_2[i] <- Table_Patients$highest_intensity[i]
  } else {next
    #    Table_Patients$highest_intensity_in_3[i] <- Table_Patients$highest_intensity_in[i]
    #    Table_Patients$highest_intensity_out_3[i] <- Table_Patients$highest_intensity_out[i]
    #    Table_Patients$highest_intensity_3[i] <- Table_Patients$highest_intensity[i]
  }
}




# # find highest statin intenity in/ out for each patient and add it to the truncated table
# # add new rows to Table_Truncated
# 
# target <- which(names(Table_Truncated) == 'Ezetimib_out')
# Table_Truncated <- cbind(Table_Truncated[,1:target,drop=F], data.frame(highest_intensity_in= 0))
# 
# target <- which(names(Table_Truncated) == 'highest_intensity_in')
# Table_Truncated <- cbind(Table_Truncated[,1:target,drop=F], data.frame(highest_intensity_out= 0))
# 
# # find the highest dosage and copy from Table_Patients to Table_Truncated
# 
# for (i in 1:nrow(Table_Patients)) {
#   for (j in 1:nrow(Table_Truncated)) {
#     if (Table_Patients$ï..PATNR[i] == Table_Truncated$ï..PATNR[j]) {
#       Table_Truncated$highest_intensity_in[j] <- Table_Patients$highest_intensity_in[i]
#       Table_Truncated$highest_intensity_out[j] <- Table_Patients$highest_intensity_out[i]
#       break
#     } else {next}
#   }
# }

