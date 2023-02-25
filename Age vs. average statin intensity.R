library(ggplot2)
library(gridExtra)
library(ggpubr)




# graphing age vs. statin intensity

#data1 <- data.frame(in_out = rep("in", nrow(Table_Patients)) , x = Table_Patients$ALTER_INTERVENTION, y = as.numeric(Table_Patients$highest_intensity_in_1))
#data2 <- data.frame(in_out = rep("in", nrow(Table_Patients)) , x = Table_Patients$ALTER_INTERVENTION, y = as.numeric(Table_Patients$highest_intensity_in_2))
#data3 <- data.frame(in_out = rep("in", nrow(Table_Patients)) , x = Table_Patients$ALTER_INTERVENTION, y = as.numeric(Table_Patients$highest_intensity_in_3))

#data5 <- data.frame(in_out = rep("out", nrow(Table_Patients)) , x = Table_Patients$ALTER_INTERVENTION, y = as.numeric(Table_Patients$highest_intensity_out_1))
#data6 <- data.frame(in_out = rep("out", nrow(Table_Patients)) , x = Table_Patients$ALTER_INTERVENTION, y = as.numeric(Table_Patients$highest_intensity_out_2))
#data7 <- data.frame(in_out = rep("out", nrow(Table_Patients)) , x = Table_Patients$ALTER_INTERVENTION, y = as.numeric(Table_Patients$highest_intensity_out_3))

#df1 <- rbind(data1, data5)
#df2 <- rbind(data2, data6)
#df3 <- rbind(data3, data7)

data1 <- data.frame(severity = rep("Severity 1", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = as.numeric(Table_Patients$highest_intensity_1))
data2 <- data.frame(severity = rep("Severity 2", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = as.numeric(Table_Patients$highest_intensity_2))
data3 <- data.frame(severity = rep("Severity 3", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = as.numeric(Table_Patients$highest_intensity_3))

df1 <- rbind(data1, data2, data3)

plot1 <- (ggplot(df1, aes(x=x, y=y, colour = severity))
          + scale_x_continuous(limits = c(18, 100))
          + scale_y_continuous(labels=scales::percent, limits = c(0, 1))
          + stat_smooth(method = "loess", se = FALSE, span = 1)
          + labs(x = "Age", y = "Probability of highest dosage statin Therapy", colour = "Severity"))

plot(plot1)

#plot1 <- ggplot(df1, aes(x=x, y=y, colour = in_out)) + scale_x_continuous(limits = c(18, 100)) + scale_y_continuous(limits = c(0, NA))  + stat_smooth(method = "loess", se = FALSE) + labs(x = "Age", y = "Average statin intensity", colour = "In/Out") + ggtitle("Severity 1") + theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none")
#plot2 <- ggplot(df2, aes(x=x, y=y, colour = in_out)) + scale_x_continuous(limits = c(18, 100)) + scale_y_continuous(limits = c(0, NA))  + stat_smooth(method = "loess", se = FALSE) + labs(x = "Age", y = "Average statin intensity", colour = "In/Out") + ggtitle("Severity 2") + theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none")
#plot3 <- ggplot(df3, aes(x=x, y=y, colour = in_out)) + scale_x_continuous(limits = c(18, 100)) + scale_y_continuous(limits = c(0, NA))  + stat_smooth(method = "loess", se = FALSE) + labs(x = "Age", y = "Average statin intensity", colour = "In/Out") + ggtitle("Severity 3") + theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none")

#ggarrange(plot1, plot2, plot3, ncol = 3, nrow = 1, common.legend = TRUE, legend = "right")

