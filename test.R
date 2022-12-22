rm(list = ls())

library(hemigener)
library(tidyverse)

theme_set(theme_classic())

root <- system.file("extdata", "sim-example", package = "hemigener")

data <- read_individual_data(root)

data %>%
  ggplot(aes(x = time, y = x)) +
  geom_point()
