# code to prepare `IMA minera data`
#
# IMA approved mineral names, chemistry and symbols
#
# Retrieved February 28, 2022 from
#   https://rruff.info/ima/

mins <- readr::read_csv('data-raw/RRUFF_Export_20220228_102415.csv', show_col_types = FALSE)
mins <- dplyr::select(mins, `Mineral Name (plain)`, `IMA Chemistry (plain)`, `IMA Mineral Symbol`)
mins <- dplyr::rename(mins,
  Name= `Mineral Name (plain)`,
  Chemistry= `IMA Chemistry (plain)`,
  Symbol= `IMA Mineral Symbol`
)
mins <- dplyr::relocate(mins, Symbol, Name, Chemistry)

usethis::use_data(mins, overwrite = TRUE)
