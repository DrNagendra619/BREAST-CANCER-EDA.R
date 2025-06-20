library(readr)
library(dplyr)
library(naniar)
library(tidyverse)
library(ggcorrplot)
library(caret)

data_cancer <- read.csv('D:/DATA SETS/BREAST CANCER EDA.R data.csv')
data_cancer

head(data_cancer)
str(data_cancer)

data_1 <- data_cancer %>%
  as.data.frame() %>%
  select_if(is.numeric) %>%
  gather(key = "variable", value = "value")
ggplot(data_1, aes(value)) +
  geom_density() +
  facet_wrap(~variable)

data_cancer$diagnosis <- factor(data_cancer$diagnosis, levels = c("M","B"), labels = c(0,1))

data_cancer$diagnosis <- as.character(data_cancer$diagnosis)
data_cancer$diagnosis <- as.numeric(data_cancer$diagnosis)
str(data_cancer)

data_cancer <- data_cancer %>% relocate(diagnosis,.after= fractal_dimension_worst)


r <- cor(data_cancer[,3:32])

ggcorrplot(r)

ggcorrplot(r, hc.order = TRUE, type = "lower",
           outline.col = "white",
           ggtheme = ggplot2::theme_gray,
           colors = c("#6D9EC1", "white", "#E46726"))
