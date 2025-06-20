library(readr)
library(dplyr)
library(naniar)
library(tidyverse)
library(ggcorrplot)
#library(caTools)# splitting data into training set test set
library(caret)


data_cancer <- read.csv('D:/DATA SETS/BREAST CANCER EDA.R data.csv')
data_cancer

head(data_cancer)
str(data_cancer)

# To visualize all the variables in the data fram
data_1 <- data_cancer %>%
as.data.frame() %>%  
select_if(is.numeric) %>%  
gather(key = "variable", value = "value")  
ggplot(data_1, aes(value))) +
geom_dentsity()+
  facet_wrap(~variable)
