# Get the percentages of PTAs performed for each Groups 1, 2 and 3
# as well as break it down by gender

# amount of PTA in male and in female

PTA <- 0

for (i in 1:nrow(Table_Full)) {
  if (Table_Full$PTA[i] == 1) {
    PTA <- PTA + 1
  } else {next}
}

# Percentage of PTA in Group 1

number_of_PTA_1 <- 0


for (i in 1:nrow(Table_Full)){
  if (Table_Full$PTA[i] == 1 && Table_Full$HIGHEST_GROUP[i] == 1) {
      number_of_PTA_1 <- number_of_PTA_1 + 1
  } else {next}
}

number_of_PTA_1_percentage <- round(number_of_PTA_1 / PTA * 100, digits = 1)



# Percentage of PTA in Group 2

number_of_PTA_2 <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$PTA[i] == 1 && Table_Full$HIGHEST_GROUP[i] == 2){
    number_of_PTA_2 <- number_of_PTA_2 + 1
  } else {next}
}

number_of_PTA_2_percentage <- round(number_of_PTA_2 / PTA * 100, digits = 1)


# Percentage of PTA in Group 3

number_of_PTA_3 <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$PTA[i] == 1 && Table_Full$HIGHEST_GROUP[i] == 3){
      number_of_PTA_3 <- number_of_PTA_3 + 1
  } else {next}
}

number_of_PTA_3_percentage <- round(number_of_PTA_3 / PTA * 100, digits = 1)



# Percentage of PTA in missing

number_of_PTA_missing <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$PTA[i] == 1 && Table_Full$HIGHEST_GROUP[i] == 0){
    number_of_PTA_missing <- number_of_PTA_missing + 1
  } else {next}
}

number_of_PTA_missing_percentage <- round(number_of_PTA_missing / PTA * 100, digits = 1)


# Number and Percentage of missing PTA

number_of_no_PTA <- 0

for (i in 1:nrow(Table_Full)){
  if (Table_Full$PTA[i] == 0){
    number_of_no_PTA <- number_of_no_PTA + 1
  } else {next}
}

number_of_no_PTA_percentage <- round(number_of_no_PTA / PTA * 100, digits = 1)

