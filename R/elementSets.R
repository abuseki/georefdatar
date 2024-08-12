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
#' 1. **Lanthanides**   `La`--`Lu` \insertCite{Connelly2005}{georefdatar}.
#' 1. **REE**           Same as Lanthanides. The term rare earth elements as used in geochemistry -- e.g \insertCite{Rollinson1993,Marshall1999}{georefdatar}.
#' 1. **LREE**          Light REE, `La`--`Nd`
#' 1. **MREE**          Intermediate REE, `Sm`--`Ho`
#' 1. **HREE**          Heavy REE, `Er`--`Lu`
#' 1. **REM**           Rare earth metals. Sc, Y and the lanthanides \insertCite{Connelly2005}{georefdatar}
#'
#' @order 2
#' @format `REE`: character vector with `r length(REE)` elements.
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

#' @rdname REE
#' @order 1
#' @format `Lanthanides`: character vector with `r length(Lanthanides)` elements.
"Lanthanides"

#' @rdname REE
#' @order 3
#' @format `LREE`: character vector with `r length(LREE)` elements.
"LREE"

#' @rdname REE
#' @order 4
#' @format `MREE`: character vector with `r length(MREE)` elements.
"MREE"

#' @rdname REE
#' @order 5
#' @format `HREE`: character vector with `r length(HREE)` elements.
"HREE"

#' @rdname REE
#' @order 6
#' @format `REM`: character vector with `r length(REM)` elements.
"REM"



#' Platinum-group elements -- PGE
#'
#' @description List of platinum group elements and subsets thereof.
#'
#' @details
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
#' @order 1
#' @format `PGE`: character vector with `r length(PGE)` elements.
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

#' @rdname PGE
#' @order 2
#' @format `IPGE`: character vector with `r length(IPGE)` elements.
"IPGE"

#' @rdname PGE
#' @order 3
#' @format `PPGE`: character vector with `r length(PPGE)` elements.
"PPGE"



#' Goldschmidt's classification of the elements
#'
#' @description
#' Sets containing the elements classified after Goldschmidt.
#'
#' @details
#' The geochemical behavior of the elements is controlled by many factors (e.g.
#' ionic radius, volatility, redox, ...). Therefore, the elements can be
#' classified in several ways. A common classification scheme is that developed
#' by _V. M. Goldschmidt_, which is based on the affinity of elements to form
#' different types of compounds. The Elements are characterized as:
#'
#' 1. **lithophile** (rock-loving): elements with a strong affinity for forming
#' oxides and silicate minerals.
#' 1. **chalcophile**  (copper-loving): elements with a strong affinity for
#' forming sulfides.
#' 1. **siderophile**  (iron-loving): elements with a strong affinity to form
#' metals or solid solutions in metals.
#' 1. **atmophile**  (air-loving): elements that exist either uncombined or as
#' highly volatile compounds.
#'
#'
#' @references
#' \insertRef{Marshall1999}{georefdatar}
#' @importFrom Rdpack reprompt
#'
#' @examples
#' # List the atmophile elements
#' Atmophile
#'
#' # Show the electron configuration of the atmophile elements
#' pte[pte$Symbol %in% Atmophile, c("Symbol", "ElectronConfiguration")]
#'
#' @name Goldschmidt
NULL

#' @rdname Goldschmidt
#' @order 1
#' @format `Lithophile`: character vector with `r length(Lithophile)` elements.
"Lithophile"

#' @rdname Goldschmidt
#' @order 2
#' @format `Chalcophile`: character vector with `r length(Chalcophile)` elements.
"Chalcophile"

#' @rdname Goldschmidt
#' @order 3
#' @format `Siderophile`: character vector with `r length(Siderophile)` elements.
"Siderophile"

#' @rdname Goldschmidt
#' @order 4
#' @format `Atmophile`: character vector with `r length(Atmophile)` elements.
"Atmophile"

