# The REAL Group 5: rstatix

## BIOL 551 Computer Modeling Group Project

### Group 5 members: Sophia Boyd, Brandon Bonilla, Alex Dang, Vivian Vy Le

### Created on: 2022-03-29

For our group project, we are using the [rstatix package](https://github.com/kassambara/rstatix).

**Introduction to rstatix:**

-   rstatix, in association with 'tidyverse', provides a simple and pipe-friendly foundation for anyone looking to perform statistical tests in R. The package allows user to compute a variety of effect size metrics for plots in functions such as, ANOVA and t-test. Users are also able to conduct comparisons between single or multiple variables simutaneously in identifing outliers, analyzing normality, and assessing variance. In addition to rstatix, 'ggpubr' was also used for t-test plotting. Ultimately, the package provides convienence and organization to users interested in using R for statistical data analysis.

**Group Subfolder Components:**

-   [Data:](https://github.com/Biol551-CSUN/The_REAL_Group_5-rstatix/tree/main/Group_Assignment/Data) Palmerpenguin dataset used
-   [Output:](https://github.com/Biol551-CSUN/The_REAL_Group_5-rstatix/tree/main/Group_Assignment/Output) T-test plot images
-   [Scripts:](https://github.com/Biol551-CSUN/The_REAL_Group_5-rstatix/tree/main/Group_Assignment/Scripts) RMarkdown and HTML scripts used

**Functions Reviewed:**

-   **get_summary_stats():** Summary statistics is gathered to summarize and acquire information from the given data set.
-   **identify_outliers():** Allows one to identify data outliers of a single variable at a time.
-   **shapiro_test():** Examines if a variable is normally distributed in a population via p value.
-   **t_test():** Used to determine significant differences (p value) between the means of two group.
-   **cohens_d():** Compute the effect size for a given t-test.
-   **anova_test():** Used to compare means between two or more independent groups.
-   **cor_test():** Correlation test between two or more variables

**Further information:**

-   [t-test in R](https://www.datanovia.com/en/lessons/t-test-in-r/)
-   [How to plot p-values in R](https://www.r-bloggers.com/2017/06/add-p-values-and-significance-levels-to-ggplots/)
-   [One-way ANOVA Test in R](http://www.sthda.com/english/wiki/one-way-anova-test-in-r)
-   [Understanding ANOVA](https://bookdown.org/steve_midway/DAR/understanding-anova-in-r.html)

**Group Contributions:**

-   **Brandon Bonilla:** Identify Outliers, Shapiro Test, & README
-   **Sophia Boyd:** Summary Statistics & t-test Effect Size
-   **Alex Dang:** t-test & t-test Plotting
-   **Vivian Vy Le:** ANOVA & Correlation Test
