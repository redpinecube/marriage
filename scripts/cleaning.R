library(tidyverse)
library(janitor)

data <- read_csv('./data/raw_data/raw_data.csv')

data <- clean_names(data) |>
  mutate(year = as.numeric(str_sub(time_period, 1, 4))) |>
  filter(year >= 2016 & year <= 2023) |>
  select(year, marriage_licenses) |>
  group_by(year) |>
  summarise(marriage_licenses = sum(marriage_licenses))

write_csv(data, './data/analysis_data/analysis_data.csv')