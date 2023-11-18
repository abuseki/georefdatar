#' Rare earth elements -- REE, LREE, MREE, HREE, REM, Lanthanides
#'
#' @description List of rare earth elements and subsets thereof.
#'
#' @details The "Red Book" \insertCite{Connelly2005}{georefdatar} defines the
#'   rare earth metals (REM) as `Sc`, `Y` and the lanthanides (`La` -- `Lu`). In
#'   geochemistry, the term "rare earth elements" is generally limited to the
#'   lanthanides -- e.g. \insertCite{Rollinson1993,Marshall1999}{georefdatar}.
#'   Therefore, it is crucial to consider the context in which this term is
#'   used.\cr A distinction is made here between rare earth metals (REM) and
#'   rare earth elements (REE). The latter are the lanthanides as they are
#'   commonly used in geochemistry. Speaking in sets, the REE are a subset of
#'   the REM. And all subsets of the REE are also limited to the lanthanides.\cr
#'   \cr
#' * Lanthanides   `La`--`Lu` \insertCite{Connelly2005}{georefdatar}.
#' * REE           Same as Lanthanides. The term rare earth elements as used in geochemistry -- e.g \insertCite{Rollinson1993,Marshall1999}{georefdatar}.
#' * REM           Rare earth metals. Sc, Y and the lanthanides \insertCite{Connelly2005}{georefdatar}
#' * LREE          Light REE, `La`--`Nd`
#' * MREE          Intermediate REE, `Sm`--`Ho`
#' * HREE          Heavy REE, `Er`--`Lu`
#'
#' @format character vector with `r length(REE)` elements.
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
#' @format character vector with `r length(Lanthanides)` elements.
"Lanthanides"

#' @describeIn REE Light REE subset of REE
#' @format character vector with `r length(LREE)` elements.
"LREE"

#' @describeIn REE Intermediate REE subset of REE
#' @format character vector with `r length(MREE)` elements.
"MREE"

#' @describeIn REE Heavy REE subset of REE
#' @format character vector with `r length(HREE)` elements.
"HREE"

#' @describeIn REE Rare earth metals
#' @format character vector with `r length(REM)` elements.
"REM"



#' Platinum-group elements -- PGE
#'
#' Ru-Pd and Os-Pt: in chemistry, this group is referred to as the platinum
#' metals. Since the 1960 geologists are using the term "platinum-group
#' elements" (PGE) \insertCite{Marshall1999,Connelly2005}{georefdatar}. In
#' geochemistry, this group is further divided into two subgroups: Ir-PGE and
#' Pd-PGE \insertCite{Marshall1999}{georefdatar} with Au often added to the
#' latter \insertCite{Rollinson1993}{georefdatar}.\cr
#' \cr
#' * PGE   Platinum-group elements -- e.g.
#' \insertCite{Marshall1999}{georefdatar}.
#' * IPGE, PPGE Ir-PGE and Pd-PGE --
#' \insertCite{Rollinson1993,Marshall1999}{georefdatar};
#'
#' @format character vector with `r length(PGE)` elements.
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
#' @format character vector with `r length(IPGE)` elements.
"IPGE"

#' @describeIn PGE Pd-PGE subgroup
#' @format character vector with `r length(PPGE)` elements.
"PPGE"
