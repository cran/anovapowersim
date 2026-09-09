## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, message=FALSE-----------------------------------------------------
library(anovapowersim)

## ----required-sample-size-----------------------------------------------------
power_n_calc(
  between = c(group = 2),
  within = c(time = 2),
  term = "group:time",
  target_pes = 0.08,
  power = 0.90,
  alpha = 0.05
)

## ----achieved-power-----------------------------------------------------------
power_achieved_calc(
  between = c(group = 2),
  within = c(time = 2),
  term = "group:time",
  target_pes = 0.08,
  n = 30,
  alpha = 0.05
)

## ----sensitivity--------------------------------------------------------------
power_sensitivity_calc(
  between = c(group = 2),
  within = c(time = 2),
  term = "group:time",
  n = 30,
  power = 0.90,
  pes_tol = 0.001,
  alpha = 0.05
)

## ----epsilon------------------------------------------------------------------
power_n_calc(
  between = c(group = 2),
  within = c(time = 3),
  term = "group:time",
  target_pes = 0.08,
  power = 0.90,
  epsilon = 0.70
)

