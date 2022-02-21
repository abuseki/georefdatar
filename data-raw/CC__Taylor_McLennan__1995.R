## code to prepare `Taylor_McLennan__1995` datasets

# Composition of continental crust: Upper/Bulk/Lower CC
#
# Taylor, Stuart Ross / McLennan, Scott M.
# The geochemical evolution of the continental crust
# 1995-05
# Reviews of geophysics , Vol. 33, No. 2
# p. 241-265
#
# p248/Tab.3
#
# In the original article some elements where given in wt%, ppm and ppb.
# Here all values are in ppm. The convertion used:
# * ppm= wt% * 10000
# * ppm= ppb / 1000
#

CC__Taylor_McLennan__1995 <- read.csv("data-raw/CC__Taylor_McLennan__1995.csv")

# colnames used
ucc <- "Upper.Continental.Crust"
bcc <- "Bulk.Continental.Crust"
lcc <- "Lower.Continental.Crust"

# convert %wt to ppm
rows <- grep('wt. %', CC__Taylor_McLennan__1995$Element)
CC__Taylor_McLennan__1995[rows, ucc] <- CC__Taylor_McLennan__1995[rows, ucc]*1E4
CC__Taylor_McLennan__1995[rows, bcc] <- CC__Taylor_McLennan__1995[rows, bcc]*1E4
CC__Taylor_McLennan__1995[rows, lcc] <- CC__Taylor_McLennan__1995[rows, lcc]*1E4

# convert ppb to ppm
## sequence of 1st occurance of "ppb" in Element list till nrow
rows <- grep('ppb', CC__Taylor_McLennan__1995$Element)
CC__Taylor_McLennan__1995[rows, ucc] <- CC__Taylor_McLennan__1995[rows, ucc]/1E3
CC__Taylor_McLennan__1995[rows, bcc] <- CC__Taylor_McLennan__1995[rows, bcc]/1E3
CC__Taylor_McLennan__1995[rows, lcc] <- CC__Taylor_McLennan__1995[rows, lcc]/1E3

# clean element names
CC__Taylor_McLennan__1995 <- dplyr::mutate(CC__Taylor_McLennan__1995, Element= stringr::str_trim(stringr::str_split(Element, ',', simplify = TRUE)[[1]]))

# separate reservoirs and make them wider
UpperCC__Taylor_McLennan__1995 <- tidyr::pivot_wider(names_from = Element, values_from = ucc)
BulkCC__Taylor_McLennan__1995 <- tidyr::pivot_wider(names_from = Element, values_from = bcc)
LowerCC__Taylor_McLennan__1995 <- tidyr::pivot_wider(names_from = Element, values_from = lcc)

# finally save the data
usethis::use_data(UpperCC__Taylor_McLennan__1995, overwrite = TRUE)
usethis::use_data(BulkCC__Taylor_McLennan__1995, overwrite = TRUE)
usethis::use_data(LowerCC__Taylor_McLennan__1995, overwrite = TRUE)

