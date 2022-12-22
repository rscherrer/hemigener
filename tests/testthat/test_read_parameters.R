root <- system.file("extdata", "sim-example", package = "hemigener")

test_that("", {

  pars <- read_parameters(root)
  expect_true(is.list(pars))
  expect_true("mutation" %in% names(pars))

})
