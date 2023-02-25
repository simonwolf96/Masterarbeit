# clean LDL_max_numeric of all strings
# get sum of all measurements as well as the number of measurements

for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$LDL_MAX_numeric[i] == "keine" | Table_Patients$LDL_MAX_numeric[i] == "nicht" | Table_Patients$LDL_MAX_numeric[i] == "<0.1" | 
    Table_Patients$LDL_MAX_numeric[i] == " " | is.na(Table_Patients$LDL_MAX_numeric[i])),
    Table_Patients$LDL_MAX_numeric[i] <- 0, next)
  ifelse (Table_Patients$LDL_MAX_numeric[i] == ">0.4", Table_Patients$LDL_MAX_numeric[i] <- 0.4, next)
}



# mean LDL for different severities

LDL_mean_1 <- 0
LDL_mean_2 <- 0
LDL_mean_3 <- 0
LDL_mean_missing <- 0

int_1 <- 0
int_2 <- 0
int_3 <- 0
int_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$LDL_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      LDL_mean_1 <- LDL_mean_1 + as.numeric(Table_Patients$LDL_MAX_numeric[i])
      int_1 <- int_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      LDL_mean_2 <- LDL_mean_2 + as.numeric(Table_Patients$LDL_MAX_numeric[i])
      int_2 <- int_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      LDL_mean_3 <- LDL_mean_3 + as.numeric(Table_Patients$LDL_MAX_numeric[i])
      int_3 <- int_3 + 1
    } else {
      LDL_mean_missing <- LDL_mean_missing + as.numeric(Table_Patients$LDL_MAX_numeric[i])
      int_missing <- int_missing + 1
    }
  } else {next}
}


LDL_mean_1 <- LDL_mean_1 / int_1
LDL_mean_2 <- LDL_mean_2 / int_2
LDL_mean_3 <- LDL_mean_3 / int_3
LDL_mean_missing <- LDL_mean_missing / int_missing


# LDL standard deviation for different severities

LDL_standard_deviation_1 <- 0
LDL_standard_deviation_2 <- 0
LDL_standard_deviation_3 <- 0
LDL_standard_deviation_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$LDL_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      LDL_standard_deviation_1 <- LDL_standard_deviation_1 + (LDL_mean_1 - as.numeric(Table_Patients$LDL_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      LDL_standard_deviation_2 <- LDL_standard_deviation_2 + (LDL_mean_2 - as.numeric(Table_Patients$LDL_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      LDL_standard_deviation_3 <- LDL_standard_deviation_3 + (LDL_mean_3 - as.numeric(Table_Patients$LDL_MAX_numeric[i]))^2
    } else {
      LDL_standard_deviation_missing <- LDL_standard_deviation_missing + (LDL_mean_missing - as.numeric(Table_Patients$LDL_MAX_numeric[i]))^2  
    }
  }
}

LDL_standard_deviation_1 <- round(sqrt(LDL_standard_deviation_1 / (int_1-1)), digits = 2)
LDL_standard_deviation_2 <- round(sqrt(LDL_standard_deviation_2 / (int_2-1)), digits = 2)
LDL_standard_deviation_3 <- round(sqrt(LDL_standard_deviation_3 / (int_3-1)), digits = 2)
LDL_standard_deviation_missing <- round(sqrt(LDL_standard_deviation_missing / (int_missing-1)), digits = 2)

LDL_mean_1 <- round(LDL_mean_1, digits = 2)
LDL_mean_2 <- round(LDL_mean_2, digits = 2)
LDL_mean_3 <- round(LDL_mean_3, digits = 2)
LDL_mean_missing <- round(LDL_mean_missing, digits = 2)


# clean HDL_max_numeric of all strings
# get sum of all measurements as well as the number of measurements


for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$HDL_MAX_numeric[i] == "STARKE" | Table_Patients$HDL_MAX_numeric[i] == "k.Mat." | Table_Patients$HDL_MAX_numeric[i] == " " |
    is.na(Table_Patients$HDL_MAX_numeric[i]) | Table_Patients$HDL_MAX_numeric[i] == "<0.08" | Table_Patients$HDL_MAX_numeric[i] == "nicht"), Table_Patients$HDL_MAX_numeric[i] <- 0, next)
}


# calculate mean HDL for all the different severities

HDL_mean_1 <- 0
HDL_mean_2 <- 0
HDL_mean_3 <- 0
HDL_mean_missing <- 0

int_1 <- 0
int_2 <- 0
int_3 <- 0
int_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$HDL_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      HDL_mean_1 <- HDL_mean_1 + as.numeric(Table_Patients$HDL_MAX_numeric[i])
      int_1 <- int_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      HDL_mean_2 <- HDL_mean_2 + as.numeric(Table_Patients$HDL_MAX_numeric[i])
      int_2 <- int_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      HDL_mean_3 <- HDL_mean_3 + as.numeric(Table_Patients$HDL_MAX_numeric[i])
      int_3 <- int_3 + 1
    } else {
      HDL_mean_missing <- HDL_mean_missing + as.numeric(Table_Patients$HDL_MAX_numeric[i])
      int_missing <- int_missing + 1
    }
  } else {next}
}


HDL_mean_1 <- HDL_mean_1 / int_1
HDL_mean_2 <- HDL_mean_2 / int_2
HDL_mean_3 <- HDL_mean_3 / int_3
HDL_mean_missing <- HDL_mean_missing / int_missing


# HDL standard deviation for different severities

HDL_standard_deviation_1 <- 0
HDL_standard_deviation_2 <- 0
HDL_standard_deviation_3 <- 0
HDL_standard_deviation_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$HDL_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      HDL_standard_deviation_1 <- HDL_standard_deviation_1 + (HDL_mean_1 - as.numeric(Table_Patients$HDL_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      HDL_standard_deviation_2 <- HDL_standard_deviation_2 + (HDL_mean_2 - as.numeric(Table_Patients$HDL_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      HDL_standard_deviation_3 <- HDL_standard_deviation_3 + (HDL_mean_3 - as.numeric(Table_Patients$HDL_MAX_numeric[i]))^2
    } else {
      HDL_standard_deviation_missing <- HDL_standard_deviation_missing + (HDL_mean_missing - as.numeric(Table_Patients$HDL_MAX_numeric[i]))^2  
    }
  }
}

HDL_standard_deviation_1 <- round(sqrt(HDL_standard_deviation_1 / (int_1-1)), digits = 2)
HDL_standard_deviation_2 <- round(sqrt(HDL_standard_deviation_2 / (int_2-1)), digits = 2)
HDL_standard_deviation_3 <- round(sqrt(HDL_standard_deviation_3 / (int_3-1)), digits = 2)
HDL_standard_deviation_missing <- round(sqrt(HDL_standard_deviation_missing / (int_missing-1)), digits = 2)

HDL_mean_1 <- round(HDL_mean_1, digits = 2)
HDL_mean_2 <- round(HDL_mean_2, digits = 2)
HDL_mean_3 <- round(HDL_mean_3, digits = 2)
HDL_mean_missing <- round(HDL_mean_missing, digits = 2)



# clean cholesterin_MAX_numeric of all non numbers

for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$CHOLESTERIN_MAX_numeric[i] == "STARKE" | Table_Patients$CHOLESTERIN_MAX_numeric[i] == "k.Mat." | Table_Patients$CHOLESTERIN_MAX_numeric[i] == " " | is.na(Table_Patients$CHOLESTERIN_MAX_numeric[i])),
          Table_Patients$CHOLESTERIN_MAX_numeric[i] <- 0, next)
}


# calculate mean CHOLESTERIN for all the different severities

CHOLESTERIN_mean_1 <- 0
CHOLESTERIN_mean_2 <- 0
CHOLESTERIN_mean_3 <- 0
CHOLESTERIN_mean_missing <- 0

int_1 <- 0
int_2 <- 0
int_3 <- 0
int_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$CHOLESTERIN_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      CHOLESTERIN_mean_1 <- CHOLESTERIN_mean_1 + as.numeric(Table_Patients$CHOLESTERIN_MAX_numeric[i])
      int_1 <- int_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      CHOLESTERIN_mean_2 <- CHOLESTERIN_mean_2 + as.numeric(Table_Patients$CHOLESTERIN_MAX_numeric[i])
      int_2 <- int_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      CHOLESTERIN_mean_3 <- CHOLESTERIN_mean_3 + as.numeric(Table_Patients$CHOLESTERIN_MAX_numeric[i])
      int_3 <- int_3 + 1
    } else {
      CHOLESTERIN_mean_missing <- CHOLESTERIN_mean_missing + as.numeric(Table_Patients$CHOLESTERIN_MAX_numeric[i])
      int_missing <- int_missing + 1
    }
  } else {next}
}


CHOLESTERIN_mean_1 <- CHOLESTERIN_mean_1 / int_1
CHOLESTERIN_mean_2 <- CHOLESTERIN_mean_2 / int_2
CHOLESTERIN_mean_3 <- CHOLESTERIN_mean_3 / int_3
CHOLESTERIN_mean_missing <- CHOLESTERIN_mean_missing / int_missing


# CHOLESTERIN standard deviation for different severities

CHOLESTERIN_standard_deviation_1 <- 0
CHOLESTERIN_standard_deviation_2 <- 0
CHOLESTERIN_standard_deviation_3 <- 0
CHOLESTERIN_standard_deviation_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$CHOLESTERIN_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      CHOLESTERIN_standard_deviation_1 <- CHOLESTERIN_standard_deviation_1 + (CHOLESTERIN_mean_1 - as.numeric(Table_Patients$CHOLESTERIN_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      CHOLESTERIN_standard_deviation_2 <- CHOLESTERIN_standard_deviation_2 + (CHOLESTERIN_mean_2 - as.numeric(Table_Patients$CHOLESTERIN_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      CHOLESTERIN_standard_deviation_3 <- CHOLESTERIN_standard_deviation_3 + (CHOLESTERIN_mean_3 - as.numeric(Table_Patients$CHOLESTERIN_MAX_numeric[i]))^2
    } else {
      CHOLESTERIN_standard_deviation_missing <- CHOLESTERIN_standard_deviation_missing + (CHOLESTERIN_mean_missing - as.numeric(Table_Patients$CHOLESTERIN_MAX_numeric[i]))^2  
    }
  }
}

CHOLESTERIN_standard_deviation_1 <- round(sqrt(CHOLESTERIN_standard_deviation_1 / (int_1-1)), digits = 2)
CHOLESTERIN_standard_deviation_2 <- round(sqrt(CHOLESTERIN_standard_deviation_2 / (int_2-1)), digits = 2)
CHOLESTERIN_standard_deviation_3 <- round(sqrt(CHOLESTERIN_standard_deviation_3 / (int_3-1)), digits = 2)
CHOLESTERIN_standard_deviation_missing <- round(sqrt(CHOLESTERIN_standard_deviation_missing / (int_missing-1)), digits = 2)

CHOLESTERIN_mean_1 <- round(CHOLESTERIN_mean_1, digits = 2)
CHOLESTERIN_mean_2 <- round(CHOLESTERIN_mean_2, digits = 2)
CHOLESTERIN_mean_3 <- round(CHOLESTERIN_mean_3, digits = 2)
CHOLESTERIN_mean_missing <- round(CHOLESTERIN_mean_missing, digits = 2)



# clean TRIGLYCERIDE_MAX_numeric of all non numbers

for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$TRIGLYCERIDE_MAX_numeric[i] == "k.Mat." | Table_Patients$TRIGLYCERIDE_MAX_numeric[i] == " " | is.na(Table_Patients$TRIGLYCERIDE_MAX_numeric[i])),
          Table_Patients$TRIGLYCERIDE_MAX_numeric[i] <- 0, next)
}


# calculate mean TRIGLYCERIDE for all the different severities

TRIGLYCERIDE_mean_1 <- 0
TRIGLYCERIDE_mean_2 <- 0
TRIGLYCERIDE_mean_3 <- 0
TRIGLYCERIDE_mean_missing <- 0

int_1 <- 0
int_2 <- 0
int_3 <- 0
int_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$TRIGLYCERIDE_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      TRIGLYCERIDE_mean_1 <- TRIGLYCERIDE_mean_1 + as.numeric(Table_Patients$TRIGLYCERIDE_MAX_numeric[i])
      int_1 <- int_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      TRIGLYCERIDE_mean_2 <- TRIGLYCERIDE_mean_2 + as.numeric(Table_Patients$TRIGLYCERIDE_MAX_numeric[i])
      int_2 <- int_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      TRIGLYCERIDE_mean_3 <- TRIGLYCERIDE_mean_3 + as.numeric(Table_Patients$TRIGLYCERIDE_MAX_numeric[i])
      int_3 <- int_3 + 1
    } else {
      TRIGLYCERIDE_mean_missing <- TRIGLYCERIDE_mean_missing + as.numeric(Table_Patients$TRIGLYCERIDE_MAX_numeric[i])
      int_missing <- int_missing + 1
    }
  } else {next}
}


TRIGLYCERIDE_mean_1 <- TRIGLYCERIDE_mean_1 / int_1
TRIGLYCERIDE_mean_2 <- TRIGLYCERIDE_mean_2 / int_2
TRIGLYCERIDE_mean_3 <- TRIGLYCERIDE_mean_3 / int_3
TRIGLYCERIDE_mean_missing <- TRIGLYCERIDE_mean_missing / int_missing


# TRIGLYCERIDE standard deviation for different severities

TRIGLYCERIDE_standard_deviation_1 <- 0
TRIGLYCERIDE_standard_deviation_2 <- 0
TRIGLYCERIDE_standard_deviation_3 <- 0
TRIGLYCERIDE_standard_deviation_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$TRIGLYCERIDE_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      TRIGLYCERIDE_standard_deviation_1 <- TRIGLYCERIDE_standard_deviation_1 + (TRIGLYCERIDE_mean_1 - as.numeric(Table_Patients$TRIGLYCERIDE_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      TRIGLYCERIDE_standard_deviation_2 <- TRIGLYCERIDE_standard_deviation_2 + (TRIGLYCERIDE_mean_2 - as.numeric(Table_Patients$TRIGLYCERIDE_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      TRIGLYCERIDE_standard_deviation_3 <- TRIGLYCERIDE_standard_deviation_3 + (TRIGLYCERIDE_mean_3 - as.numeric(Table_Patients$TRIGLYCERIDE_MAX_numeric[i]))^2
    } else {
      TRIGLYCERIDE_standard_deviation_missing <- TRIGLYCERIDE_standard_deviation_missing + (TRIGLYCERIDE_mean_missing - as.numeric(Table_Patients$TRIGLYCERIDE_MAX_numeric[i]))^2  
    }
  }
}

TRIGLYCERIDE_standard_deviation_1 <- round(sqrt(TRIGLYCERIDE_standard_deviation_1 / (int_1-1)), digits = 2)
TRIGLYCERIDE_standard_deviation_2 <- round(sqrt(TRIGLYCERIDE_standard_deviation_2 / (int_2-1)), digits = 2)
TRIGLYCERIDE_standard_deviation_3 <- round(sqrt(TRIGLYCERIDE_standard_deviation_3 / (int_3-1)), digits = 2)
TRIGLYCERIDE_standard_deviation_missing <- round(sqrt(TRIGLYCERIDE_standard_deviation_missing / (int_missing-1)), digits = 2)

TRIGLYCERIDE_mean_1 <- round(TRIGLYCERIDE_mean_1, digits = 2)
TRIGLYCERIDE_mean_2 <- round(TRIGLYCERIDE_mean_2, digits = 2)
TRIGLYCERIDE_mean_3 <- round(TRIGLYCERIDE_mean_3, digits = 2)
TRIGLYCERIDE_mean_missing <- round(TRIGLYCERIDE_mean_missing, digits = 2)




# clean NONHDL_MAX_numeric of all non numbers

for (i in 1:nrow(Table_Patients)) {
  ifelse ((Table_Patients$NONHDL_MAX_numeric[i] == "keine" | Table_Patients$NONHDL_MAX_numeric[i] == " " | is.na(Table_Patients$NONHDL_MAX_numeric[i])),
          Table_Patients$NONHDL_MAX_numeric[i] <- 0, ifelse (Table_Patients$NONHDL_MAX_numeric[i] == ">1.1", Table_Patients$NONHDL_MAX_numeric[i] <- 1.1, next))
}


# calculate mean TRIGLYCERIDE for all the different severities

NONHDL_mean_1 <- 0
NONHDL_mean_2 <- 0
NONHDL_mean_3 <- 0
NONHDL_mean_missing <- 0

int_1 <- 0
int_2 <- 0
int_3 <- 0
int_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$NONHDL_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      NONHDL_mean_1 <- NONHDL_mean_1 + as.numeric(Table_Patients$NONHDL_MAX_numeric[i])
      int_1 <- int_1 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      NONHDL_mean_2 <- NONHDL_mean_2 + as.numeric(Table_Patients$NONHDL_MAX_numeric[i])
      int_2 <- int_2 + 1
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      NONHDL_mean_3 <- NONHDL_mean_3 + as.numeric(Table_Patients$NONHDL_MAX_numeric[i])
      int_3 <- int_3 + 1
    } else {
      NONHDL_mean_missing <- NONHDL_mean_missing + as.numeric(Table_Patients$NONHDL_MAX_numeric[i])
      int_missing <- int_missing + 1
    }
  } else {next}
}


NONHDL_mean_1 <- NONHDL_mean_1 / int_1
NONHDL_mean_2 <- NONHDL_mean_2 / int_2
NONHDL_mean_3 <- NONHDL_mean_3 / int_3
NONHDL_mean_missing <- NONHDL_mean_missing / int_missing


# NONHDL standard deviation for different severities

NONHDL_standard_deviation_1 <- 0
NONHDL_standard_deviation_2 <- 0
NONHDL_standard_deviation_3 <- 0
NONHDL_standard_deviation_missing <- 0

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$NONHDL_MAX_numeric[i] > 0){
    if (Table_Patients$HIGHEST_GROUP[i] == 1) {
      NONHDL_standard_deviation_1 <- NONHDL_standard_deviation_1 + (NONHDL_mean_1 - as.numeric(Table_Patients$NONHDL_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 2) {
      NONHDL_standard_deviation_2 <- NONHDL_standard_deviation_2 + (NONHDL_mean_2 - as.numeric(Table_Patients$NONHDL_MAX_numeric[i]))^2
    } else if (Table_Patients$HIGHEST_GROUP[i] == 3) {
      NONHDL_standard_deviation_3 <- NONHDL_standard_deviation_3 + (NONHDL_mean_3 - as.numeric(Table_Patients$NONHDL_MAX_numeric[i]))^2
    } else {
      NONHDL_standard_deviation_missing <- NONHDL_standard_deviation_missing + (NONHDL_mean_missing - as.numeric(Table_Patients$NONHDL_MAX_numeric[i]))^2  
    }
  }
}

NONHDL_standard_deviation_1 <- round(sqrt(NONHDL_standard_deviation_1 / (int_1-1)), digits = 2)
NONHDL_standard_deviation_2 <- round(sqrt(NONHDL_standard_deviation_2 / (int_2-1)), digits = 2)
NONHDL_standard_deviation_3 <- round(sqrt(NONHDL_standard_deviation_3 / (int_3-1)), digits = 2)
NONHDL_standard_deviation_missing <- round(sqrt(NONHDL_standard_deviation_missing / (int_missing-1)), digits = 2)

NONHDL_mean_1 <- round(NONHDL_mean_1, digits = 2)
NONHDL_mean_2 <- round(NONHDL_mean_2, digits = 2)
NONHDL_mean_3 <- round(NONHDL_mean_3, digits = 2)
NONHDL_mean_missing <- round(NONHDL_mean_missing, digits = 2)