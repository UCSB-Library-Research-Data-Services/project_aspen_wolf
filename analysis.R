# Analysis of Elk Browsing on Aspen
# Author: Alex
# Date: Oct 2021

library(tidyverse)
library(vegan)

# ERROR 1: Absolute Path (The "It works on my machine" error)
setwd("C:/Users/AlexLaptop/Documents/Thesis/Chapter1/Data/")

# ERROR 2: Ambiguous File Loading
# Which file is being loaded? The script says "final" but the folder has "final_v2"
data <- read.csv("data_combined_FINAL_v2.csv") 

# ERROR 3: Unclear column names
# What is 'h'? What is 'b'?
summary(data$h) 
mean(data$b)

# Plotting
barplot(data$b, names.arg = data$site, main = "Biomass")

# ERROR 4: Saving to a path that doesn't exist on student laptops
ggsave("C:/Users/AlexLaptop/Desktop/biomass_plot.png")
