# Purpose: Simulate marriage data
# Author: Liam Wall
# Date: 19 September 2024
# Contact: liam.wall@mail.utoronto.ca

library(dplyr)

set.seed(999)

years <- 2000:2024

marriage_counts <- rpois(length(years), lambda = 1000)

marriage_data <- tibble(
  year = years,
  marriages = marriage_counts
)

# write.csv(marriage_data, file = "data/simulated_data.csv")
