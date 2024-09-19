# Purpose: Clean downloaded marriage data
# Author: Liam Wall
# Date: 19 September 2024
# Contact: liam.wall@mail.utoronto.ca

library(tidyverse)
library(lubridate)
library(janitor)

raw_marriage_data <- read.csv("data/raw_marriage_data.csv")

clean_marriage_data <- raw_marriage_data |>
  janitor::clean_names() 

clean_marriage_data <- clean_marriage_data |>
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))

# write_csv(clean_marriage_data, file = "data/clean_marriage_data.csv")

clean_marriage_data |>
  ggplot(aes(x = date, y = marriage_licenses, color = civic_centre)) +
  geom_point()

