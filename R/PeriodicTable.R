#' Periodic Table of Elements
#'
#' The periodic table of elements as given by PubChem \insertCite{pubChemPTable;textual}{georefdatar}.
#'
#' @format A data frame with `r nrow(pte)` rows and `r ncol(pte)` columns.\cr
#' For each element the following attributes are reported:
#' `r paste(names(pte), collapse= ', ')`
#'
#' @seealso [IUPAC_StdAW] for the standard atomic weights of the elements
#' recommended by [IUPAC](https://iupac.org)
#'
#' @references{
#'   \insertRef{pubChemPTable}{georefdatar}
#'
#'   \insertRef{Kim_2020}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
#'
"pte"
