## code to prepare `DM__Salters_Stracke_2004` dataset

# Composition of the depleted mantle
# Salters & Strack, 2004
# Tab.5, p 19 of 27
# doi: 10.1029/2003GC000597


x <- read.csv("data-raw/DM__Salters_Stracke__2004.csv", comment.char = '#')

# unify units to ppm
# to_ppm <- c('wt%'= 1E4,'ppb'= 1E-3, 'ppt'= 1E-6, 'ppq'= 1E-9)
#
# lapply(names(to_ppm), function(u) {
#   x[x$Unit == u, ]
#   x[x$Unit == u, 'Model'] <<- x[x$Unit == u, 'Model']*to_ppm[u]
#   x[x$Unit == u, ]
# })

# make the table wider
DM__Salters_Stracke__2004 <- tidyr::pivot_wider(
  data = x[c('Element', 'Model')],
  names_from = Element,
  values_from = Model
)

# finally save the data
usethis::use_data(DM__Salters_Stracke__2004, overwrite = TRUE)
