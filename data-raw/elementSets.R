## code to prepare `elemSet` dataset goes here

## REE
Lanthanides <- c('La', 'Ce', 'Pr', 'Nd', 'Pm', 'Sm', 'Eu', 'Gd', 'Tb', 'Dy', 'Ho', 'Er', 'Tm', 'Yb', 'Lu')
REE <- Lanthanides
LREE <- c('La', 'Ce', 'Pr', 'Nd')
MREE <- c('Sm', 'Eu', 'Gd', 'Tb', 'Dy', 'Ho')
HREE <- c('Er', 'Tm', 'Yb', 'Lu')
REM <- c('Sc', 'Y', Lanthanides)

## PGE
PGE <- c('Ru', 'Rh', 'Pd', 'Os', 'Ir', 'Pt')
IPGE <- c('Os', 'Ir', 'Ru')
PPGE <- c('Ru', 'Pt', 'Pd')

usethis::use_data(Lanthanides, overwrite = TRUE)
usethis::use_data(REE, overwrite = TRUE)
usethis::use_data(LREE, overwrite = TRUE)
usethis::use_data(MREE, overwrite = TRUE)
usethis::use_data(HREE, overwrite = TRUE)
usethis::use_data(REM, overwrite = TRUE)

usethis::use_data(PGE, overwrite = TRUE)
usethis::use_data(IPGE, overwrite = TRUE)
usethis::use_data(PPGE, overwrite = TRUE)
