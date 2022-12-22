root <- system.file("extdata", "sim-example", package = "hemigener")

test_that("Read one variable into a tibble", {

  data <- read_data(root, variables = "time")
  expect_equal(ncol(data), 1)
  expect_true("tbl" %in% class(data))

})

test_that("Read two variables", {

  data <- read_data(root, variables = c("time", "time"))
  expect_equal(ncol(data), 2)

})

test_that("Duplicate different elements different numbers of times", {

  n_time_points <- length(read_binary(paste0(root, "/time.dat")))
  ncols <- list(rep(2, n_time_points))
  data <- read_data(root, "time", ncols = ncols)
  expect_equal(nrow(data), 2 * n_time_points)

})
