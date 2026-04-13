#' Depleted mantle
#'
#' @description
#' A data set containing the estimated composition of the Depleted Mantle as
#' given by \insertCite{Salters2004;textual}{georefdatar}.
#'
#'
#' @details
#' The data set contains the elements and their (modeled) values. Here is the
#' table that also contains the units:
#'
#' ```{r, echo=FALSE}
#' cols <- c('Element', 'Model', 'Unit')
#' t <- read.csv('data-raw/DM__Salters_Stracke__2004.csv', comment.char = '#')[cols]
#' kable(t, format= "pipe", col.names= sprintf("**%s**", cols))
#' ```
#'
#'
#' @format A list with `r ncol(DM__Salters_Stracke__2004)` elements.
#'
#' @references {
#'   \insertRef{Salters2004}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
#' @importFrom knitr kable
"DM__Salters_Stracke__2004"
