## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, message=FALSE-----------------------------------------------------
library(anovapowersim)

## ----achieved-power, eval=FALSE-----------------------------------------------
# power_achieved(
#   between = c(group = 2),
#   within = c(time = 2),
#   term = "group:time",
#   target_pes = 0.14,
#   n = 20,
#   n_sims = 5000,
#   parallel = TRUE,
#   seed = 123
# )

## ----sensitivity, eval=FALSE--------------------------------------------------
# power_sensitivity(
#   between = c(group = 2),
#   within = c(time = 2),
#   term = "group:time",
#   n = 20,
#   power = 0.90,
#   n_sims = 5000,
#   pes_tol = 0.001,
#   parallel = TRUE,
#   seed = 123
# )

