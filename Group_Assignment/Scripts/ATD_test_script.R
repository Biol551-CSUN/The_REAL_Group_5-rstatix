###########################################################
## Exploring rstatix ######################################
## Created by: Alex Dang ##################################
## Updated on: 2022-04-04 #################################
###########################################################


## Load libraries #########################################
library(tidyverse)
library(rstatix)
library(palmerpenguins)
library(ggpubr)

## Data Analysis ##########################################
view(penguins)
view(ToothGrowth)
## descriptive stats ###
## get_summary_stats
penguins1 <- penguins %>%
  get_summary_stats(body_mass_g, type = "mean_sd")  
view(penguins1)
## identify_outliers ###
penguins2 <- penguins %>%
  group_by(island) %>%
  identify_outliers(bill_depth_mm)  
view(penguins2)
## group_by has to be a character column, identify_outliers works with a single column only
## shapiro_test
penguins3 <- penguins %>%
  shapiro_test(flipper_length_mm)
view(penguins3)

penguins4 <- penguins %>%
  shapiro_test(body_mass_g, bill_depth_mm)
view(penguins4)

## comparative means ###
## t_test
penguins5 <- penguins %>%
  t_test(body_mass_g ~ 1, mu = 0)
view(penguins5)

penguins6 <- penguins %>%
  t_test(flipper_length_mm ~ sex, paired = FALSE)
view(penguins6)

penguins7 <- penguins_clean %>%
  t_test(bill_length_mm ~ sex)
view(penguins7)
## 1 has to be a character and 1 as values, either x or y needs at least 2 variables
penguins_clean <- penguins %>%
  drop_na(sex)

ggboxplot(penguins_clean, x = "sex", y = "bill_length_mm",
          palette = "jco", facet.by = "year") +
  stat_pvalue_manual(penguins7, label = "p", y.position = 60)
## to eliminate NAs from plot, make clean data set, then make t_test data set off of clean data set, then plot