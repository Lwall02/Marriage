# Purpose: Test simulated marriage data
# Author: Liam Wall
# Date: 19 September 2024
# Contact: liam.wall@mail.utoronto.ca

library(testthat)

read.csv("data/simulated_data.csv")

test_that("Correct years are included", {
  expect_equal(sort(unique(marriage_data$year)), 2000:2024)
})

test_that("No outlier values in the number of marriages", {
  expect_true(all(marriage_data$marriages >= 0))  # No negative marriages
  expect_true(all(marriage_data$marriages <= 3000)) # Arbitrary upper limit
})