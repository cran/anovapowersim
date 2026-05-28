## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7,
  fig.height = 4
)

## ----setup, message=FALSE-----------------------------------------------------
library(anovapowersim)

## ----load-precomputed-results, include=FALSE----------------------------------
vignette_results_path <- system.file(
  "extdata",
  "anovapowersim-vignette-results.rds",
  package = "anovapowersim"
)
if (!nzchar(vignette_results_path)) {
  vignette_results_path <- file.path(
    "..",
    "inst",
    "extdata",
    "anovapowersim-vignette-results.rds"
  )
}
vignette_results <- readRDS(vignette_results_path)

## ----adaptive-code, eval=FALSE------------------------------------------------
# power_n(
#   between = c(cond = 2), # cond has 2 levels
#   within = c(stim = 4), # stim has 4 levels
#   term = "cond:stim",
#   target_pes = 0.14,
#   alpha = 0.05,
#   power = 0.80,
#   n_sims = 1000, # use 5000+ for a more precise estimate
#   seed = 123 # for reproducibility
# )

## ----adaptive-output, echo=FALSE----------------------------------------------
vignette_results$adaptive

## ----complex, eval=FALSE------------------------------------------------------
# power_n(
#   between = c(cond = 2, age = 3), # cond has 2 levels, age has 3 levels
#   within = c(stim = 4), # stim has 4 levels
#   term = "cond:stim:age",
#   target_pes = 0.14,
#   alpha = 0.05,
#   power = 0.80,
#   n_sims = 1000, # use 5000+ for a more precise estimate
#   seed = 123 # for reproducibility
# )

## ----curve-fixed-code, eval=FALSE---------------------------------------------
# pc <- power_curve(
#   between = c(cond = 2),
#   within = c(stim = 2),
#   term = "cond:stim",
#   target_pes = 0.14,
#   n_range = c(16, 20, 23, 28), # n per between-subject cell
#   n_sims = 1000,
#   seed = 123
# )
# pc

## ----curve-fixed-output, echo=FALSE-------------------------------------------
pc <- vignette_results$curve
pc

## ----plot-fixed, echo=FALSE---------------------------------------------------
plot_power_curve(
  pc,
  power_lines = c(.80, .90) # adds horizontal lines at 80% and 90% power
)

## ----parallel, eval=FALSE-----------------------------------------------------
# power_curve(
#   between = c(cond = 2),
#   within = c(stim = 2),
#   term = "cond:stim",
#   target_pes = 0.14,
#   n_range = c(16, 20, 23, 28),
#   n_sims = 5000,
#   parallel = TRUE,
#   cores = 4,
#   seed = 123
# )

## ----gpower-adaptive-code, eval=FALSE-----------------------------------------
# power_n(
#   between = c(cond = 2),
#   within = c(stim = 4),
#   term = "cond:stim",
#   target_pes = 0.14,
#   alpha = 0.05,
#   power = 0.80,
#   n_sims = 1000,
#   seed = 123,
#   gpower = TRUE
# )

## ----gpower-adaptive-output, echo=FALSE---------------------------------------
vignette_results$gpower_adaptive

