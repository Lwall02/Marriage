# Purpose: Download marriage data
# Author: Liam Wall
# Date: 19 September 2024
# Contact: liam.wall@mail.utoronto.ca


raw_marriage_data <- read.csv(url("https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/e28bc818-43d5-43f7-b5d9-bdfb4eda5feb/resource/01dff98a-b56b-4237-bb5d-f56319f0ced6/download/Marriage%20Licence%20Statistics%20Data.csv"))

# write.csv(raw_marriage_data, file = "data/raw_marriage_data.csv")
