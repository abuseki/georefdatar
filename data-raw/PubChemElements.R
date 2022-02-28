# code to prepare `Periodic table of elements`
#
# National Center for Biotechnology Information (2022).
# PubChem Periodic Table of Elements.
# Retrieved February 28, 2022 from
#   https://pubchem.ncbi.nlm.nih.gov/periodic-table/.

pte <- read.csv('data-raw/PubChemElements_all.csv')
usethis::use_data(pte, overwrite = TRUE)
