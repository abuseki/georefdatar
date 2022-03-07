#' Periodic Table of Elements
#'
#' The periodic table of elements as given by PubChem \insertCite{pubChemPTable;textual}{georefdatar}.
#'
#' @format A data frame with `r nrow(pte)` rows and `r ncol(pte)` columns.\cr
#' For each element the following attributes are reported:
#' `r paste(names(pte), collapse= ', ')`
#'
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



#' Get the atomic mass of an element
#'
#' @param sym symbol of the element as a string
#'
#' @return Atomic mass of element with the given symbol
#'
#' @seealso [periodic table of elements][pte]
#'
#' @export
#'
#' @examples
#' m('H')
#' m('H')*2+m('O')
#'
m <- function(sym) {
  georefdatar::pte[georefdatar::pte$Symbol==sym,]$AtomicMass
}
