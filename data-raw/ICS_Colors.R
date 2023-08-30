## code to prepare `ICS_Colours` datasets

ICS_Colors <- readxl::read_excel('data-raw/CGMW_ICS_colour_codes.xlsx', skip = 5)

# drop top rows, not needed the are partly empty for viewind the XLSX...
ICS_Colors <- ICS_Colors[-(1:3), ]

# drop unneeded columns
ICS_Colors <- ICS_Colors[,-c(5, 6, 11, 15:20) ]

# finally save the data
usethis::use_data(ICS_Colors, overwrite = TRUE)
