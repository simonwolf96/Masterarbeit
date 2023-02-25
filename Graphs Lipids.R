library(ggplot2)
library(ggpubr)
library(scales)
library(tidyverse)
library(readr)

Group_Names <- c(
  `Young` = "18-55",
  `Medium` = "56-75",
  `Old` = "75+"
)


data1 <- data.frame(categorie = Table_Patients$Alter2, value = Table_Patients$LDL_MAX_numeric)




target <- which(names(Table_Full_without) == 'Proximal')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Dist_Young = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Dist_Young')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Dist_Medium = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Dist_Medium')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Dist_Old = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Dist_Old')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Prox_Young = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Prox_Young')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Prox_Medium = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])

target <- which(names(Table_Full_without) == 'Prox_Medium')
Table_Full_without <- cbind(Table_Full_without[,1:target,drop=F], data.frame(Prox_Old = NA), Table_Full_without[,(target+1):length(Table_Full_without),drop=F])


for (i in 1:nrow(Table_Full_without)) {
  if (Table_Full_without$Proximal[i] == 1) {
    if (Table_Full_without$Alter[i] == "Young") {
      Table_Full_without$Prox_Young[i] <- "18-55"
    } else if (Table_Full_without$Alter[i] == "Medium") {
      Table_Full_without$Prox_Young[i] <- "56-75"
    } else (Table_Full_without$Prox_Young[i] <- "76+")
  
    } else if (Table_Full_without$Distal[i] == 1) {
    if (Table_Full_without$Alter[i] == "Young") {
      Table_Full_without$Dist_Young[i] <- "18-55"
    } else if (Table_Full_without$Alter[i] == "Medium") {
      Table_Full_without$Dist_Young[i] <- "56-75"
    } else (Table_Full_without$Dist_Young[i] <- "76+")
  } else {next}
}




Table_Full_without$HDL_MAX_numeric <- parse_number(Table_Full_without$HDL_MAX_numeric)
Table_Full_without$TRIGLYCERIDE_MAX_numeric <- parse_number(Table_Full_without$TRIGLYCERIDE_MAX_numeric)
Table_Full_without$NONHDL_MAX_numeric <- parse_number(Table_Full_without$NONHDL_MAX_numeric)
Table_Full_without$CHOLESTERIN_MAX_numeric <- parse_number(Table_Full_without$CHOLESTERIN_MAX_numeric)



data1 <- data.frame(categorie = Table_Full_without$Prox_Young, value = Table_Full_without$LDL_MAX_numeric)

plot1 <- (ggplot(data=subset(data1, !is.na(categorie)), aes(x=categorie, y=value))
          + geom_boxplot()
          + theme(axis.title.x=element_blank())
          + labs(y="Median LDL-C proximal vessels")
          + geom_jitter(color="black", size=0.4, alpha=0.9)
)


data2 <- data.frame(categorie = Table_Full_without$Dist_Young, value = Table_Full_without$LDL_MAX_numeric)

plot2 <- (ggplot(data=subset(data2, !is.na(categorie)), aes(x=categorie, y=value))
          + geom_boxplot()
          + theme(axis.title.x=element_blank())
          + labs(y="Median LDL-C distal vessels")
          + geom_jitter(color="black", size=0.4, alpha=0.9)
)

data3 <- data.frame(categorie = Table_Full_without$Prox_Young, value = Table_Full_without$HDL_MAX_numeric)

plot3 <- (ggplot(data=subset(data3, !is.na(categorie)), aes(x=categorie, y=value))
          + geom_boxplot()
          + theme(axis.title.x=element_blank())
          + labs(y="Median HDL-C proximal vessels")
          + geom_jitter(color="black", size=0.4, alpha=0.9)
)


data4 <- data.frame(categorie = Table_Full_without$Dist_Young, value = Table_Full_without$HDL_MAX_numeric)

plot4 <- (ggplot(data=subset(data4, !is.na(categorie)), aes(x=categorie, y=value))
          + geom_boxplot()
          + theme(axis.title.x=element_blank())
          + labs(y="Median HDL-C distal vessels")
          + geom_jitter(color="black", size=0.4, alpha=0.9)
)


data5 <- data.frame(categorie = Table_Full_without$Prox_Young, value = Table_Full_without$TRIGLYCERIDE_MAX_numeric)

plot5 <- (ggplot(data=subset(data5, !is.na(categorie)), aes(x=categorie, y=value))
          + geom_boxplot()
          + theme(axis.title.x=element_blank())
          + labs(y="Median Triglyceride proximal vessels")
          + geom_jitter(color="black", size=0.4, alpha=0.9)
)


data6 <- data.frame(categorie = Table_Full_without$Dist_Young, value = Table_Full_without$TRIGLYCERIDE_MAX_numeric)

plot6 <- (ggplot(data=subset(data6, !is.na(categorie)), aes(x=categorie, y=value))
          + geom_boxplot()
          + theme(axis.title.x=element_blank())
          + labs(y="Median Triglyceride distal vessels")
          + geom_jitter(color="black", size=0.4, alpha=0.9)
)


figure <- ggarrange(plot1, plot3, plot5, ncol = 3, nrow = 1, common.legend = FALSE)
plot(figure)

figure <- ggarrange(plot2, plot4, plot6, ncol = 3, nrow = 1, common.legend = FALSE)
plot(figure)




Table_Patients$HDL_MAX_numeric <- parse_number(Table_Patients$HDL_MAX_numeric)
Table_Patients$TRIGLYCERIDE_MAX_numeric <- parse_number(Table_Patients$TRIGLYCERIDE_MAX_numeric)
Table_Patients$NONHDL_MAX_numeric <- parse_number(Table_Patients$NONHDL_MAX_numeric)
Table_Patients$CHOLESTERIN_MAX_numeric <- parse_number(Table_Patients$CHOLESTERIN_MAX_numeric)

target <- which(names(Table_Patients) == 'Alter')
Table_Patients <- cbind(Table_Patients[,1:target,drop=F], data.frame(Alter2 = NA), Table_Patients[,(target+1):length(Table_Patients),drop=F])

for (i in 1:nrow(Table_Patients)) {
  if (Table_Patients$Alter[i] == 'Young') {
    Table_Patients$Alter2[i] <- '18-55'
  } else if (Table_Patients$Alter[i] == 'Medium') {
    Table_Patients$Alter2[i] <- '56-75'
  } else if (Table_Patients$Alter[i] == 'Old') {
    Table_Patients$Alter2[i] <- '76+'
  } else {next}
}


data7 <- data.frame(categorie = Table_Patients$Alter2, value = Table_Patients$LDL_MAX_numeric)

plot7 <- (ggplot(data=subset(data7, !is.na(categorie)), aes(x=categorie, y=value))
          + geom_boxplot()
          + theme(axis.title.x=element_blank(),
                  text=element_text(size=10,  family="Arial"))
          + labs(y="Median LDL-C per patient [mmol/l]")
          + geom_jitter(color="black", size=0.4, alpha=0.9)
)

data8 <- data.frame(categorie = Table_Patients$Alter2, value = Table_Patients$HDL_MAX_numeric)

plot8 <- (ggplot(data=subset(data8, !is.na(categorie)), aes(x=categorie, y=value))
          + geom_boxplot()
          + theme(axis.title.x=element_blank(),
                  text=element_text(size=10,  family="Arial"))
          + labs(y="Median HDL-C per patient [mmol/l]")
          + geom_jitter(color="black", size=0.4, alpha=0.9)
)

data9 <- data.frame(categorie = Table_Patients$Alter2, value = Table_Patients$TRIGLYCERIDE_MAX_numeric)

plot9 <- (ggplot(data=subset(data9, !is.na(categorie)), aes(x=categorie, y=value))
          + geom_boxplot()
          + theme(axis.title.x=element_blank(),
                  text=element_text(size=10,  family="Arial"))
          + labs(y="Median TG per patient [mmol/l]")
          + geom_jitter(color="black", size=0.4, alpha=0.9)
)


figure <- ggarrange(plot7, plot8, plot9, ncol = 3, nrow = 1, common.legend = FALSE)
plot(figure)


ggsave('Figure 4.png')

library(showtext)
library(showtextdb)
library(sysfonts)


font_add('Arial', 'arial.ttf')


windowsFonts(Arial=windowsFont("Arial"))


