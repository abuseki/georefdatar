#' Depleted mantle
#'
#' @description
#' A data set containing the estimated composition of the Depleted Mantle as
#' given by \insertCite{Salters2004;textual}{georefdatar}.
#'
#' @details
#' The data set contains the elemnts and their values. Here is a table that
#' also contains the elements, their modeled values and their units:
#' `r knitr::kable(read.csv('data-raw/DM__Salters_Stracke__2004.csv', comment.char = '#')[c('Element', 'Model', 'Unit')], format="markdown")`
#'
#'
#' @format A data frame with 1 row and `r ncol(DM__Salters_Stracke__2004)` element concentrations in ppm:\cr
#' `r paste(names(DM__Salters_Stracke__2004), collapse= ', ')`
#'
#' @references {
#'   \insertRef{Salters2004}{georefdatar}
#' }
#'
#' @importFrom Rdpack reprompt
"DM__Salters_Stracke__2004"
