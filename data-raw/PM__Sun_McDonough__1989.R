## code to prepare `PM__Sun_McDonough__1989` dataset goes here

PM__Sun_McDounough__1989 <- readr::read_csv("data-raw/PrimitiveMantle__Sun_McDonough__1989__full.csv", comment = '#')

usethis::use_data(PM__Sun_McDounough__1989, overwrite = TRUE)
