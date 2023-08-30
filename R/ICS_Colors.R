#' The CGMW ICS color codes
#'
#' A data set containing the color codes used by the
#' International Chronostratigraphic Chart by the
#' International Commission on Stratigraphy (ICS)
#' \insertCite{Cohen2013}{georefdatar}.
#' The coloring in this chart follows the
#' Commission for the Geological Map of the World (CGMW)
#' \insertCite{Vrielynck2022}{georefdatar}.
#'
#' @format
#' A data frame with `r nrow(ICS_Colors)` rows and the following
#' `r ncol(ICS_Colors)` columns:\cr
#' 1. `standard sorting order`  ICS' ordering of this entry
#' 2. `Long List (isc:)`        Entries name prefixed by `ics:`
#' 3. `Long List (formatted)`   The (common) name of entry, e.g. 'Holocene'
#' 4. `Rank`                    Is the entry a System, Series, Stage, ...
#' 5. `Cyan`                    CMYK colors
#' 6. `Magenta`
#' 7. `Yellow`
#' 8. `Black`
#' 9. `Red`                     RGB colors
#' 10. `Green`
#' 11. `Blue`
#'
#'
#' @references{
#'   \insertRef{Cohen2013}{georefdatar}
#'
#'   \insertRef{Vrielynck2022}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
"ICS_Colors"
