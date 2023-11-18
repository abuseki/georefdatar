test_that("elementSets works", {

  expect_true(all(
    length(Lanthanides) == 15,
    length(REE) == 15,
    length(LREE) == 4,
    length(MREE) == 6,
    length(HREE) == 4,
    # Pm not used in the REE subgroups
    length(c(LREE, MREE, HREE)) == length(REE) - 1,
    length(REM == 17),

    length(PGE) == 6,
    length(IPGE) == 3,
    length(PPGE) == 3,
    length(c(IPGE, PPGE)) == length(PGE)
  ))

  expect_true(all(
    all(Lanthanides %in% REE),
    all(LREE %in% REE),
    all(MREE %in% REE),
    all(HREE %in% REE),
    all(REE %in% REM),

    all(IPGE %in% PGE),
    all(PPGE %in% PGE)
  ))

  expect_true(
    nrow(subset(georefdatar::pte, Symbol %in% REE)) == length(REE),
    nrow(subset(georefdatar::pte, Symbol %in% PGE)) == length(PGE)
  )

})
