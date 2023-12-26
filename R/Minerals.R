#' List of Minerals
#'
#' [International Mineralogical Association (IMA)](https://mineralogy-ima.org/)
#' Commission on New Minerals, Nomenclature and Classification (CNMNC)
#' approved list of minerals, names and abbreviations
#' \insertCite{Warr_2021}{georefdatar}.\cr
#' Retrieved from [RRUFF](https://rruff.info/)
#' \insertCite{Lafuente_2015}{georefdatar}.
#'
#' @format A data frame with `r nrow(mins)` minerals and their names, symbols
#' (abbreviations) and chemistry.\cr
#' `r paste(names(mins), collapse= ', ')`
#'
#' @seealso
#'   [IMA approved minerals on RRUFF](https://rruff.info/ima/)
#'
#'   [IMA–CNMNC approved mineral symbols](https://rruff.info/rruff_1.0/uploads/MM85_291.pdf), \insertCite{Warr_2021}{georefdatar}
#'
#' @references{
#'   \insertRef{Lafuente_2015}{georefdatar}
#'
#'   \insertRef{Warr_2021}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
#'
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
  res <- base::unique(c(
    base::grep(pattern, georefdatar::mins$Symbol, ignore.case = ignore.case),
    base::grep(pattern, georefdatar::mins$Name, ignore.case = ignore.case)
  ))

  georefdatar::mins[res, ]
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
  georefdatar::mins[base::grep(pattern, georefdatar::mins$Chemistry, ignore.case = ignore.case), ]
}
