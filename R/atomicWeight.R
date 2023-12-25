#' Get the atomic weight of an element
#'
#' @param sym symbol of the element as a string
#' @param dataSource the data source for the atomic weight, either `IUPAC`
#'   (default) or `PubChem`. This is case insensitive ("IUPAC" is the same as
#'   e.g. "IuPaC")
#'
#' @return Atomic weight of element with the given symbol
#'
#' @seealso [IUPAC_StdAW] for the table of standard atomic weights
#'   by IUPAC and [pte] for a full periodic table of elements
#'
#' @export
#'
#' @examples
#' aw('H')
#' aw('H')*2+aw('O')
#'
#' aw('Li', dataSource= "pubchem")
#'
aw <- function(sym, dataSource="IUPAC") {
  dataSource <-toupper(dataSource)
  stopifnot("Unknown data source!"= dataSource %in% c("IUPAC", "PUBCHEM"))

  if (dataSource == "PUBCHEM")
    return(georefdatar::pte[georefdatar::pte$Symbol==sym, ]$AtomicMass)

  georefdatar::IUPAC_StdAW[georefdatar::IUPAC_StdAW$Symbol== sym, ]$`abrStdAW::Value`
}
