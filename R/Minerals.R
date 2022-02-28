#' List of Minerals
#'
#' IMA approved list of minerals. Retrieved from _RRUFF_ \insertCite{Lafuente_2015;textual}{georefdatar}.
#'
#' @format A data frame with `r nrow(mins)` minerals and their names, symbols and chemistry.\cr
#' `r paste(names(mins), collapse= ', ')`
#'
#'
#' @references{
#'   \insertRef{Lafuente_2015}{georefdatar}
#'
#'   \insertRef{Warr_2021}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
"mins"



#' Get information for a minerals
#'
#' @param sym Symbol of the mineral as a string
#'
#' @return Information for a mineral with symbol `sym`
#' @export
#'
#' @seealso [List of minerals][mins]
#' @examples
#' minInfo('Ms')
minInfo <- function(sym) {
  subset(mins, Symbol==sym)
}
