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



#' Find minerals by their names or symbols
#'
#' Searches for [minerals][mins] by their names and symbols using a
#' [regular expression][base::regex]. By default cases are ignored.
#'
#' @param pattern     regular expression for the mineral to search
#' @param ignore.case switch case insensitivity on (default) or off
#'
#' @return data.frame of [minerals][mins] where the given pattern matches.
#'
#' @seealso [List of minerals][mins], [minsForChemistry()]
#'
#' @export
#'
#' @examples
#' minSearch('alm')
#' minSearch('Pyh$', ignore.case = FALSE)
#'
minSearch <- function(pattern, ignore.case= TRUE) {
  res <- unique(c(
    grep(pattern, mins$Symbol, ignore.case = ignore.case),
    grep(pattern, mins$Name, ignore.case = ignore.case)
  ))

  mins[res, ]
}



#' Find minerals by their chemistry
#'
#' Searches for [minerals][mins] by their chemistry using a
#' [regular expression][base::regex].
#'
#' @param pattern     regular expression for the chemistry
#' @param ignore.case switch case insensitivity on or off (default)
#'
#' @return data.frame of [minerals][mins] where the given pattern matches.
#'
#' @seealso [List of minerals][mins], [minSearch()]
#'
#' @export
#'
#' @examples
#' minsForChemistry('Mn.*\\(SiO4\\)$')
#'
minsForChemistry <- function(pattern, ignore.case= FALSE) {
  mins[grep(pattern, mins$Chemistry, ignore.case = ignore.case), ]
}
