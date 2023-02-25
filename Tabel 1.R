library(gtsummary)

# select values to be shown

Table1 <- select(Table_Patients, 
                 Severity, 
                 SEX, 
                 ALTER_INTERVENTION, 
                 Number_of_Interventions, 
                 CHOLESTERIN_MAX_numeric, 
                 LDL_MAX_numeric, 
                 HDL_MAX_numeric, 
                 NONHDL_MAX_numeric, 
                 TRIGLYCERIDE_MAX_numeric)

tbl <- tbl_summary(Table1, by = Severity, missing = "no", statistic = list(all_continuous() ~ "{mean} ({sd})", Number_of_Interventions ~ "{median} ({p25}, {p75})"), digits = all_continuous() ~ 2,
           label = list(ALTER_INTERVENTION ~ "Mean Age at Intervention",
                        Number_of_Interventions ~ "Median number of vessels reopened",
                        CHOLESTERIN_MAX_numeric ~ "Mean cholesterin [mmol/l]",
                        LDL_MAX_numeric ~ "Mean LDL-C [mmol/l]",
                        HDL_MAX_numeric ~ "Mean HDL-C [mmol/l]",
                        NONHDL_MAX_numeric ~ "Mean Non HDL-C [mmol/l]",
                        TRIGLYCERIDE_MAX_numeric ~ "Mean Triglyceride [mmol/l]")) %>% add_overall() %>% add_p() %>%
             as_gt(include = -cols_align) %>% gt::tab_source_note(c(gt::md("PAD-Group 1: PAD grade IIa and IIb"), gt::md("PAD-Group 2: III, IV, and diabetic foot syndrom")))


# all_continuous() ~ "{mean} ({sd})"
# 
# all_continuous() ~ "{median} ({p25}, {p75})"
# 
# 
# all_categorical() ~ "{n} ({p}%)"





tablex <- select(Table_Patients, Severity, Alter)
tbl_summary(tablex, by = Alter)


Severity <- c(36, 173, 139)
tot_pat <- c(112, 476, 368)
prop.test(Severity, tot_pat)
prop.trend.test(Severity, tot_pat)




write.csv(Table_Patients,"/Dokumente/Paper/Lipid Data/Rohdaten//Table_Patients.csv", row.names = FALSE)
