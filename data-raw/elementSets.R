# code to prepare `elemSet` dataset goes here

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


## Goldschmidt
t <- readxl::read_xlsx('data-raw/GeochemClass__EncyGeoChem__Tab_G4.xlsx')
# Add Symbol to element name since we want the symbols for the elements and not
# their names
t$Symbol <- unlist(lapply(t$Element, function(e) {pte[pte$Name==e,]$Symbol}))

# Build the element sets
Atmophile <- subset(t, t$Goldschmidt=="Atmophile" |
                       t$Goldschmidt=="Atmophile/Lithophile")$Symbol
Chalcophile <- subset(t, t$Goldschmidt=="Chalcophile")$Symbol
Lithophile <- subset(t, t$Goldschmidt=="Lithophile" |
                        t$Goldschmidt=="Atmophile/Lithophile")$Symbol
Siderophile <- subset(t, t$Goldschmidt=="Siderophile")$Symbol

# save the data
usethis::use_data(Atmophile, overwrite = TRUE)
usethis::use_data(Chalcophile, overwrite = TRUE)
usethis::use_data(Lithophile, overwrite = TRUE)
usethis::use_data(Siderophile, overwrite = TRUE)
