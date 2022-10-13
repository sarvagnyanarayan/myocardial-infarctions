library(ggplot2)

#grouped Ages into 7 different buckets
Myocardial <- Myocardial %>% mutate(AGE_GROUPS = case_when(AGE >= 80 ~ '80+', AGE >= 70 & AGE < 80 ~ "70s",
                                      AGE >= 60 & AGE < 70 ~ "60s",
                                      AGE >= 50 & AGE < 60 ~ "50s",
                                      AGE >= 40 & AGE < 50 ~ "40s",
                                      AGE >= 30 & AGE < 40 ~ "30s",
                                      AGE <= 30 ~ "20s")) 

#count of how many of patients observed were in each age group
Myocardial %>%
  ggplot(aes(x=AGE_GROUPS)) + geom_bar()

#visualization of Age and Sex
Myocardial %>%
  ggplot(aes(x=SEX)) + geom_bar(aes(fill = AGE_GROUPS)) + scale_x_continuous("SEX", c(0, 1))
  
                                                                             