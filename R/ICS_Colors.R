#' The CGMW ICS color codes
#'
#' A data set containing the color codes used by the
#' [International Chronostratigraphic Chart](https://stratigraphy.org/chart) by the
#' [International Commission on Stratigraphy](https://stratigraphy.org/) (ICS)
#' \insertCite{Cohen2013}{georefdatar}.
#'
#' The coloring in this chart follows the
#' [Commission for the Geological Map of the World](https://ccgm.org/) (CGMW)
#' \insertCite{Vrielynck2022}{georefdatar}.
#'
#' @format
#' A data frame with `r nrow(ICS_Colors)` rows and the following
#' `r ncol(ICS_Colors)` columns:\cr
#' \describe{
#' \item{standard sorting order}{ICS' ordering of this entry}
#' \item{Long List (isc:)}{Entries name prefixed by `ics:`}
#' \item{Long List (formatted)}{The (common) name of entry, e.g. 'Holocene'}
#' \item{Rank}{Is the entry a System, Series, Stage, ...}
#' \item{Cyan, Magenta, Yellow, Black}{Color's values in the CMYK color model}
#' \item{Red, Green, Blue}{Color's values in the RGB color model}
#' }
#'
#' @seealso [georefdatar::icsColor()] a convenience function to get a specific color.
#'
#' @references{
#'   \insertRef{Cohen2013}{georefdatar}
#'
#'   \insertRef{Vrielynck2022}{georefdatar}
#' }
#'
#'
#' @importFrom Rdpack reprompt
"ICS_Colors"



#' Get ICS Color for a unit name found in the International Chronostratigraphic
#' Chart.
#'
#' Retrieve the color code for a given name of an eontheme, eratheme, system,
#' ... from the color codes of the International Chronostratigraphic Chart.
#'
#' @param name character. The name of a unit: eontheme to stage
#' @param colorModel character. The color model to get the color codes in --
#'   either 'RGB' (default) or 'CMYK'.
#'
#' @return list of the color code in the chosen color model
#' @export
#'
#' @seealso [georefdatar::ICS_Colors] for the full color code table
#'
#' @examples
#' # Color codes of the Permian in RGB
#' icsColor("Permian")
#'
#'
icsColor <- function(name, colorModel="RGB") {
  cms <- c("RGB", "CMYK")

  stopifnot("colorModel must be 'RBG' or 'CMYK'."=  colorModel %in% cms)
  if ( (name %in% ICS_Colors$`Long List (formatted)`) == FALSE )
    stop(sprintf('"%s" is unknown.', name))

  if(colorModel == 'RGB')
    colorCols <- c('Red', 'Green', 'Blue')
  else
    colorCols <- c('Cyan', 'Magenta', 'Yellow', 'Black')

  as.list(ICS_Colors[ICS_Colors$`Long List (formatted)` == name, colorCols])
}
