#' Decay constants
#'
#' A data set containing some decay constants regular used in earth science and geochronology.
#'
#'
#' @format
#' A data frame with `r nrow(decayConstants)` rows and the following
#' `r ncol(decayConstants)` columns:\cr
#' 1. `name`  of the radioactive isotope -- element symbol and mass number
#' 2. `value` it's value and
#' 3. `err`   uncertainty as given by the reference. Uncertainty may be `NA` if not stated.
#' 4. `unit`    of the decay -- usually per year (y), in some cases per day (d)
#' 5. `refkey`  key to reference. Also makes the entry in this table unique if there is more than one decay constant per isotope
#'
#' The following decay constants are included:\cr
#' `r paste('* ', paste(sort(unique(decayConstants$name)), collapse='\n* '))`\cr
#'
#' Some of them are included more than once in this table because their values
#' changed over time.
#'
#'
#'
#' @references{
#'   \insertRef{Stoenner1965}{georefdatar}
#'
#'   \insertRef{Steiger1977}{georefdatar}
#'
#'   \insertRef{Renne2001}{georefdatar}
#'
#'   \insertRef{Renne2011}{georefdatar}
#'
#'   \insertRef{Villa2015}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
#'
"decayConstants"
