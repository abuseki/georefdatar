## code to prepare `Gale__2013` datasets

# ALLMORB and BAB

library(dplyr)

ALLMORB_BAB__Gale__2013 <- readxl::read_excel('data-raw/ALLMORB_BAB__Gale__2013.xlsx')

# separate reservoirs and make them wider
ALL_MORB__GALE__2013 <- ALLMORB_BAB__Gale__2013 %>%
  select(Element, `ALL MORB`) %>%
  tidyr::pivot_wider(names_from = Element, values_from = `ALL MORB`)

BAB__GALE__2013 <- ALLMORB_BAB__Gale__2013 %>%
  select(Element, BAB) %>%
  tidyr::pivot_wider(names_from = Element, values_from = BAB)

## for checking
writexl::write_xlsx(
  tidyr::pivot_longer(ALL_MORB__GALE__2013, cols = everything()),
  '~/scratch/ALLMORB__Gale__2013.xlsx'
)
writexl::write_xlsx(
  tidyr::pivot_longer(BAB__GALE__2013, cols = everything()),
  '~/scratch/BAB__Gale__2013.xlsx'
)

# finally save the data
usethis::use_data(ALL_MORB__GALE__2013, overwrite = TRUE)
usethis::use_data(BAB__GALE__2013, overwrite = TRUE)

