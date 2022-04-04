###########################################################
## Exploring rstatix ######################################
## Created by: Alex Dang ##################################
## Updated on: 2022-04-04 #################################
###########################################################


## Load libraries #########################################
library(tidyverse)
library(rstatix)
library(palmerpenguins)


## Data Analysis ##########################################
view(penguins) 
 ## descriptive stats ###
    ## get_summary_stats
penguins1 <- penguins %>% 
  get_summary_stats(body_mass_g, type = "mean_sd")    ## work!
view(penguins1)
    ## identify_outliers ###
penguins2 <- penguins %>% 
  group_by(bill_depth_mm) %>% 
  identify_outliers(bill_depth_mm)   ## does not work like this 
view(penguins2)

penguins3 <- penguins %>% 
  identify_outliers(body_mass_g, variable = NULL)  ## does  not work like this 
view(penguins3)
## identify_outliers needs: subset columns with a valid subscript vector


