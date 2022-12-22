root <- system.file("extdata", "sim-example", package = "hemigener")

test_that("Read individual data", {

  data <- read_individual_data(root)
  expect_equal(ncol(data), 2)
  expect_true(all(names(data) == c("time", "x")))

})
