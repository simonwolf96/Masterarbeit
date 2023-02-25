# find out if IIa or IIb

target <- which(names(Table_Full) == 'IND_RECHTS')
Table_Full <- cbind(Table_Full[,1:target,drop=F], data.frame(GROUP_1 = 0), Table_Full[,(target+1):length(Table_Full),drop=F])

for (i in 1:nrow(Table_Full)){
  ifelse((Table_Full$IND_LINKS[i] == "IIa" | Table_Full$IND_LINKS[i] == "IIb" | Table_Full$IND_LINKS[i] == "IIkompliziert" | Table_Full$IND_LINKS[i] == "IIb|CLI" | Table_Full$IND_LINKS[i] == "Ikompliziert|CLI" | Table_Full$IND_LINKS[i] == "IIb|Bypass" | Table_Full$IND_LINKS[i] == "IIa|IIb" |  Table_Full$IND_LINKS[i] == "IIa|Bypass" | Table_Full$IND_LINKS[i] == "IIkompliziert|Bypass" | Table_Full$IND_LINKS[i] == "IIkompliziert|CLI" | Table_Full$IND_LINKS[i] == "IIkompliziert|ALI" | Table_Full$IND_LINKS[i] == "IIb|IIkompliziert" | Table_Full$IND_LINKS[i] == "IIb|IIkompliziert" | 
        Table_Full$IND_RECHTS[i] == "IIa" | Table_Full$IND_RECHTS[i] == "IIb" | Table_Full$IND_RECHTS[i] == "IIkompliziert" | Table_Full$IND_RECHTS[i] == "IIb|CLI" | Table_Full$IND_RECHTS[i] == "Ikompliziert|CLI" | Table_Full$IND_RECHTS[i] == "IIb|Bypass" | Table_Full$IND_RECHTS[i] == "IIa|IIb" | Table_Full$IND_RECHTS[i] == "IIa|Bypass" | Table_Full$IND_RECHTS[i] == "IIkompliziert|Bypass" | Table_Full$IND_RECHTS[i] == "IIkompliziert|CLI" | Table_Full$IND_RECHTS[i] == "IIkompliziert|ALI" | Table_Full$IND_RECHTS[i] == "IIb|IIkompliziertX" | Table_Full$IND_RECHTS[i] == "IIb|IIkompliziert"),
        Table_Full$GROUP_1[i] <- 1, Table_Full$GROUP_1[i] <- 0)
}



# find out if III, IV or DiabetischesFusssyndrom

target <- which(names(Table_Full) == 'GROUP_1')
Table_Full <- cbind(Table_Full[,1:target,drop=F], data.frame(GROUP_2 = 0), Table_Full[,(target+1):length(Table_Full),drop=F])

for (i in 1:nrow(Table_Full)){
  ifelse ((Table_Full$IND_LINKS[i] == "III" | Table_Full$IND_LINKS[i] == "IV" | Table_Full$IND_LINKS[i] == "IV|CLI" | Table_Full$IND_LINKS[i] == "CLI" | Table_Full$IND_LINKS[i] == "DiabetischesFusssyndrom" | Table_Full$IND_LINKS[i] == "IV|DiabetischesFusssynd" | Table_Full$IND_LINKS[i] == "CLI|DiabetischesFusssyn" | Table_Full$IND_LINKS[i] == "IIkompliziert|Diabetisc" | Table_Full$IND_LINKS[i] == "III|CLI" | Table_Full$IND_LINKS[i] == "IIb|DiabetischesFusssyn" | Table_Full$IND_LINKS[i] == "IIkompliziert|Diabetisc" | Table_Full$IND_LINKS[i] == "IIb|III" | Table_Full$IND_LINKS[i] == "IV|DiabetischesFusssyndrom" | Table_Full$IND_LINKS[i] == "IIkompliziert|DiabetischesF" | Table_Full$IND_LINKS[i] == "III|CLI|Bypass" | Table_Full$IND_LINKS[i] == "III|Bypass" |Table_Full$IND_LINKS[i] == "IV|Bypass" | Table_Full$IND_LINKS[i] == "CLI|DiabetischesFusssyndrom" | Table_Full$IND_LINKS[i] == "IV|DiabetischesFusssyndrom|" | Table_Full$IND_LINKS[i] == "IIb|IV" | Table_Full$IND_LINKS[i] == "IIb|III|Bypass" | Table_Full$IND_LINKS[i] == "Bypass|IV" | 
      Table_Full$IND_RECHTS[i] == "III" | Table_Full$IND_RECHTS[i] == "IV" | Table_Full$IND_RECHTS[i] == "IV|CLI" | Table_Full$IND_RECHTS[i] == "CLI" | Table_Full$IND_RECHTS[i] == "DiabetischesFusssyndrom" | Table_Full$IND_RECHTS[i] == "IV|DiabetischesFusssynd" | Table_Full$IND_RECHTS[i] == "CLI|DiabetischesFusssyn" | Table_Full$IND_RECHTS[i] == "IIkompliziert|Diabetisc" | Table_Full$IND_RECHTS[i] == "III|CLI" | Table_Full$IND_RECHTS[i] == "IIb|DiabetischesFusssyn" | Table_Full$IND_RECHTS[i] == "IIkompliziert|Diabetisc" | Table_Full$IND_RECHTS[i] == "IIb|III" | Table_Full$IND_RECHTS[i] == "IV|DiabetischesFusssyndrom" | Table_Full$IND_RECHTS[i] == "IIkompliziert|DiabetischesF" | Table_Full$IND_RECHTS[i] == "III|CLI|Bypass" | Table_Full$IND_RECHTS[i] == "III|Bypass" | Table_Full$IND_RECHTS[i] == "IV|Bypass" | Table_Full$IND_RECHTS[i] == "CLI|DiabetischesFusssyndrom" | Table_Full$IND_RECHTS[i] == "IV|DiabetischesFusssyndrom|" | Table_Full$IND_RECHTS[i] == "IIb|IV" | Table_Full$IND_RECHTS[i] == "IIb|III|Bypass" | Table_Full$IND_RECHTS[i] == "Bypass|IV"  |
        Table_Full$IND_LINKS[i] == "ALI" | Table_Full$IND_LINKS[i] == "ALI|Bypass" | Table_Full$IND_LINKS[i] == "IIb|ALI" | Table_Full$IND_LINKS[i] == "IV|ALI" | Table_Full$IND_LINKS[i] == "CLI|ALI" |Table_Full$IND_LINKS[i] == "III|ALI" | Table_Full$IND_LINKS[i] == "ALI|DiabetischesFusssyndrom" | Table_Full$IND_LINKS[i] == "CLI|ALI|DiabetischesFus" | Table_Full$IND_LINKS[i] == "ALI|DiabetischesFusssyn" | Table_Full$IND_LINKS[i] == "IV|CLI|ALI"  | Table_Full$IND_LINKS[i] == "IIb|III|ALI" | Table_Full$IND_LINKS[i] == "III|ALI|Bypass" |
        Table_Full$IND_RECHTS[i] == "ALI" | Table_Full$IND_RECHTS[i] == "ALI|Bypass" | Table_Full$IND_RECHTS[i] == "IIb|ALI" | Table_Full$IND_RECHTS[i] == "IV|ALI" | Table_Full$IND_RECHTS[i] == "CLI|ALI"| Table_Full$IND_RECHTS[i] == "III|ALI" | Table_Full$IND_RECHTS[i] == "ALI|DiabetischesFusssyndrom" | Table_Full$IND_RECHTS[i] == "CLI|ALI|DiabetischesFus" | Table_Full$IND_RECHTS[i] == "ALI|DiabetischesFusssyn" | Table_Full$IND_RECHTS[i] == "IV|CLI|ALI" | Table_Full$IND_RECHTS[i] == "IIb|III|ALI" | Table_Full$IND_RECHTS[i] == "III|ALI|Bypass"),
      Table_Full$GROUP_2[i] <- 1, Table_Full$GROUP_2[i] <- 0)
}


# find out if ALI

#target <- which(names(Table_Full) == 'GROUP_2')
#Table_Full <- cbind(Table_Full[,1:target,drop=F], data.frame(GROUP_3 = 0), Table_Full[,(target+1):length(Table_Full),drop=F])

#for (i in 1:nrow(Table_Full)){
#  ifelse ((Table_Full$IND_LINKS[i] == "ALI" | Table_Full$IND_LINKS[i] == "ALI|Bypass" | Table_Full$IND_LINKS[i] == "IIb|ALI" | Table_Full$IND_LINKS[i] == "IV|ALI" | Table_Full$IND_LINKS[i] == "CLI|ALI" |Table_Full$IND_LINKS[i] == "III|ALI" | Table_Full$IND_LINKS[i] == "ALI|DiabetischesFusssyndrom" | Table_Full$IND_LINKS[i] == "CLI|ALI|DiabetischesFus" | Table_Full$IND_LINKS[i] == "ALI|DiabetischesFusssyn" | Table_Full$IND_LINKS[i] == "IV|CLI|ALI"  | Table_Full$IND_LINKS[i] == "IIb|III|ALI" | Table_Full$IND_LINKS[i] == "III|ALI|Bypass" |
#      Table_Full$IND_RECHTS[i] == "ALI" | Table_Full$IND_RECHTS[i] == "ALI|Bypass" | Table_Full$IND_RECHTS[i] == "IIb|ALI" | Table_Full$IND_RECHTS[i] == "IV|ALI" | Table_Full$IND_RECHTS[i] == "CLI|ALI"| Table_Full$IND_RECHTS[i] == "III|ALI" | Table_Full$IND_RECHTS[i] == "ALI|DiabetischesFusssyndrom" | Table_Full$IND_RECHTS[i] == "CLI|ALI|DiabetischesFus" | Table_Full$IND_RECHTS[i] == "ALI|DiabetischesFusssyn" | Table_Full$IND_RECHTS[i] == "IV|CLI|ALI" | Table_Full$IND_RECHTS[i] == "IIb|III|ALI" | Table_Full$IND_RECHTS[i] == "III|ALI|Bypass"), 
#      Table_Full$GROUP_3[i] <- 1, Table_Full$GROUP_3[i] <- 0)
#}


# find out which is the highest

target <- which(names(Table_Full) == 'GROUP_2')
Table_Full <- cbind(Table_Full[,1:target,drop=F], data.frame(HIGHEST_GROUP = 0), Table_Full[,(target+1):length(Table_Full),drop=F])



for (i in 1:nrow(Table_Full)){
  if (Table_Full$GROUP_2[i] == 1) {
    Table_Full$HIGHEST_GROUP[i] <- 2
  } else if (Table_Full$GROUP_1[i] == 1) {
    Table_Full$HIGHEST_GROUP[i] <- 1
  } else {next}
}



#for (i in 1:nrow(Table_Full)){
#  if (Table_Full$GROUP_3[i] == 1) {
#    Table_Full$HIGHEST_GROUP[i] <- 3
#  } else if (Table_Full$GROUP_2[i] == 1) {
#    Table_Full$HIGHEST_GROUP[i] <- 2
#  } else if (Table_Full$GROUP_1[i] == 1) {
#    Table_Full$HIGHEST_GROUP[i] <- 1
#  } else {next}
#}


# # highest_group by sex
# 
# target <- which(names(Table_Full) == 'HIGHEST_GROUP')
# Table_Full <- cbind(Table_Full[,1:target,drop=F], data.frame(HIGHEST_GROUP_MALE = NA), Table_Full[,(target+1):length(Table_Full),drop=F])
# 
# target <- which(names(Table_Full) == 'HIGHEST_GROUP_MALE')
# Table_Full <- cbind(Table_Full[,1:target,drop=F], data.frame(HIGHEST_GROUP_FEMALE = NA), Table_Full[,(target+1):length(Table_Full),drop=F])
# 
# for (i in 1:nrow(Table_Full)) {
#   if (Table_Full$SEX[i] == "M") {
#     Table_Full$HIGHEST_GROUP_MALE[i] <- Table_Full$HIGHEST_GROUP[i]
#   } else {Table_Full$HIGHEST_GROUP_FEMALE[i] <- Table_Full$HIGHEST_GROUP[i]}
# }






# # same but for Table_Truncated --> same same but different, not needed
# 
# 
# # find out if IIa or IIb
# 
# target <- which(names(Table_Truncated) == 'IND_RECHTS')
# Table_Truncated <- cbind(Table_Truncated[,1:target,drop=F], data.frame(GROUP_1 = 0), Table_Truncated[,(target+1):length(Table_Truncated),drop=F])
# 
# for (i in 1:nrow(Table_Truncated)){
#   ifelse((Table_Truncated$IND_LINKS[i] == "IIa" | Table_Truncated$IND_LINKS[i] == "IIb" | Table_Truncated$IND_LINKS[i] == "IIkompliziert" | Table_Truncated$IND_LINKS[i] == "IIb|CLI" | Table_Truncated$IND_LINKS[i] == "Ikompliziert|CLI" | Table_Truncated$IND_LINKS[i] == "IIb|Bypass" | Table_Truncated$IND_LINKS[i] == "IIa|IIb" |  Table_Truncated$IND_LINKS[i] == "IIa|Bypass" | Table_Truncated$IND_LINKS[i] == "IIkompliziert|Bypass" | Table_Truncated$IND_LINKS[i] == "IIkompliziert|CLI" | Table_Truncated$IND_LINKS[i] == "IIkompliziert|ALI" | Table_Truncated$IND_LINKS[i] == "IIb|IIkompliziert" | Table_Truncated$IND_LINKS[i] == "IIb|IIkompliziert" | 
#             Table_Truncated$IND_RECHTS[i] == "IIa" | Table_Truncated$IND_RECHTS[i] == "IIb" | Table_Truncated$IND_RECHTS[i] == "IIkompliziert" | Table_Truncated$IND_RECHTS[i] == "IIb|CLI" | Table_Truncated$IND_RECHTS[i] == "Ikompliziert|CLI" | Table_Truncated$IND_RECHTS[i] == "IIb|Bypass" | Table_Truncated$IND_RECHTS[i] == "IIa|IIb" | Table_Truncated$IND_RECHTS[i] == "IIa|Bypass" | Table_Truncated$IND_RECHTS[i] == "IIkompliziert|Bypass" | Table_Truncated$IND_RECHTS[i] == "IIkompliziert|CLI" | Table_Truncated$IND_RECHTS[i] == "IIkompliziert|ALI" | Table_Truncated$IND_RECHTS[i] == "IIb|IIkompliziertX" | Table_Truncated$IND_RECHTS[i] == "IIb|IIkompliziert"),
#          Table_Truncated$GROUP_1[i] <- 1, Table_Truncated$GROUP_1[i] <- 0)
# }
# 
# 
# 
# # find out if III, IV or DiabetischesFusssyndrom
# 
# target <- which(names(Table_Truncated) == 'GROUP_1')
# Table_Truncated <- cbind(Table_Truncated[,1:target,drop=F], data.frame(GROUP_2 = 0), Table_Truncated[,(target+1):length(Table_Truncated),drop=F])
# 
# for (i in 1:nrow(Table_Truncated)){
#   ifelse ((Table_Truncated$IND_LINKS[i] == "III" | Table_Truncated$IND_LINKS[i] == "IV" | Table_Truncated$IND_LINKS[i] == "IV|CLI" | Table_Truncated$IND_LINKS[i] == "CLI" | Table_Truncated$IND_LINKS[i] == "DiabetischesFusssyndrom" | Table_Truncated$IND_LINKS[i] == "IV|DiabetischesFusssynd" | Table_Truncated$IND_LINKS[i] == "CLI|DiabetischesFusssyn" | Table_Truncated$IND_LINKS[i] == "IIkompliziert|Diabetisc" | Table_Truncated$IND_LINKS[i] == "III|CLI" | Table_Truncated$IND_LINKS[i] == "IIb|DiabetischesFusssyn" | Table_Truncated$IND_LINKS[i] == "IIkompliziert|Diabetisc" | Table_Truncated$IND_LINKS[i] == "IIb|III" | Table_Truncated$IND_LINKS[i] == "IV|DiabetischesFusssyndrom" | Table_Truncated$IND_LINKS[i] == "IIkompliziert|DiabetischesF" | Table_Truncated$IND_LINKS[i] == "III|CLI|Bypass" | Table_Truncated$IND_LINKS[i] == "III|Bypass" |Table_Truncated$IND_LINKS[i] == "IV|Bypass" | Table_Truncated$IND_LINKS[i] == "CLI|DiabetischesFusssyndrom" | Table_Truncated$IND_LINKS[i] == "IV|DiabetischesFusssyndrom|" | Table_Truncated$IND_LINKS[i] == "IIb|IV" | Table_Truncated$IND_LINKS[i] == "IIb|III|Bypass" | Table_Truncated$IND_LINKS[i] == "Bypass|IV" | 
#              Table_Truncated$IND_RECHTS[i] == "III" | Table_Truncated$IND_RECHTS[i] == "IV" | Table_Truncated$IND_RECHTS[i] == "IV|CLI" | Table_Truncated$IND_RECHTS[i] == "CLI" | Table_Truncated$IND_RECHTS[i] == "DiabetischesFusssyndrom" | Table_Truncated$IND_RECHTS[i] == "IV|DiabetischesFusssynd" | Table_Truncated$IND_RECHTS[i] == "CLI|DiabetischesFusssyn" | Table_Truncated$IND_RECHTS[i] == "IIkompliziert|Diabetisc" | Table_Truncated$IND_RECHTS[i] == "III|CLI" | Table_Truncated$IND_RECHTS[i] == "IIb|DiabetischesFusssyn" | Table_Truncated$IND_RECHTS[i] == "IIkompliziert|Diabetisc" | Table_Truncated$IND_RECHTS[i] == "IIb|III" | Table_Truncated$IND_RECHTS[i] == "IV|DiabetischesFusssyndrom" | Table_Truncated$IND_RECHTS[i] == "IIkompliziert|DiabetischesF" | Table_Truncated$IND_RECHTS[i] == "III|CLI|Bypass" | Table_Truncated$IND_RECHTS[i] == "III|Bypass" | Table_Truncated$IND_RECHTS[i] == "IV|Bypass" | Table_Truncated$IND_RECHTS[i] == "CLI|DiabetischesFusssyndrom" | Table_Truncated$IND_RECHTS[i] == "IV|DiabetischesFusssyndrom|" | Table_Truncated$IND_RECHTS[i] == "IIb|IV" | Table_Truncated$IND_RECHTS[i] == "IIb|III|Bypass" | Table_Truncated$IND_RECHTS[i] == "Bypass|IV"),
#           Table_Truncated$GROUP_2[i] <- 1, Table_Truncated$GROUP_2[i] <- 0)
# }
# 
# 
# # find out if ALI
# 
# target <- which(names(Table_Truncated) == 'GROUP_2')
# Table_Truncated <- cbind(Table_Truncated[,1:target,drop=F], data.frame(GROUP_3 = 0), Table_Truncated[,(target+1):length(Table_Truncated),drop=F])
# 
# for (i in 1:nrow(Table_Truncated)){
#   ifelse ((Table_Truncated$IND_LINKS[i] == "ALI" | Table_Truncated$IND_LINKS[i] == "ALI|Bypass" | Table_Truncated$IND_LINKS[i] == "IIb|ALI" | Table_Truncated$IND_LINKS[i] == "IV|ALI" | Table_Truncated$IND_LINKS[i] == "CLI|ALI" |Table_Truncated$IND_LINKS[i] == "III|ALI" | Table_Truncated$IND_LINKS[i] == "ALI|DiabetischesFusssyndrom" | Table_Truncated$IND_LINKS[i] == "CLI|ALI|DiabetischesFus" | Table_Truncated$IND_LINKS[i] == "ALI|DiabetischesFusssyn" | Table_Truncated$IND_LINKS[i] == "IV|CLI|ALI"  | Table_Truncated$IND_LINKS[i] == "IIb|III|ALI" | Table_Truncated$IND_LINKS[i] == "III|ALI|Bypass" |
#              Table_Truncated$IND_RECHTS[i] == "ALI" | Table_Truncated$IND_RECHTS[i] == "ALI|Bypass" | Table_Truncated$IND_RECHTS[i] == "IIb|ALI" | Table_Truncated$IND_RECHTS[i] == "IV|ALI" | Table_Truncated$IND_RECHTS[i] == "CLI|ALI"| Table_Truncated$IND_RECHTS[i] == "III|ALI" | Table_Truncated$IND_RECHTS[i] == "ALI|DiabetischesFusssyndrom" | Table_Truncated$IND_RECHTS[i] == "CLI|ALI|DiabetischesFus" | Table_Truncated$IND_RECHTS[i] == "ALI|DiabetischesFusssyn" | Table_Truncated$IND_RECHTS[i] == "IV|CLI|ALI" | Table_Truncated$IND_RECHTS[i] == "IIb|III|ALI" | Table_Truncated$IND_RECHTS[i] == "III|ALI|Bypass"), 
#           Table_Truncated$GROUP_3[i] <- 1, Table_Truncated$GROUP_3[i] <- 0)
# }
# 
# 
# # find out which is the highest
# 
# target <- which(names(Table_Truncated) == 'GROUP_3')
# Table_Truncated <- cbind(Table_Truncated[,1:target,drop=F], data.frame(HIGHEST_GROUP = 0), Table_Truncated[,(target+1):length(Table_Truncated),drop=F])
# 
# 
# for (i in 1:nrow(Table_Truncated)){
#   ifelse ((Table_Truncated$GROUP_1[i] == 1 & Table_Truncated$GROUP_2[i] == 0 & Table_Truncated$GROUP_3[i] == 0), Table_Truncated$HIGHEST_GROUP[i] <- 1,
#           ifelse ((Table_Truncated$GROUP_2[i] == 1 & !Table_Truncated$GROUP_3[i] == 1), Table_Truncated$HIGHEST_GROUP[i] <- 2,
#                   ifelse((Table_Truncated$GROUP_3[i] == 1), Table_Truncated$HIGHEST_GROUP[i] <- 3, Table_Truncated$HIGHEST_GROUP[i] <- 0 )))
# }
# 
# 
# # highest_group by sex
# 
# target <- which(names(Table_Truncated) == 'HIGHEST_GROUP')
# Table_Truncated <- cbind(Table_Truncated[,1:target,drop=F], data.frame(HIGHEST_GROUP_MALE = NA), Table_Truncated[,(target+1):length(Table_Truncated),drop=F])
# 
# target <- which(names(Table_Truncated) == 'HIGHEST_GROUP_MALE')
# Table_Truncated <- cbind(Table_Truncated[,1:target,drop=F], data.frame(HIGHEST_GROUP_FEMALE = NA), Table_Truncated[,(target+1):length(Table_Truncated),drop=F])
# 
# for (i in 1:nrow(Table_Truncated)) {
#   if (Table_Truncated$SEX[i] == "M") {
#     Table_Truncated$HIGHEST_GROUP_MALE[i] <- Table_Truncated$HIGHEST_GROUP[i]
#   } else {Table_Truncated$HIGHEST_GROUP_FEMALE[i] <- Table_Truncated$HIGHEST_GROUP[i]}
# }