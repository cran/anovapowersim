## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, message=FALSE-----------------------------------------------------
library(anovapowersim)

## ----covariance-specification, eval=FALSE-------------------------------------
# covariance <- within_covariance(
#   sd = 1,
#   default_correlation = 0.5,
#   correlations = c(
#     "time1_condition1:time1_condition2" = 0.6,
#     "time2_condition1:time2_condition2" = 0.7
#   )
# )

## ----nonspherical-power, eval=FALSE-------------------------------------------
# power_n(
#   within = c(time = 3, condition = 2),
#   term = "time:condition",
#   target_pes = 0.14,
#   power = 0.90,
#   n_sims = 5000,
#   covariance = covariance,
#   seed = 123
# )

## ----explicit-pattern, eval=FALSE---------------------------------------------
# curve_pattern <- means_pattern(
#   time = 1, value =  1,
#   time = 2, value = -1,
#   time = 3, value = -1,
#   time = 4, value =  1
# )
# 
# level_pattern <- means_pattern(time = "time4", value = 1)

## ----direction-audit, eval=FALSE----------------------------------------------
# ar_covariance <- within_covariance(
#   sd = 1,
#   correlations = c(
#     "time1:time2" = 0.800,
#     "time1:time3" = 0.640,
#     "time1:time4" = 0.512,
#     "time2:time3" = 0.800,
#     "time2:time4" = 0.640,
#     "time3:time4" = 0.800
#   )
# )
# 
# power_achieved(
#   within = c(time = 4), term = "time", target_pes = 0.20, n = 25,
#   covariance = ar_covariance, means_pattern = curve_pattern,
#   n_sims = 10000, seed = 55
# )
# 
# power_achieved(
#   within = c(time = 4), term = "time", target_pes = 0.20, n = 25,
#   covariance = ar_covariance, means_pattern = level_pattern,
#   n_sims = 10000, seed = 55
# )

