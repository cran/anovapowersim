## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  warning = FALSE
)

## ----setup, message=FALSE-----------------------------------------------------
library(anovapowersim)

## ----two-by-two---------------------------------------------------------------
default_2x2 <- power_n_calc(
  between = c(group = 2),
  within = c(time = 2),
  term = "group:time",
  target_pes = 0.08,
  power = 0.90
)

gpower_2x2 <- power_n_calc(
  between = c(group = 2),
  within = c(time = 2),
  term = "group:time",
  target_pes = 0.08,
  power = 0.90,
  gpower = TRUE
)

c(default = default_2x2$n_needed, gpower = gpower_2x2$n_needed)

## ----four-levels--------------------------------------------------------------
default_4 <- power_n_calc(
  between = c(group = 2),
  within = c(time = 4),
  term = "group:time",
  target_pes = 0.08,
  power = 0.90
)

gpower_4 <- power_n_calc(
  between = c(group = 2),
  within = c(time = 4),
  term = "group:time",
  target_pes = 0.08,
  power = 0.90,
  gpower = TRUE
)

c(default = default_4$n_needed, gpower = gpower_4$n_needed)

