## code to prepare `DATASET` dataset goes here

t <-  readxl::read_excel('data-raw/IUPAC__2021__Standard_atomic_weights_of_the_elements.xlsx', sheet = 'Table 1')

# Rename columns
## There are two rows, that will be squeezed into one
## Standard Atomic Weight => prefix: "stdAW::"
## Abridged Standard Atomic Weight => prefix "abrStdAW::"
t[1,4] <- "stdAW::Value"
t[1,5] <- 'stdAW::Uncertainty'
t[1,7] <- "abrStdAW::Value"
t[1,8] <- "abrStdAW::±"

# remove line two, after column renaming not needed any more
t <- t[-2,]

# Read ourselves and skip first row. So the upper changes in the column values
# will be the column names
t <- readxl::read_excel(writexl::write_xlsx(t), skip = 1)



# convert to numeric

## Standard atomic weight
## there is non-breaking space in here
## tools::showNonASCII(t$`stdAW::Uncertainty`)
## U+00A0	 	c2 a0	NO-BREAK SPACE

### stdAW::Value: We can't convert this vector fully since there are ranges
### but we can clean it from the non-breaking spaces
t$`stdAW::Value` <- gsub("(\\s|\u00A0)", "", t$`stdAW::Value`)

### stdAW::Uncertainty: This vector can be cleaned fully
t$`stdAW::Uncertainty` <- as.numeric(gsub("(\\s|\u00A0)", "", t$`stdAW::Uncertainty`))

## abridged standard atomic weight
## Convert this fully to numeric values
t$`abrStdAW::Value` <- as.numeric(t$`abrStdAW::Value`)
t$`abrStdAW::±` <- as.numeric(t$`abrStdAW::±`)

## check for non numeric
stopifnot(hularr::which.nonnumeric(t$`abrStdAW::Value`) == 0)
stopifnot(hularr::which.nonnumeric(t$`abrStdAW::±`) == 0 )
stopifnot(hularr::which.nonnumeric(t$`stdAW::Uncertainty`) == 0)

# notes column
# Will be the summary of the (foot) notes
t$Note <- NA


# Elements having an asterisk in the end, those are the elements with footnote
# a) in table 1. They are marked with an asterisk in the excel file to not let
# the element name end with an 'a'.
# This should be 38 elements
fna <- which(grepl("\\*$", t$Element))
stopifnot(length(fna) == 38)
# Remove the * and leave a note
t$Element[fna] <- gsub("\\*$", "", t$Element[fna])
t$Note[fna] <- 'a'

# Capitalize elements
# t$Element <- unlist(lapply(t$Element, function(x) {
#   substr(x,1,1) <- toupper(substr(x, 1, 1))
#   x
# }))



# check elements
## Al and Cs will show up, since there is a difference in the writing
t[which(!(toupper(t$Element) %in% toupper(pte$Name))), "Element"]

## Check symbols
t[-which(t$Symbol %in% pte$Symbol), "Symbol"]


# Combine Foot-note and  Note
combineLists <- function(l1, l2) {
  unlist(
    lapply(seq_along(l1), function(i) {
      if (is.na(l1[i]) & is.na(l2[i]))
        return(NA)

      if (is.na(l1[i]) & !is.na(l2[i]))
        return(l2[i])

      if (!is.na(l1[i]) & is.na(l2[i]))
        return(l1[i])

      return(paste(l1[i], l2[i]))
    })
  )
}
xx <- combineLists(t$Note, t$`Foot-note`)

# resolve footnotes
## import foot note texts
fnotes <- readxl::read_excel('data-raw/IUPAC__2021__Standard_atomic_weights_of_the_elements.xlsx', sheet = 'Tab1_footnotes')
# Turn this into a names list
fnotes <- with(fnotes, setNames(Text, Footnote))
# replace notes by their texts
t$Note <- unlist(lapply(strsplit(xx, "\\s"), function(y) paste(fnotes[y], collapse = "\n")))
t$Note <- gsub("NA", NA, t$Note)
# remove foot-note, now resolved in Notes
t$`Foot-note` <- NULL

# we finished
IUPAC_StdAW <- as.data.frame(t)
usethis::use_data(IUPAC_StdAW, overwrite = TRUE)
