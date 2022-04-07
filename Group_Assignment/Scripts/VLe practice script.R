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

salt_ctx_BR<-tibble::tribble(
  ~sample_id, ~Strain,   ~Salt,   ~A,  ~C, ~Dispersed,
          1L, "PS312", "NH4Br",  11L,  0L,        32L,
          2L, "PS312", "NH4Br",   9L,  1L,        40L,
          3L, "PS312", "NH4Br",  42L,  7L,       107L,
          4L, "PS312", "NH4Br",  33L,  9L,        90L,
          5L, "PS312", "NH4Br",  13L,  0L,        95L,
          6L, "PS312", "NH4Br",  28L, 11L,        47L,
          7L, "PS312", "NH4Br",  25L, 10L,        61L,
          8L, "PS312", "NH4Br",  36L, 15L,        43L,
          9L, "PS312", "NH4Br",  44L, 13L,        55L,
         10L, "PS312", "NH4Br",  18L, 11L,        34L,
         11L, "PS312", "NH4Br",  61L, 33L,        23L,
         12L, "PS312", "NH4Br",  53L, 13L,        39L,
         13L, "PS312", "NH4Br",  31L, 16L,        38L,
         14L, "PS312", "NH4Br",  36L,  6L,        36L,
         15L, "PS312", "NH4Br",  42L, 19L,        72L,
         16L, "PS312", "NH4Br",  42L, 19L,        91L,
         17L, "PS312", "NH4Br",  25L, 18L,        53L,
         18L, "PS312", "NH4Br",  68L, 29L,        91L,
         19L, "PS312", "NH4Br",  35L, 14L,       103L,
         20L, "PS312", "NH4Br",  73L, 11L,        99L,
         21L, "PS312", "NH4Br",  45L, 18L,        96L,
         22L, "PS312", "NH4Br",  37L, 28L,        19L,
         23L, "PS312", "NH4Br",  25L, 27L,        19L,
         24L, "PS312", "NH4Br",  44L, 25L,        31L,
         25L, "PS312", "NH4Br",  29L,  7L,        18L,
         26L, "PS312", "NH4Br",  26L,  5L,        10L,
         27L, "PS312", "NH4Br",  13L,  9L,        14L,
         28L, "PS312", "NH4Br",  24L,  4L,        82L,
         29L, "PS312", "NH4Br",  16L,  5L,        79L,
         30L, "PS312", "NH4Br",  40L,  9L,        81L,
         31L, "PS312", "NH4Br",  62L, 18L,       111L,
         32L, "PS312", "NH4Br",  93L, 20L,       129L,
         33L, "PS312", "NH4Br",  56L, 20L,       124L,
         34L, "PS312", "NH4Br",  23L, 13L,        25L,
         35L, "PS312", "NH4Br",  26L, 13L,        46L,
         36L, "PS312", "NH4Br",  17L, 13L,        28L,
         37L, "PS312", "NH4Br",  20L, 16L,        42L,
         38L, "PS312", "NH4Br",  26L, 41L,        43L,
         39L, "PS312", "NH4Br",  44L, 49L,        65L,
         40L, "PS312", "NH4Br",  12L,  0L,         NA,
         41L, "PS312", "NH4Br",  29L,  5L,         NA,
         42L, "PS312", "NH4Br",  27L,  3L,         NA,
         43L, "PS312", "NH4Br",  13L,  3L,         NA,
         44L, "PS312", "NH4Br",  27L,  5L,         NA,
         45L, "csu79", "NH4Br",  47L,  0L,        80L,
         46L, "csu79", "NH4Br",   7L,  3L,        87L,
         47L, "csu79", "NH4Br",  15L,  3L,        69L,
         48L, "csu79", "NH4Br",  12L,  1L,        76L,
         49L, "csu79", "NH4Br",  11L,  1L,        57L,
         50L, "csu79", "NH4Br",  15L,  0L,        23L,
         51L, "csu79", "NH4Br",  27L,  3L,        39L,
         52L, "csu79", "NH4Br",  10L,  1L,        38L,
         53L, "csu79", "NH4Br",  14L,  2L,        36L,
         54L, "csu79", "NH4Br",  17L,  1L,        72L,
         55L, "csu79", "NH4Br",  14L,  2L,        35L,
         56L, "csu79", "NH4Br",  10L,  1L,        39L,
         57L, "csu79", "NH4Br",  11L,  1L,        55L,
         58L, "csu79", "NH4Br",  14L,  2L,        54L,
         59L, "csu79", "NH4Br",  12L,  0L,        53L,
         60L, "csu79", "NH4Br",  12L,  1L,        26L,
         61L, "csu80", "NH4Br",  38L,  3L,        90L,
         62L, "csu80", "NH4Br",  89L, 17L,       117L,
         63L, "csu80", "NH4Br", 135L, 21L,       121L,
         64L, "csu80", "NH4Br", 142L, 37L,       147L,
         65L, "csu80", "NH4Br",  90L, 17L,        73L,
         66L, "csu80", "NH4Br",  74L, 19L,       130L,
         67L, "csu80", "NH4Br",  21L,  5L,        80L,
         68L, "csu80", "NH4Br",  18L, 20L,        43L,
         69L, "csu80", "NH4Br",  33L, 12L,        37L,
         70L, "csu80", "NH4Br",   2L, 10L,        37L,
         71L, "csu80", "NH4Br",  20L, 32L,        68L,
         72L, "csu80", "NH4Br",  37L, 44L,        61L,
         73L, "csu80", "NH4Br",  19L, 34L,        94L,
         74L, "csu80", "NH4Br",  27L,  4L,        50L,
         75L, "csu80", "NH4Br",  20L,  1L,        16L,
         76L, "csu80", "NH4Br",  21L,  3L,        25L,
         77L, "csu80", "NH4Br",  29L,  6L,        32L,
         78L, "csu80", "NH4Br",  25L,  1L,        21L,
         79L, "csu80", "NH4Br",  33L,  3L,        13L,
         80L, "csu80", "NH4Br",  38L,  6L,        58L,
         81L, "csu80", "NH4Br",  27L, 17L,        43L,
         82L, "csu80", "NH4Br",  24L,  6L,        34L,
         83L, "csu80", "NH4Br",  30L, 10L,        70L,
         84L, "csu80", "NH4Br",  33L,  8L,        72L,
         85L, "csu80", "NH4Br",  23L,  7L,        35L,
         86L, "csu80", "NH4Br",  26L,  7L,        30L,
         87L, "csu80", "NH4Br",  33L, 11L,        39L,
         88L, "csu80", "NH4Br",  37L, 15L,        30L,
         89L, "csu80", "NH4Br",  52L, 16L,        25L,
         90L, "csu80", "NH4Br",  46L, 18L,        33L,
         91L, "csu80", "NH4Br",  32L,  9L,        35L,
         92L, "csu80", "NH4Br",  32L, 12L,        46L,
         93L, "csu80", "NH4Br",  14L, 10L,        38L,
         94L, "csu80", "NH4Br",  18L,  7L,        32L,
         95L, "csu80", "NH4Br",  16L, 12L,        35L,
         96L, "csu80", "NH4Br",  21L,  9L,        57L,
         97L, "csu80", "NH4Br",  15L,  6L,        42L
  )
view(salt_ctx_BR)

#### testing functions ####
stats<-salt_ctx_BR %>%
  group_by(Strain) %>%
  get_summary_stats(A, C, Dispersed, type = "full")
view(stats)
# type is the type of summary statstics 
# type = common, common values for stats
# type = full, calcualtes for all descriptive stats


outliers <- salt_ctx_BR %>%
  group_by(Strain) %>%
  identify_outliers(A) 
view(outliers)
#only allows one variable name for detecting outliers
  
normality <- salt_ctx_BR %>%
  group_by(Strain) %>%
  shapiro_test(A, C, Dispersed)
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
  
test_salt <- salt_ctx_BR %>%
  group_by(Strain) %>%
  t_test(A ~ 1, mu = 0)
view(test_salt)

test_paired <- ToothGrowth %>%
  t_test(len ~ supp)
view(test_paired)

#len is a variable
#supp is at least two categories
#example above is a paired
#if unpaired, add paired = FALSE after the formula



#### tests to try out
#chisq_test()
#pairwise_chisq_gof_test()
#pairwise_chisq_test_against_p()

#anova_test()
#get_anova_test_table()
