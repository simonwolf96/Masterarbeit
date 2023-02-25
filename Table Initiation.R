# initiation by importing data and creating a truncated table

# import .csv file

Table_Full <- read.csv2("Kopie von FINAL_ANG_hgtab_angkat_vrl_lab_BAUFR_SPSS_6.csv")

# generation of truncated table in which each patient only appears once
# initiation of truncated table
# 
# Table_Truncated <- Table_Full[1, 1:ncol(Table_Full)]
# target <- 1
# 
# 
# # compare the patient numbers and append if not there yet
# 
# for (i in 2:nrow(Table_Full)) {
#    if (Table_Full$ï..PATNR[i] != Table_Full$ï..PATNR[i-1]) {
#    Table_Truncated <- rbind(Table_Truncated[1:target, 1:ncol(Table_Full), drop=F], Table_Full[i, 1:ncol(Table_Full)])
#    target <- target + 1
#   } else { next }
# }
# 
# 
# # generation of truncated table in which for each patient and each date one row is added
# # initiation of truncated table
# 
# 
# Table_by_Date <- Table_Full[1, 1:ncol(Table_Full)]
# target <- 1
# 
# 
# # compare the patient numbers and the Date as well as append if not there yet
# 
# for (i in 2:nrow(Table_Full)) {
#   if (Table_Full$KATBERDAT_A[i] != Table_Full$KATBERDAT_A[i-1]){
#     Table_by_Date <- rbind(Table_by_Date[1:target, 1:ncol(Table_Full), drop=F], Table_Full[i, 1:ncol(Table_Full)])
#     target <- target + 1
#   } else if (Table_Full$KATBERDAT_A[i] == Table_Full$KATBERDAT_A[i-1] && Table_Full$ï..PATNR[i] != Table_Full$ï..PATNR[i-1]){
#     Table_by_Date <- rbind(Table_by_Date[1:target, 1:ncol(Table_Full), drop=F], Table_Full[i, 1:ncol(Table_Full)])
#     target <- target + 1
#   }
# }
