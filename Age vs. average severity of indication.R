# library(ggplot2)

# graphing age vs. highest_group

# data1 <- data.frame(sex = rep("M", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = Table_Patients$HIGHEST_GROUP_MALE)
# data2 <- data.frame(sex = rep("W", nrow(Table_Patients)), x = Table_Patients$ALTER_INTERVENTION, y = Table_Patients$HIGHEST_GROUP_FEMALE)
# df <- rbind(data1, data2)
# 
# x <- ggplot(df, aes(x=x, y=y, colour = sex)) + scale_x_continuous(limits = c(18, 100)) + scale_y_continuous(limits = c(0, NA))  + stat_smooth(method = "loess", formula = y ~ poly(x, 1), se = FALSE) + labs(x = "Age", y = "Average severity of indication")
# plot(x)
# 




# graphing age vs. highest_group




library(ggplot2)
library(ggpubr)
library(scales)

Group_Names <- c(
  `Young` = "18-55",
  `Medium` = "56-75",
  `Old` = "75+"
  )


data1 <- data.frame(Age_Group = rep("Young", nrow(Table_Patients)), x = Table_Patients$Young)
data2 <- data.frame(Age_Group = rep("Medium", nrow(Table_Patients)), x = Table_Patients$Medium)
data3 <- data.frame(Age_Group = rep("Old", nrow(Table_Patients)), x = Table_Patients$Old)


df1 <- rbind(data1, data2, data3)

x <- (ggplot(data=subset(df1, !is.na(x)), aes(x=x, group=Age_Group))
      + geom_bar(aes(y = ..prop.., fill = factor(..x..)), position = 'dodge', stat = 'count')
      + theme(axis.title.x=element_blank())
      + labs(y='Percentage of PTAs with given Severity')
      + facet_grid(~factor(Age_Group, levels=c("Young","Medium","Old")), labeller = as_labeller(Group_Names))
      + scale_y_continuous(labels=scales::percent, limits = c(0,1))
      + theme(axis.title.x = element_blank(),
              axis.text.x = element_blank(),
              axis.ticks.x = element_blank())
      + scale_fill_discrete(name = "Severity", labels = c("Severity 1", "Severity 2"))
)
plot(x)


