#' ALL_MORB
#'
#' A data set containing the composition of mid-ocean ridge basalts (MORB) as given and defined by \insertCite{gale2013mean;textual}{georefdatar}
#'
#' This data contains he composition of MORB defined as _ALL MORB_ which is ''the total composition of the crust apart from back-arc basins''.
#'
#' @format A data frame with 1 row and `r ncol(ALL_MORB__GALE__2013)` element concentrations:\cr
#' `r paste(names(ALL_MORB__GALE__2013), collapse= ', ')`
#'
#'
#'
#' @references{
#'   \insertRef{gale2013mean}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
"ALL_MORB__GALE__2013"

#' BAB
#'
#' A data set containing the composition of back-arc basin basalts as given by \insertCite{gale2013mean;textual}{georefdatar}
#'
#' @format A data frame with 1 row and `r ncol(BAB__GALE__2013)` element concentrations:\cr
#' `r paste(names(BAB__GALE__2013), collapse= ', ')`
#'
#' In the article the concentrations ...
#'
#'
#' @references{
#'   \insertRef{gale2013mean}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
"BAB__GALE__2013"
