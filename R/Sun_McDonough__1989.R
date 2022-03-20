#' Primitive mantle
#'
#' A data set containing the element concentrations in the primitive mantle as
#' given by \insertCite{sun1989chemical;textual}{georefdatar}.
#'
#' For lead and cesium the recommended (in this work) values for
#' mantel-normalizing diagrams where used.
#' The original values that where given in Tbl.1 are (Cs, 0.032) and (Pb, 0.185).
#'
#'
#' @format A data frame with 1 row and `r ncol(PM__Sun_McDounough__1989)` element concentrations in ppm:\cr
#' `r paste(names(PM__Sun_McDounough__1989), collapse= ', ')`
#'
#'
#' @references{
#'   \insertRef{sun1989chemical}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
"PM__Sun_McDounough__1989"
