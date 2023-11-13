## code to prepare `elemSet` dataset goes here

## REE
Lanthanides <- c('La', 'Ce', 'Pr', 'Nd', 'Pm', 'Sm', 'Eu', 'Gd', 'Tb', 'Dy', 'Ho', 'Er', 'Tm', 'Yb', 'Lu')
REE <- c('Sc', 'Y', Lanthanides)
LREE <- c('Sc', 'La', 'Ce', 'Pr', 'Nd', 'Pm', 'Sm', 'Eu')
HREE <- c('Y', 'Gd', 'Tb', 'Dy', 'Ho', 'Er', 'Tm', 'Yb', 'Lu')

## PGE
PGE <- c('Ru', 'Rh', 'Pd', 'Os', 'Ir', 'Pt')
IPGE <- c('Os', 'Ir', 'Ru')
PPGE <- c('Ru', 'Pt', 'Pd')

usethis::use_data(Lanthanides, overwrite = TRUE)
usethis::use_data(REE, overwrite = TRUE)
usethis::use_data(LREE, overwrite = TRUE)
usethis::use_data(HREE, overwrite = TRUE)

usethis::use_data(PGE, overwrite = TRUE)
usethis::use_data(IPGE, overwrite = TRUE)
usethis::use_data(PPGE, overwrite = TRUE)
