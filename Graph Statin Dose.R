library(ggplot2)
library(ggpubr)
library(scales)
library(tidyverse)
library(readr)


Group_Names <- c(
  `Young` = "18-55",
  `Medium` = "56-75",
  `Old` = "76+"
)


for (i in 1:(nrow(Table_Patients))) {
  if (is.na(Table_Patients$highest_intensity[i]) == TRUE || Table_Patients$highest_intensity[i] == 0) {
    Table_Patients$highest_intensity[i] <- 1
  }
}


data1 <- data.frame(x = Table_Patients$Alter, y = Table_Patients$highest_intensity)


# df1 <- rbind(data1, data2, data3)

plot1 <- (ggplot(data=subset(data1, !is.na(x)), aes(x=y, group=x))
      + geom_bar(aes(y = ..prop.., fill = factor(..x..)), position = 'dodge', stat = 'count')
      + theme(axis.title.x=element_blank())
      + labs(y='Percentage of patients with certain statin dose')
      + facet_grid(~factor(x, levels=c("Young","Medium","Old")), labeller = as_labeller(Group_Names))
      + scale_y_continuous(labels=scales::percent, limits = c(0,1))
      + theme(axis.title.x = element_blank(),
              axis.text.x = element_blank(),
              axis.ticks.x = element_blank(),
              text=element_text(size=10,  family="Arial"))
      + scale_fill_discrete(name = "Statin Intensity", labels = c("low/medium", "high"))
)
plot(x)

ggsave('Figure 2.png')


# statin intensity for group 1

data1 <- data.frame(x = Table_Patients$Alter, y = Table_Patients$highest_intensity_2)
plot1 <- (ggplot(data=subset(data1, !is.na(x)), aes(x=y, group=x))
          + geom_bar(aes(y = ..prop.., fill = factor(..x..)), position = 'dodge', stat = 'count')
          + theme(axis.title.x=element_blank())
          + labs(y='Percentage of patients in PAD-Group 2 with certain statin dose')
          + facet_grid(~factor(x, levels=c("Young","Medium","Old")), labeller = as_labeller(Group_Names))
          + scale_y_continuous(labels=scales::percent, limits = c(0,1))
          + theme(axis.title.x = element_blank(),
                  axis.text.x = element_blank(),
                  axis.ticks.x = element_blank(),
                  text=element_text(size=10,  family="Arial"))
          + scale_fill_discrete(name = "Statin Intensity", labels = c("low/medium", "high"))
)


data1 <- data.frame(x = Table_Patients$Alter, y = Table_Patients$highest_intensity_1)
plot2 <- (ggplot(data=subset(data1, !is.na(x)), aes(x=y, group=x))
      + geom_bar(aes(y = ..prop.., fill = factor(..x..)), position = 'dodge', stat = 'count')
      + theme(axis.title.x=element_blank())
      + labs(y='Percentage of patients in PAD-Group 1 with certain statin dose')
      + facet_grid(~factor(x, levels=c("Young","Medium","Old")), labeller = as_labeller(Group_Names))
      + scale_y_continuous(labels=scales::percent, limits = c(0,1))
      + theme(axis.title.x = element_blank(),
              axis.text.x = element_blank(),
              axis.ticks.x = element_blank(),
              text=element_text(size=10,  family="Arial"))
      + scale_fill_discrete(name = "Statin Intensity", labels = c("low/medium", "high"))
)
plot(x)
ggsave('Figure 3.png')




figure <- ggarrange(plot2, plot1, ncol = 2, nrow = 1, common.legend = TRUE, legend = 'right')
plot(figure)
