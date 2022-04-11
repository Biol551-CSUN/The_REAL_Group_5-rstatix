#### Practice rstatix ####
#### Created by: Vivian Vy Le ####
#### Updated on: 2022-03-29 ####

#### load library ####
library(rstatix)
library(tidyverse)
library(ggplot2)
library(palmerpenguins)

#### load data ####
view(penguins)
view(ToothGrowth)
view(mpg)

#### testing functions ####
stats<-penguins %>%
  group_by(species) %>%
  get_summary_stats(bill_length_mm, bill_depth_mm, body_mass_g, flipper_length_mm, type = "full")
view(stats)
# type is the type of summary statstics 
# type = common, common values for stats
# type = full, calcualtes for all descriptive stats


outliers <- penguins %>%
  group_by(species) %>%
  identify_outliers(bill_length_mm)
view(outliers)
#only allows one variable name for detecting outliers
  
normality <- penguins %>%
  group_by(species) %>%
  shapiro_test(bill_length_mm, bill_depth_mm, body_mass_g, flipper_length_mm)
view(normality)

#shaprio_test() and mshapiro_test() are the same functions, can use either or

test_tooth <- ToothGrowth %>%
  t_test(len ~ 1, mu = 0)
view(test_tooth)
#one-stats t test, comparing to the normal distribution
# x ~ group
# x is a numeric variable, group is a factor with one or multiple levels
# mu = mean
  
test_pen <- penguins %>%
  t_test(flipper_length_mm ~ 1, mu = 0)
view(test_pen)
  
test_paired <- ToothGrowth %>%
  t_test(len ~ supp)
view(test_paired)

#len is a variable
#supp is at least two categories
#example above is a paired
#if unpaired, add paired = FALSE after the formula

tooth_anova <- ToothGrowth %>%
  anova_test(len ~ dose)
view(tooth_anova)

group_tooth <- ToothGrowth %>%
  group_by(supp) %>%
  anova_test(len ~ dose)
view(group_tooth)
# supp is a categorical column
# len is a variable
# dos = dosage that is fixed values between 0.5, 1.0, and 2.0

## testing anova test with penguins data
penguins_clean <- penguins %>%
  drop_na()
view(penguins_clean)

anova_pen<-penguins_clean %>%
  group_by(species) %>%
  anova_test(year ~ flipper_length_mm)
view(anova_pen)
get_anova_table(anova_pen, correction = "GG")
#can use get_anova_table to save anova data as a tibble in the console
#may need to drop NA's before using ANOVA testing



#example of two-way anova
twoanovapen <- penguins_clean %>%
  group_by(species) %>%
  anova_test(year ~ bill_length_mm*bill_depth_mm)
view(twoanovapen)
get_anova_table(twoanovapen) #calls the anova table in the console

#example of one-way anova
oneanovapens <- penguins %>%
  anova_test(year ~ flipper_length_mm)
view(oneanovapens)
#without dropping NAs, the warning message is NA detected in rows: 4272, removing this rows before the analysis

#grouped one-way anova test
group_anova <- penguins_clean %>%
  group_by(species) %>%
  anova_test(year ~ flipper_length_mm)
view(group_anova)



## plotting
penguins_clean %>%
  ggplot() +
  geom_boxplot(aes(x = year, y = bill_length_mm, fill = island)) +
  facet_wrap(~species)

## functions for the group project that worked
#get_summary_stats
#sharpio_test
#t_test()
#anova_test()
