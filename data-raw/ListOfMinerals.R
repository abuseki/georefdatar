# code to prepare `listOfMinerals` dataset
#
# IMA approved mineral names, chemistry and symbols
# Generated from the supplementary material of (Warr, 2021)


t <- readxl::read_excel('data-raw/Warr__2021__IMA-CNMNC_minerals_supplementary_material.xlsx', skip = 1)
# extract infos we want
mins <- t[1:5744, 1:4]
mins <- dplyr::rename(mins,
                      Name= Name,
                      Symbol= `Symbol`,
                      Formula= `CNMMN/CNMNC approved formula (unless marked in blue)`,
                      `IMA Status`= `IMA Status`
)
mins <- dplyr::relocate(mins, Symbol, Name, Formula, `IMA Status`)

###### harmonize `IMA Status`
# "A ?" => "A",
# `subset(mins, `IMA Status`=="A ?")`:
# All six minerals showing up there are approved, according to
# [RRUFF](https://rruff.info/ima) as of 2024-03-09
# So `A ?` can be replaced by `A`
mins[which(mins$`IMA Status` == "A ?"), "IMA Status"] <- "A"

# NAs
# `subset(mins, is.na(`IMA Status`))`:
# All five minerals showing up there are approved, according to
# [RRUFF](https://rruff.info/ima) as of 2024-03-09
# So NA can be replaced by `A`
mins[which(is.na(mins$`IMA Status`)), "IMA Status"] <- "A"

# "Informal" -> "I"
mins[which(mins$`IMA Status` == "Informal"), "IMA Status"] <- "I"



## OK, we are done, save the data set
usethis::use_data(mins, overwrite = TRUE)
