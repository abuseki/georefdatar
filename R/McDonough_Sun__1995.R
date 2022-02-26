#' Chondrite
#'
#' A data set containing the composition of the _CI_ chondrite as given by \insertCite{McDonough_1995;textual}{georefdatar}
#'
#' In the original work the concentrations of most of the major elements are given in
#' wt% and the concentrations of Nb and following are given in ppb.\cr
#' For the sake of clarity these values where converted to ppm. So all values
#' given here are in ppm.\cr
#' This conversion was done using:
#' *  `ppm= wt% * 10000`
#' *  `ppm= ppb / 1000`
#'
#' @format A data frame with 1 row and `r ncol(CI__McDonough_Sun__1995)` element concentrations in ppm:\cr
#' `r paste(names(CI__McDonough_Sun__1995), collapse= ', ')`
#'
#'
#'
#' @references{
#'   \insertRef{McDonough_1995}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
"CI__McDonough_Sun__1995"

#' Pyrolite
#'
#' A data set containing the _recommended chemical composition of the of the Silicate Earth-''Pyrolite''_ as given by \insertCite{McDonough_1995;textual}{georefdatar}
#'
#' @format A data frame with 1 row and `r ncol(Pyrolite__McDonough_Sun__1995)` element concentrations in ppm:\cr
#' `r paste(names(Pyrolite__McDonough_Sun__1995), collapse= ', ')`
#'
#' In the article the concentrations of most of the major elements are given in
#' wt% and the concentrations of Nb and following are given in ppb.\cr
#' For the sake of clarity these values where converted to ppm: So all values
#' given here are in ppm.\cr
#' This conversion was done using:
#' *  `ppm= wt% * 10000`
#' *  `ppm= ppb / 1000`
#'
#'
#' @references{
#'   \insertRef{McDonough_1995}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
"Pyrolite__McDonough_Sun__1995"
