#' Read individual data
#'
#' This function is a wrapper around \code{read_data} tailored at reading the
#' output file "individuals.dat" into a tibble with one row per individual and
#' individual attributes (e.g. traits) in columns, properly
#' renamed.
#'
#' @param root Path to the simulation folder
#'
#' @return A tibble
#'
#' @seealso \code{read_data}
#'
#' @examples
#'
#' root <- system.file("extdata", "sim-example", package = "hemigener")
#' read_individual_data(root)
#'
#'@export

read_individual_data <- function(root) {

  # Read the data and split them into the corresponding columns
  data <- read_data(root, variables = "individuals", ncols = 1)

  # Read time points
  timepoints <- read_binary(paste0(root, "/time.dat"))

  # Read population size
  popsize <- read_parameters(root)$popsize

  tibble::tibble(
    time = rep(timepoints, each = popsize),
    x = data[[1]]
  )

}
