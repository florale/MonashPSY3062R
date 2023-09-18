### This is a template for your research report analysis using R ###
## Always start with opening R project!
## Notes: Delete any lines you don't use, so you don't get an error

# Packages -----------------------------------------------------------------------------------------

library(data.table)
library(psych)
library(car)
library(ggplot2)
library(JWileymisc)
library(extraoperators)
library(visreg)
library(lm.beta)
library(olsrr)
library(corrplot)

# Data (Week 1/2) ----------------------------------------------------------------------------------
## Load dataset
d <- fread(" Put your file path to the PSY3062 dataset here")

## Inspect dataset
str(d)

## Get variable names which you can use for subsetting
names(d)

## Subset to only keep variables of interest (Week 2)
## This should include all items that will be used to score your final variables (sum, average, etc.,)
## Notes: data.table doesn't require "" to specify variable names
## If you plan to report descriptive statistics, 
## remember to include demographic variables in the new dataset too.
d <- d[, .(item1, item2, item3, item4)]

## Subset to remove participants with missing data using complete.cases() or !is.na() (Week 2)
d <- 
  
# Scoring (Week 2/3/4) -------------------------------------------------------------------------------
## Replace X with your own data
## Your variables should be either total score or average, not both
### Predictor 1
d[, XX_Total := rowMeans(.SD, na.rm = TRUE) * X,
  .SDcols = c("", "", "")]

d[, XX := rowMeans(.SD, na.rm = TRUE),
  .SDcols = c("", "", "")]

### Predictor 2
d[, XX_Total := rowMeans(.SD, na.rm = TRUE) * X,
  .SDcols = c("", "", "")]

d[, XX := rowMeans(.SD, na.rm = TRUE),
  .SDcols = c("", "", "")]

### Outcome
d[, XX_Total := rowMeans(.SD, na.rm = TRUE) * X,
  .SDcols = c("", "", "")]

d[, XX := rowMeans(.SD, na.rm = TRUE),
  .SDcols = c("", "", "")]

## Calculating T-scores if applicable
## Go to the conversion chart to get raw and t-score
## and make vectors using those values 
T_score <- c()
Raw_score <- c()

## Calculate T-score by replacing "XX_Total" with your variable's total score
## and "XX_Tscore" with a new name for the new t-score variable
d[, XX_Tscore := T_score[match(XX_Total, Raw_score)]]

## Cronbach's alpha for reliability using individual items and pysch::alpha()
## Remember to add argument check.keys = TRUE


# Assumptions (Week 5 and 7) -----------------------------------------------------------------------
## Normality

## Linearity

## Normality of Residuals

## Homoscedascity

## Multicollinearity

# Descriptive Stats (Week 6) -----------------------------------------------------------------------
## using egltable() 


# Main analyses (Week 6-11)----------------------------------------------------------------------
## Use lm() for regression or anova() for ANOVA

m <- lm()
m <- anova()

## Summarise model output using summary()

## Get 95% CI using confint()

## Get standardised using lm.beta()

## Present your results in a table using APAStyler(modelTest())
