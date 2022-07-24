## code to prepare `Rucdnick_Gao__2014` datasets

# Composition of continental crust: Upper/Middle/Lower/Bulk CC
#
# Rudnick, R. L. and Gao, S.
# Treatise on Geochemistry
# Composition of the Continental Crust, 2014
# https://doi.org/10.1016/B978-0-08-095975-7.00301-6
#
# This is a revision of the previous edition article from 2003
#
# p.42/Tab.11

# In the original article major elements are given as oxides in wt% and other
# element concentration ist given as ug/g (ppm) and ng/g (ppb).
# Hera the oxides are given in wt% and all other values are converted to ppm
# using ppm= ppb / 1000
#

CC__Rudnick_Gao__2014 <- read.csv("data-raw/CC__Rudnick_Gao__2014.csv", comment.char = '#')

# colnames used
ucc <- "Upper.continental.crust"
mcc <- "Middle.continental.crust"
lcc <- "Lower.continental.crust"
bcc <- "Bulk.continental.crust"


# convert ppb to ppm
rows <- grep('ng/g', CC__Rudnick_Gao__2014$Unit)
CC__Rudnick_Gao__2014[rows, ucc] <- CC__Rudnick_Gao__2014[rows, ucc]/1E3
CC__Rudnick_Gao__2014[rows, mcc] <- CC__Rudnick_Gao__2014[rows, mcc]/1E3
CC__Rudnick_Gao__2014[rows, lcc] <- CC__Rudnick_Gao__2014[rows, lcc]/1E3
CC__Rudnick_Gao__2014[rows, bcc] <- CC__Rudnick_Gao__2014[rows, bcc]/1E3

# drop unit-column
CC__Rudnick_Gao__2014 <- CC__Rudnick_Gao__2014[-2]

# separate reservoirs, drops NAs and make them wider
CC_Upper__Rudnick_Gao__2014 <- tidyr::pivot_wider(data = tidyr::drop_na(CC__Rudnick_Gao__2014[,c('Element', ucc)]), names_from = Element, values_from = dplyr::all_of(ucc))
CC_Middle__Rudnick_Gao__2014 <- tidyr::pivot_wider(data = tidyr::drop_na(CC__Rudnick_Gao__2014[,c('Element', mcc)]), names_from = Element, values_from = dplyr::all_of(mcc))
CC_Lower__Rudnick_Gao__2014 <- tidyr::pivot_wider(data = tidyr::drop_na(CC__Rudnick_Gao__2014[,c('Element', lcc)]), names_from = Element, values_from = dplyr::all_of(lcc))
CC_Bulk__Rudnick_Gao__2014 <- tidyr::pivot_wider(data = tidyr::drop_na(CC__Rudnick_Gao__2014[,c('Element', bcc)]), names_from = Element, values_from = dplyr::all_of(bcc))


# finally save the data
usethis::use_data(CC_Upper__Rudnick_Gao__2014, overwrite = TRUE)
usethis::use_data(CC_Middle__Rudnick_Gao__2014, overwrite = TRUE)
usethis::use_data(CC_Lower__Rudnick_Gao__2014, overwrite = TRUE)
usethis::use_data(CC_Bulk__Rudnick_Gao__2014, overwrite = TRUE)
