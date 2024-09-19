set.seed(25)
years <- 2016:2023
simulated_num_marriages <- rpois(8, 10)
data <- data.frame(year = years, num_marriages = simulated_num_marriages)
write_csv(data, './data/simulated_data/simulated_data.csv')