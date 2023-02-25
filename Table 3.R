# build new table
library(gtsummary)

table3_1 <- select(Table_Patients, Severity, highest_intensity_tot_table, Bezafibrat_in, Fenofibrat_in, Gemfibrozil_in, Alirocumab_in, Ezetimib_in)
tbl_summary(table3_1, by = Severity, missing = "no",
            label = list(
              highest_intensity_tot_table = "Highest Statin dose",
              #Treatment_according_Guidelines_2016_table = "Treatment according to Guildeline 2016",
              #Treatment_according_Guidelines_2019_table = "Treatment according to Guildeline 2019",
              #Ator_EZ_in = "Atorvastatin and Etzetimib",
              Bezafibrat_in = "Bezafibrat",
              Fenofibrat_in = "Fenofibrat",
              Gemfibrozil_in = "Gemfibrozil",
              #Sim_EZ_in = "Simvastatin and Ezetimib",
              Alirocumab_in = "Alirocumab",
              Ezetimib_in = "Ezetimib"
        ),) %>% add_overall()  %>% add_p() %>%
        as_gt(include = -cols_align) %>% gt::tab_source_note(c(gt::md("Severity 1: PAD grade IIa and IIb"), gt::md("Severity 2: III, IV, and diabetic foot syndrom")))


table3_2 <- select(Table_Patients, Severity, highest_intensity_tot_table, Bezafibrat_in, Fenofibrat_in, Gemfibrozil_in, Alirocumab_in, Ezetimib_in, Treatment_according_Guidelines_2016_table, Treatment_according_Guidelines_2019_table, Treatment_according_Guidelines_2016_table_low_statin_intensity, Treatment_according_Guidelines_2016_table_high_statin_intensity, Treatment_according_Guidelines_2019_table_low_statin_intensity, Treatment_according_Guidelines_2019_table_high_statin_intensity)
tbl_summary(table3_2, by = Severity, missing = "no",
            label = list(
              #highest_intensity_tot_table = "Highest Statin dose",
              Treatment_according_Guidelines_2016_table = "Treatment according to Guildeline 2016",
              Treatment_according_Guidelines_2019_table = "Treatment according to Guildeline 2019",
              Treatment_according_Guidelines_2016_table_low_statin_intensity = "Treatment according to Guildeline 2016 in Patients with low intensity Statin",
              Treatment_according_Guidelines_2016_table_high_statin_intensity = "Treatment according to Guildeline 2016 in Patients with high intensity Statin",
              Treatment_according_Guidelines_2019_table_low_statin_intensity = "Treatment according to Guildeline 2019 in Patients with low intensity Statin",
              Treatment_according_Guidelines_2019_table_high_statin_intensity = "Treatment according to Guildeline 2019 in Patients with high intensity Statin",
              #Ator_EZ_in = "Atorvastatin and Etzetimib",
              #Bezafibrat_in = "Bezafibrat",
              #Fenofibrat_in = "Fenofibrat",
              #Gemfibrozil_in = "Gemfibrozil",
              #Sim_EZ_in = "Simvastatin and Ezetimib",
              #Alirocumab_in = "Alirocumab",
              #Ezetimib_in = "Ezetimib",
              highest_intensity_tot_table = "Highest Statin dose",
              #Treatment_according_Guidelines_2016_table = "Treatment according to Guildeline 2016",
              #Treatment_according_Guidelines_2019_table = "Treatment according to Guildeline 2019",
              #Ator_EZ_in = "Atorvastatin and Etzetimib",
              Bezafibrat_in = "Bezafibrat",
              Fenofibrat_in = "Fenofibrat",
              Gemfibrozil_in = "Gemfibrozil",
              #Sim_EZ_in = "Simvastatin and Ezetimib",
              Alirocumab_in = "Alirocumab",
              Ezetimib_in = "Ezetimib"
            ),) %>% add_overall()  %>% add_p() %>%
  as_gt(include = -cols_align) %>% gt::tab_source_note(c(gt::md("PAD-Group 1: PAD grade IIa and IIb"), gt::md("PAD-Group 2: III, IV, and diabetic foot syndrom")))


Aim <- c(229, 290)
tot_pat <- c(390, 390)
prop.test(Aim, tot_pat)
prop.trend.test(Aim, tot_pat)

