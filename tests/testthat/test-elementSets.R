test_that("elementSets works", {

  expect_true(all(
    length(REE) == 17, length(LREE) == 8, length(HREE) == 9,
    length(c(LREE, HREE)) == length(REE),
    length(Lanthanides) == 15,

    length(PGE) == 6,
    length(IPGE) == 3,
    length(PPGE) == 3,
    length(c(IPGE, PPGE)) == length(PGE)
  ))

  expect_true(all(
    all(Lanthanides %in% REE),
    all(LREE %in% REE),
    all(HREE %in% REE),

    all(IPGE %in% PGE),
    all(PPGE %in% PGE)
  ))

  expect_true(
    nrow(subset(georefdatar::pte, Symbol %in% REE)) == length(REE),
    nrow(subset(georefdatar::pte, Symbol %in% PGE)) == length(PGE)
  )

})
