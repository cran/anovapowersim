## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, message=FALSE-----------------------------------------------------
library(anovapowersim)

## ----unbalanced-design, eval=FALSE--------------------------------------------
# unbalanced_design <- cell_design(
#   group = "control",   time = "pre",  n = 22, m = 10.0,
#   group = "control",   time = "post", n = 22, m = 11.0,
#   group = "treatment", time = "pre",  n = 31, m = 10.1,
#   group = "treatment", time = "post", n = 31, m = 12.4,
#   within = "time"
# )

## ----unbalanced-default-fill, eval=FALSE--------------------------------------
# cell_design(
#   group = "control",   time = "pre",  n = 22, m = 10.0,
#   group = "control",   time = "post", n = 22, m = 11.0,
#   group = "treatment", time = "pre",  n = 31, m = 10.1,
#   within = "time",
#   default_n = 31, default_m = 12.4
# )

## ----unbalanced-power, eval=FALSE---------------------------------------------
# power_unbalanced(
#   design = unbalanced_design,
#   term = "group:time",
#   covariance = unbalanced_covariance(
#     sd = 2,
#     default_correlation = 0.5,
#     correlations = c("pre:post" = 0.7)
#   ),
#   n_sims = 5000,
#   parallel = TRUE,
#   seed = 123
# )

## ----unbalanced-multi-within, eval=FALSE--------------------------------------
# multi_within_design <- cell_design(
#   group = "A", time = "pre",  cond = "control", n = 10, m = 0.0,
#   group = "A", time = "pre",  cond = "treat",   n = 10, m = 0.5,
#   group = "A", time = "post", cond = "control", n = 10, m = 0.2,
#   group = "A", time = "post", cond = "treat",   n = 10, m = 1.0,
#   group = "B", time = "pre",  cond = "control", n = 15, m = 0.0,
#   group = "B", time = "pre",  cond = "treat",   n = 15, m = 0.6,
#   group = "B", time = "post", cond = "control", n = 15, m = 0.3,
#   group = "B", time = "post", cond = "treat",   n = 15, m = 1.4,
#   within = c("time", "cond")
# )
# 
# power_unbalanced(
#   design = multi_within_design,
#   term = "group:time:cond",
#   covariance = unbalanced_covariance(
#     correlations = c("pre_control:post_control" = 0.6)
#   ),
#   n_sims = 5000,
#   seed = 123
# )

