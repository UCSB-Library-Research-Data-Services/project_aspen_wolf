# Analysis of Elk Browsing on Aspen
# Author: Alex
# Date: Oct 2021

library(tidyverse)
library(vegan)

setwd("C:/Users/AlexLaptop/Documents/Thesis/Chapter1/Data/")

data <- read.csv("data_combined_FINAL_v2.csv")
names(data)

summary(data$h) 
mean(data$b)

# Plotting
barplot(data$b, names.arg = data$site, main = "Biomass")

ggsave("C:/Users/AlexLaptop/Desktop/biomass_plot.png")
