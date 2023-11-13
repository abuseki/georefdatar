#' Rare earth elements -- REE, LREE, HREE, Lanthanides
#'
#' List of rare earth elements and subsets thereof. The "Red Book"
#' \insertCite{Connelly2005}{georefdatar} defines the rare earth metals as `Sc`,
#' `Y` and the lanthanides (`La` -- `Lu`). In geochemistry, the term "rare earth
#' elements" is generally limited to the lanthanides-- e.g.
#' \insertCite{Rollinson1993,Marshall1999}{georefdatar}.\cr
#' Therefore, it is crucial to consider the context in which this term is used.
#'
#'
#' @format Multiple element sets:
#' * Lanthanides   `La`--`Lu` \insertCite{Connelly2005}{georefdatar}. The geochemical
#'   definition of the rare earth elements -- e.g
#'   \insertCite{Rollinson1993,Marshall1999}{georefdatar}.
#' * REE           rare earth metals. Sc, Y and the lanthanides
#'   \insertCite{Connelly2005}{georefdatar}
#' * LREE          Light REE
#' * HREE          Heavy REE
#'
#' @references
#' \insertRef{Rollinson1993}{georefdatar}
#'
#' \insertRef{Marshall1999}{georefdatar}
#'
#' \insertRef{Connelly2005}{georefdatar}
#'
#'
#' @importFrom Rdpack reprompt
#'
#' @examples
#' # get information from the periodic table of elements
#' subset(pte, Symbol %in% REE)
#'
"REE"

#' @describeIn REE Only lanthanides
"Lanthanides"
#' @describeIn REE Light REE subset of REE
"LREE"
#' @describeIn REE Heavy REE subset of REE
"HREE"



#' Platinum-group elements -- PGE
#'
#' Ru-Pd and Os-Pt: in chemistry, this group is referred to as the platinum
#' metals. Since the 1960 geologists are using the term "platinum-group
#' elements" (PGE) \insertCite{Marshall1999,Connelly2005}{georefdatar}. In geochemistry, this
#' group is further divided into two subgroups: Ir-PGE and Pd-PGE
#' \insertCite{Marshall1999}{georefdatar} with Au often added to the
#' latter \insertCite{Rollinson1993}{georefdatar}.
#'
#' @format
#' Three element sets:
#' * PGE   Platinum-group elements -- e.g.
#'   \insertCite{Marshall1999}{georefdatar}.
#' * IPGE, PPGE Ir-PGE and Pd-PGE --
#'   \insertCite{Rollinson1993,Marshall1999}{georefdatar};
#'
#' @references
#' \insertRef{Rollinson1993}{georefdatar}
#'
#' \insertRef{Marshall1999}{georefdatar}
#'
#' \insertRef{Connelly2005}{georefdatar}
#'
#'
#' @importFrom Rdpack reprompt
#'
#' @examples
#' # get information from the periodic table of elements
#' subset(pte, Symbol %in% PGE)
#'
"PGE"

#' @describeIn PGE Ir-PGE subgroup
"IPGE"
#' @describeIn PGE Pd-PGE subgroup
"PPGE"
