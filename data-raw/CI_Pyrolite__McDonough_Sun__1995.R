## code to prepare `McDonough_Sun__1995` datasets

# CI-Chondrite and Pyrolite
#
# McDonough, William F., and S-S. Sun. "The composition of the Earth." Chemical geology 120.3-4 (1995): 223-253.
#
# p238/Tab.5
#
# In the original article some elements where given in wt%, ppm and ppb.
# Here all values are in ppm:
# * The major elements that where given in wt%:
#   ppm= wt% * 10000
# * Elements that were given in ppb, like Nb, Mo, ...
#   ppm= ppb / 1000
#

library(dplyr)

CI_Pyrolite__McDonough_Sun__1995 <- read.csv("data-raw/CI_Pyrolite__McDonough_Sun__1995__full.csv")

# convert %wt to ppm
rows <- grep('(%)', CI_Pyrolite__McDonough_Sun__1995$Element)
CI_Pyrolite__McDonough_Sun__1995[rows, "CI"] <- CI_Pyrolite__McDonough_Sun__1995[rows, "CI"]*1E4
CI_Pyrolite__McDonough_Sun__1995[rows, "Pyrolite"] <- CI_Pyrolite__McDonough_Sun__1995[rows, "Pyrolite"]*1E4

# convert ppb to ppm
## sequence of 1st occurance of "ppb" in Element list till nrow
rows <- seq(grep('(ppb)', CI_Pyrolite__McDonough_Sun__1995$Element), nrow(CI_Pyrolite__McDonough_Sun__1995))
CI_Pyrolite__McDonough_Sun__1995[rows, "CI"] <- CI_Pyrolite__McDonough_Sun__1995[rows, "CI"] / 1E3
CI_Pyrolite__McDonough_Sun__1995[rows, "Pyrolite"] <- CI_Pyrolite__McDonough_Sun__1995[rows, "Pyrolite"] / 1E3

# clean element names
CI_Pyrolite__McDonough_Sun__1995 <- CI_Pyrolite__McDonough_Sun__1995 %>% mutate(Element= stringr::str_trim(stringr::str_sub(Element, 1,2)))

# separet reservoirs am make them wider
CI__McDonough_Sun__1995 <- CI_Pyrolite__McDonough_Sun__1995 %>%
  select(Element, CI) %>%
  tidyr::pivot_wider(names_from = Element, values_from = CI)

Pyrolite__McDonough_Sun__1995 <- CI_Pyrolite__McDonough_Sun__1995 %>%
  select(Element, Pyrolite) %>%
  tidyr::pivot_wider(names_from = Element, values_from = Pyrolite)

# finally save the data
usethis::use_data(CI__McDonough_Sun__1995, overwrite = TRUE)
usethis::use_data(Pyrolite__McDonough_Sun__1995, overwrite = TRUE)

