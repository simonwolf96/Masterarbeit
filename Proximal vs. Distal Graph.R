library(ggplot2)
library(ggpubr)


data1 <- data.frame(Prox_Dist = rep("Distal", nrow(Table_Full_without)), Age = Table_Full_without$Alter, x = Table_Full_without$Distal_Severity)
data2 <- data.frame(Prox_Dist = rep("Proximal", nrow(Table_Full_without)), Age = Table_Full_without$Alter, x = Table_Full_without$Proximal_Severity)

df1 <- rbind(data1, data2)


Names <- c(
  `Young` = "18-55",
  `Medium` = "56-75",
  `Old` = "75+",
  `Proximal` = "Proximal Arteries",
  `Distal` = "Distal Arteries",
  `Severity 1` = "Severity 1",
  `Severity 2` = "Severity 2",
  `Severity 3` = "Severity 3"
)


# 
# x <- (ggplot(data=subset(df1, !is.na(x)), aes(x=x, group=Prox_Dist))
#     + geom_bar(aes(y = ..prop.., fill = factor(..x..)), position = 'dodge', stat = 'count')
#     + theme(axis.title.x=element_blank())
#     + labs(y='Percentage of PTAs with given Severity')
#     + facet_grid(factor(Age, levels = c("Young","Medium","Old"))~factor(Prox_Dist, levels = c("Proximal", "Distal")), labeller = as_labeller(Names))
#     + scale_y_continuous(labels=scales::percent, limits = c(0,1))
#     + theme(legend.position = 'none')
# )
# plot(x)




data3 <- data.frame(Age = Table_Full_without$Alter, x = Table_Full_without$Artery_Severity)

# more proximal than distal attention with labels

x <- (ggplot(data=subset(data3, !is.na(x)), aes(x=x, group=Age))
      + geom_bar(aes(y = ..prop.., fill = factor(..x..)), position = 'dodge', stat = 'count')
      + theme(axis.title.x=element_blank())
      + labs(y='Percentage of total vessels treated')
      + facet_grid(~factor(Age, levels = c("Young","Medium","Old")), labeller = as_labeller(Names))
      + scale_y_continuous(labels=scales::percent, limits = c(0,1))
      + theme(axis.title.x = element_blank(),
              axis.text.x = element_blank(),
              axis.ticks.x = element_blank())
      + scale_fill_discrete(name = "Proximal/Distal", labels = c("Proximal", "Distal"))
)
plot(x)






