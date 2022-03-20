## code to prepare `Sun_McDonough__1989` datasets
#
# C1 chondrite, Primitive mantle, N-MORB, E-MORB, OIB
#
# Sun, S. S., and McDonough, W. F. (1989), Chemical and isotopic systematics of
# oceanic basalts: Implications for mantle composition and processes, Geol.Soc.,
# London, Spec. Publ., 42(1), 313–345.
#
# p318/Tab.1
#

SM <- read.csv('data-raw/Sun_McDonough__1989.csv', comment.char = '#')

# separate reservoirs and make them wider
C1__Sun_McDounough__1989 = tidyr::pivot_wider(data = SM[,c('Element', 'C1.chondrite')], names_from = Element, values_from = 'C1.chondrite')
PM__Sun_McDounough__1989 = tidyr::pivot_wider(data = SM[,c('Element', 'Primitive.mantle')], names_from = Element, values_from = 'Primitive.mantle')
NMORB__Sun_McDounough__1989 = tidyr::pivot_wider(data = SM[,c('Element', 'N.type.MORB')], names_from = Element, values_from = 'N.type.MORB')
EMORB__Sun_McDounough__1989 = tidyr::pivot_wider(data = SM[,c('Element', 'E.type.MORB')], names_from = Element, values_from = 'E.type.MORB')
OIB__Sun_McDounough__1989 = tidyr::pivot_wider(data = SM[,c('Element', 'OIB')], names_from = Element, values_from = 'OIB')

# save data
## We do not use the chondrite, we use the CI by McDonough_Sun__1995
#usethis::use_data(C1__Sun_McDounough__1989, overwrite = TRUE)
usethis::use_data(PM__Sun_McDounough__1989, overwrite = TRUE)
usethis::use_data(NMORB__Sun_McDounough__1989, overwrite = TRUE)
usethis::use_data(EMORB__Sun_McDounough__1989, overwrite = TRUE)
usethis::use_data(OIB__Sun_McDounough__1989, overwrite = TRUE)


