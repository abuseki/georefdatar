test_that("mins IMA status is harmonized", {
  expect_in(
    unique(mins$`IMA Status`),
    c("A", "G", "GROUP", "Rd", "Rn", "Q", "I", "NL")
  )
})

test_that("test mineral search function works", {
  expect_equal(minSearch("Prp")$Name, "Pyrope")
  expect_equal(minSearch("Pyrope")$Symbol, "Prp")
  expect_equal(minSearch("Pyrope")$Formula, minSearch("Prp")$Formula)
})

test_that("test minsForChemistry function works", {
  expect_equal(minsForChemistry("^Ce\\(PO4\\)$")$Symbol, "Mnz-Ce")
  expect_equal(minsForChemistry("^Ce\\(PO4\\)$")$Name, "Monazite-(Ce)")
})

test_that("test mineral group search works", {
  expect_equal(minSearch("^amphibole$")$Symbol, "Amp")
  expect_equal(minSearch("^amphibole$")$`IMA Status`, "GROUP")
  expect_equal(minSearch("^biotite$")$Symbol, "Bt")
  expect_equal(minSearch("^Apatite$")$`IMA Status`, "GROUP")
})

