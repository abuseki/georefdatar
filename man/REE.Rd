% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elementSets.R
\docType{data}
\name{Lanthanides}
\alias{Lanthanides}
\alias{REE}
\alias{LREE}
\alias{MREE}
\alias{HREE}
\alias{REM}
\title{Rare earth elements -- REE, LREE, MREE, HREE, REM, Lanthanides}
\format{
\code{Lanthanides}: character vector with 15 elements.

\code{REE}: character vector with 15 elements.

\code{LREE}: character vector with 4 elements.

\code{MREE}: character vector with 6 elements.

\code{HREE}: character vector with 4 elements.

\code{REM}: character vector with 17 elements.
}
\usage{
Lanthanides

REE

LREE

MREE

HREE

REM
}
\description{
List of rare earth elements and subsets thereof.
}
\details{
The "Red Book" \insertCite{Connelly2005}{georefdatar} defines the
rare earth metals (REM) as \code{Sc}, \code{Y} and the lanthanides (\code{La} -- \code{Lu}). In
geochemistry, the term "rare earth elements" is generally limited to the
lanthanides -- e.g. \insertCite{Rollinson1993,Marshall1999}{georefdatar}.
Therefore, it is crucial to consider the context in which this term is
used.\cr A distinction is made here between rare earth metals (REM) and
rare earth elements (REE). The latter are the lanthanides as they are
commonly used in geochemistry. Speaking in sets, the REE are a subset of
the REM. And all subsets of the REE are also limited to the lanthanides.\cr
\cr
\enumerate{
\item \strong{Lanthanides}   \code{La}--\code{Lu} \insertCite{Connelly2005}{georefdatar}.
\item \strong{REE}           Same as Lanthanides. The term rare earth elements as used in geochemistry -- e.g \insertCite{Rollinson1993,Marshall1999}{georefdatar}.
\item \strong{LREE}          Light REE, \code{La}--\code{Nd}
\item \strong{MREE}          Intermediate REE, \code{Sm}--\code{Ho}
\item \strong{HREE}          Heavy REE, \code{Er}--\code{Lu}
\item \strong{REM}           Rare earth metals. Sc, Y and the lanthanides \insertCite{Connelly2005}{georefdatar}
}
}
\examples{
# get information from the periodic table of elements
subset(pte, Symbol \%in\% REE)

}
\references{
\insertRef{Rollinson1993}{georefdatar}

\insertRef{Marshall1999}{georefdatar}

\insertRef{Connelly2005}{georefdatar}
}
\keyword{datasets}
