#' Primitive mantle
#'
#' A dataset containing the element concentrations in the primitive mantle as
#' given in \insertCite{sun1989chemical}{gcrefer}.
#'
#' For lead and cesium the -- in this work -- recommended values for
#' mantel-normalizing diagrams where taken.
#' The original values that where given in Tb.1 are (Cs, 0.032) and (Pb, 0.185).
#'
#'
#' @format A data frame with 1 row and `r ncol(PM__Sun_McDounough__1989)` element concentrations in ppm:\cr
#' `r paste(names(PM__Sun_McDounough__1989), collapse= ', ')`
#'
#'
#' @references{
#'   \insertRef{sun1989chemical}{gcrefer}
#' }
#'
#' @importFrom Rdpack reprompt
"PM__Sun_McDounough__1989"
