## code to prepare `isoRatios` dataset

isoRatios <- read.csv("data-raw/IsotopicRatios.csv")

#decayConstants$reference <- apply(dcs, 1, function(r) Rdpack::insert_citeOnly(r["refkey"], "georefdatar"))

# finally save the data
usethis::use_data(isoRatios, overwrite = TRUE)

