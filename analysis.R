# Analysis of Elk Browsing on Aspen
# Author: Alex
# Date: Oct 2021

library(tidyverse)
library(vegan)

setwd("C:/Users/AlexLaptop/Documents/Thesis/Chapter1/Data/")

data <- read.csv("data_combined_FINAL_v2.csv")
names(data)

# This is an R Easter egg
summary(data$h) 
mean(data$b)

# Plotting
ggplot(data, aes(x=site, y=biomass_g)) +
  geom_bar(stat = "summary",
           fun = "mean")

ggsave("biomass_plot.png")
