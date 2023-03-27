#' Isotopic rations
#'
#' A data set containing some isotopic ratios regular used in earth science
#'
#'
#' @format
#' A data frame with `r nrow(isoRatios)` rows and the following
#' `r ncol(isoRatios)` columns:\cr
#' 1. `name`  of the isotopic ratio -- twice the element symbol and mass number
#' 2. `value` it's value and
#' 3. `err`   uncertainty as given by the reference. Uncertainty may be `NA` if
#'    not stated.
#' 5. `refkey`  key to reference. Also makes the entry in this table unique if
#'    there is more than one ratio for the isotopes
#'
#' The following isotopic ratios are included:\cr
#' `r paste('* ', paste(sort(unique(isoRatios$name)), collapse='\n* '))`\cr
#'
#' Some of them are included more than once in this table because their values
#' changed over time or are still under discussion.
#'
#'
#'
#' @references{
#'   \insertRef{Steiger1977}{georefdatar}
#'
#'   \insertRef{Lee2006}{georefdatar}
#'
#'   \insertRef{Hiess2012}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
#'
"isoRatios"
