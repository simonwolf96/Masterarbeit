library(ggplot2)
library(gridExtra)
library(ggpubr)



# create data.frame with additional info year
data1 <- data.frame(year = rep("2016", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = Table_Patients$LDL_level_2016_1)
data2 <- data.frame(year = rep("2016", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = Table_Patients$LDL_level_2016_2)
data3 <- data.frame(year = rep("2016", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = Table_Patients$LDL_level_2016_3)

data5 <- data.frame(year = rep("2019", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = Table_Patients$LDL_level_2019_1)
data6 <- data.frame(year = rep("2019", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = Table_Patients$LDL_level_2019_2)
data7 <- data.frame(year = rep("2019", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = Table_Patients$LDL_level_2019_3)

df1 <- rbind(data1, data5)
df2 <- rbind(data2, data6)
df3 <- rbind(data3, data7)

# plot for colour dependent on year
plot1 <- (ggplot(df1, aes(x=x, y=y, colour = year))
          + scale_x_continuous(limits = c(18, 100))
          + scale_y_continuous(labels=scales::percent, limits = c(0, 1))
          + stat_smooth(method = "loess", se = FALSE, span = 1)
          + labs(x = "Age", y = "Percentage of patients with low enough LDL-C Levels")
          + ggtitle("Severity 1") + theme(plot.title = element_text(hjust = 0.5)))

plot2 <- (ggplot(df2, aes(x=x, y=y, colour = year))
          + scale_x_continuous(limits = c(18, 100))
          + scale_y_continuous(labels=scales::percent, limits = c(0, 1))
          + stat_smooth(method = "loess", se = FALSE, span = 1)
          + labs(x = "Age", y = "Percentage of patients with low enough LDL-C Levels")
          + ggtitle("Severity 2") + theme(plot.title = element_text(hjust = 0.5)))

plot3 <- (ggplot(df3, aes(x=x, y=y, colour = year))
          + scale_x_continuous(limits = c(18, 100))
          + scale_y_continuous(labels=scales::percent, limits = c(0, 1))
          + stat_smooth(method = "loess", se = FALSE, span = 1)
          + labs(x = "Age", y = "Percentage of patients with low enough LDL-C Levels")
          + ggtitle("Severity 3") + theme(plot.title = element_text(hjust = 0.5)))

figure <- ggarrange(plot1, plot2, plot3, ncol = 3, nrow = 1, common.legend = TRUE, legend = "right")
plot(figure)

