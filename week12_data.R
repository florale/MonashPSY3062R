d <- fread("week7_dataset.csv")

# coverting categorical variables
d[, Sex := factor(
  Sex,
  levels = c(0,1),
  labels = c("Male", "Female"))]

d[, AUDITCat := as.factor(d$AUDITCat)]

# models
## linear model
ml <- lm(Variable1 ~ Variable2, data = d)

## moderation model
mod <- lm(Variable1 ~ Variable2 * Sex, data = d)

## anova model
ma <- lm(Variable1 ~ AUDITCat*Sex, data = d)
em <- emmeans(ma, c("AUDITCat", "Sex"), adjust = "bonferroni")
