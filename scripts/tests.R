library(tidyerse)
data <- read_csv('./data/simulated_data/simulated_data.csv')

# test that the years are between 2016 and 2023 since those are the years this
# analysis is focusing on. 
test_one <- data$year >= 2016 & data$year <= 2023

# test that the number of marriages is non-negative. 
test_two <- data$num_marriages >= 0