#' IUPAC Standard atomic weights of the elements
#'
#' A data set containing the standard atomic weights of the elements as
#' recommended by the [International Union of Pure and Applied Chemistry
#' (IUPAC)](https://iupac.org) and [Commission on Isotopic Abundances and
#' Atomic Weights (CIAAW)](https://www.ciaaw.org).
#'
#' This is table 1 of \insertCite{Prohaska2022}{georefdatar}. The (foot)notes in
#' the table have been collected in a new column (Notes) and their abbreviations
#' resolved into sentences.
#'
#'
#' @format A data frame with `r nrow(IUPAC_StdAW)` rows and the following
#' `r ncol(IUPAC_StdAW)` columns:\cr
#' \describe{
#' \item{Element}{Element's name}
#' \item{Symbol}{Element's symbol}
#' \item{Atomic number}{Element's atomic number. Elements are listed in
#' increasing atomic number}
#' \item{stdAW::Value}{Values of standard atomic weights are given as single
#' values with uncertainties (column stdAW::Uncertainty) or as intervals.}
#' \item{stdAW::Uncertainty}{of the Value of the standard atomic weight}
#' \item{abrStdAW::Value}{Abridged atomic weights quoted to five significant
#' figures. Unless such precision cannot be attained due to the variability of
#' isotopic composition in normal materials or due to the limitations of the
#' measurement capability.}
#' \item{abrStdAW::±}{A plus-minus-value as a simplified measure of the reliability of
#' the abridged values.}
#' \item{Note}{The collected footnotes of the table. Notes are resolved to the
#' sentences associated with them. If there is more than one note, the notes are
#'  separated by an newline (`\n`).}
#' }
#'
#' @seealso [aw()] for a function to get the standard atomic weights of the elements found in this table by their symbols
#' @seealso [IUPAC periodic table of elements](https://iupac.org/what-we-do/periodic-table-of-elements/) online
#' @seealso [CIAAW](https://www.ciaaw.org/) also a periodic table of elements online
#' @seealso [CIAAW standard atomic weights](https://www.ciaaw.org/atomic-weights.htm) online
#'
#' @references \insertCite{Prohaska2022}{georefdatar}
#'
#'
#' @importFrom Rdpack reprompt
"IUPAC_StdAW"
