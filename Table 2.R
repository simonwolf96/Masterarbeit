library(gtsummary)


Table2_1 <- select(Table_Full_without, Severity, LTL, PTEE, Stent, Stentgraf, Atherektomie, DrugCoatedPTA, DES)
tbl_summary(Table2_1, by = Severity, missing = 'no',
            label = list(
              LTL ~ "local thrombolysis",
              PTEE ~ "percutaneous transluminal thromboembolectomy",
              DES ~ "Drug-Eluting Stent",
              DrugCoatedPTA ~ "Drug Coated PTA"
            )) %>% add_overall()  %>% add_p() %>%
            as_gt(include = -cols_align) %>% gt::tab_source_note(c(gt::md("Severity 1: PAD grade IIa and IIb"), gt::md("Severity 2: III, IV, and diabetic foot syndrom")))
  

# Table2_2 <- select(Table_Full_without, Severity, Tibialis_Anterior, Tibialis_Posterior, Fibularis, Truncus_Tibiofibularis, Distal)
# tbl_summary(Table2_2, by = Severity, missing = 'no') %>% add_overall()  %>%   add_n() %>%
#   as_gt(include = -cols_align) %>% gt::tab_source_note(c(gt::md("Severity 1: PAD grade IIa and IIb"), gt::md("Severity 2: III, IV and diabetic foot syndrom"), gt::md("Severity 3: ALI")))


Table2_2 <- select(Table_Full_without, Severity, Tibialis_Anterior, Tibialis_Posterior, Fibularis, Truncus_Tibiofibularis, Distal, Vessel_Missing)
tbl_summary(Table2_2, by = Severity, missing = 'no', statistic = list(all_categorical() ~ "{n} ({p}%)"),
            label = list(
              Tibialis_Anterior ~ "A. Tibialis Anterior",
              Tibialis_Posterior ~ "A. Tibialis Posterior",
              Fibularis ~ "A. Fibularis",
              Truncus_Tibiofibularis ~ "Truncus Tibiofibularis",
              Distal ~ "Total Distal Arteries"
            )) %>% add_overall()  %>% add_p() %>%
  as_gt(include = -cols_align) %>% gt::tab_source_note(c(gt::md("Severity 1: PAD grade IIa and IIb"), gt::md("Severity 2: III, IV, and diabetic foot syndrom")))



Table2_3 <- select(Table_Full_without, Severity, Severity, LTL, PTEE, Stent, Stentgraf, Atherektomie, DrugCoatedPTA, DES, Tibialis_Anterior, Tibialis_Posterior, Fibularis, Truncus_Tibiofibularis, Femoralis_Communis, Femoralis_Superficialis, Femoralis_Profundus, Iliaca_Communis, Iliaca_Externa, Iliaca_Interna, Poplitea, Proximal, Distal, Vessel_Missing)
tbl_summary(Table2_3, by = Severity, missing = 'no', statistic = list(all_categorical() ~ "{n} ({p}%)"),
            label = list(
              Femoralis_Communis ~ "A. Femoralis Communis",
              Femoralis_Superficialis ~ "A. Femoralis Superficialis",
              Femoralis_Profundus ~ "A. Femoralis Profundus",
              Iliaca_Communis ~ "A. Iliaca Communis",
              Iliaca_Externa ~ "A. Iliaca Externa",
              Iliaca_Interna ~ "A. Iliaca Interna",
              Poplitea ~ "A. Poplitea",
              Proximal ~ "Total Proximal Ateries",
              Tibialis_Anterior ~ "A. Tibialis Anterior",
              Tibialis_Posterior ~ "A. Tibialis Posterior",
              Fibularis ~ "A. Fibularis",
              Truncus_Tibiofibularis ~ "Truncus Tibiofibularis",
              Distal ~ "Total Distal Arteries",
              Vessel_Missing ~ "No Vessel recorded",
              LTL ~ "local thrombolysis",
              PTEE ~ "percutaneous transluminal thromboembolectomy",
              DES ~ "Drug-Eluting Stent",
              DrugCoatedPTA ~ "Drug Coated PTA",
              Stentgraf ~ "Stentgraft"
            )) %>% add_overall()  %>% add_p() %>%
  as_gt(include = -cols_align) %>% gt::tab_source_note(c(gt::md("PAD-Group 1: PAD grade IIa and IIb"), gt::md("PAD-Group 2: III, IV, and diabetic foot syndrom")))



tabley <- select(Table_Full_without, Alter, Distal)
tbl_summary(tabley, by = Alter)


Distal <- c(44, 304, 284)
tot_pat <- c(272, 1609, 1221)
prop.test(Distal, tot_pat)
prop.trend.test(Distal, tot_pat)



















