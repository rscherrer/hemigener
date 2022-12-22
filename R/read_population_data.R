#' Read population data
#'
#' This function is a wrapper around \code{read_data} tailored at reading the
#' output file "traitmean.dat" into a tibble with one row per
#' time point.
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
#' read_trait_mean_data(root)
#'
#'@export

read_population_data <- function(root) {

  # Read the data and split them into the corresponding columns
  data <- read_data(root, variables = "traitmean", ncols = 1)

  timepoints <- read_binary(paste0(root, "/time.dat"))
  traitmeans <- read_binary(paste0(root, "/traitmean.dat"))

  tibble(
    time = timepoints,
    x = traimeans
  )

  return(data)

}
