#'List of Minerals
#'
#'[International Mineralogical Association (IMA)](https://mineralogy-ima.org/)
#'Commission on New Minerals, Nomenclature and Classification (CNMNC) approved
#'list of minerals, names and abbreviations \insertCite{Warr_2021}{georefdatar}.
#'
#'This list is based on the supplementary material of
#'\insertCite{Warr_2021;textual}{georefdatar}. Some minor harmonizations have
#'been made in this list as some inconsistencies were found. In addition to
#'minerals, this list also includes groups such as amphibole, biotite, pyroxene
#'... and their abbreviations.\cr The list has the following attributes:
#' * `Symbol`: IMA symbol/abbreviation
#' * `Name`: IMA name of the mineral
#' * `Formula`: IMA mineral formula
#' * `IMA Status`:
#'   * _A_: Approved
#'   * _G_: Grandfathered
#'   * _GROUP_: Name of a group of mineral species
#'   * _Rd_: Redefined
#'   * _Rn_: Renamed
#'   * _Q_: Questioned
#'   * _I_: Informal
#'   * _NL_: Not listed
#'
#'An up-to-date list of IMA approved minerals can be downloaded from
#'[RRUFF](https://rruff.info/) \insertCite{Lafuente_2015}{georefdatar}. However,
#'this list only includes minerals and not groups.\cr
#'
#'
#'@format A data frame with `r nrow(mins)` minerals with the following columns:
#'  `r paste(colnames(mins), collapse= ', ')`.
#'
#'@seealso [IMA–CNMNC approved mineral symbols: Paper and supplementary
#'  material](https://doi.org/10.1180/mgm.2021.43),
#'  \insertCite{Warr_2021}{georefdatar}
#'
#'  [IMA approved minerals on RRUFF](https://rruff.info/ima/)
#'
#'@references \insertRef{Warr_2021}{georefdatar}
#'
#'  \insertRef{Lafuente_2015}{georefdatar}
#'
#'@importFrom Rdpack reprompt
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
  georefdatar::mins[base::grep(pattern, georefdatar::mins$Formula, ignore.case = ignore.case), ]
}
