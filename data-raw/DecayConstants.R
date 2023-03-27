## code to prepare `DecayConstants` dataset

decayConstants <- read.csv("data-raw/DecayConstants.csv")

#decayConstants$reference <- apply(dcs, 1, function(r) Rdpack::insert_citeOnly(r["refkey"], "georefdatar"))

# finally save the data
usethis::use_data(decayConstants, overwrite = TRUE)
