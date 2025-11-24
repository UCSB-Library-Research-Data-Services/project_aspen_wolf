library(tidyverse)

data19 <- read.csv("data_2019.csv", sep = "\t")
data_2020 <- read_csv("data_2020new.csv")
names(data19) <- names(data_2020) 


all_data <- rbind(data19, data_2020)

write_csv(all_data, "data_combined_FINAL_v2.csv")
