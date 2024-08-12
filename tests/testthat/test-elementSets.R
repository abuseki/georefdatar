test_that("REE and Co works", {

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


test_that("Goldscmidt works", {
  expect_setequal(Atmophile,
                  c('H', "He", "N", "Ne", "Ar", "Kr", "Xe", "Rn", "C", "O")
                  )
  expect_setequal(Chalcophile,
                  c('S', 'Cu', 'Zn', 'Ga', 'As', 'Se', 'Ag', 'Cd', 'In', 'Sb',
                    'Te', 'Hg', 'Tl', 'Pb', 'Bi')
                  )
  expect_setequal(Lithophile,
                  c('Li', 'Be', 'B', 'C', 'O', 'F', 'Na', 'Mg', 'Al', 'Si', 'P',
                    'Cl', 'K', 'Ca', 'Sc', 'Ti', 'V', 'Cr', 'Mn', 'Br', 'Rb',
                    'Sr', 'Y', 'Zr', 'Nb', 'I', 'Cs', 'Ba', 'La', 'Ce', 'Pr',
                    'Nd', 'Sm', 'Eu', 'Gd', 'Tb', 'Dy', 'Ho', 'Er', 'Tm', 'Yb',
                    'Lu', 'Hf', 'Ta', 'Th', 'U')
                  )
  expect_setequal(Siderophile, c('Fe', 'Co', 'Ni', 'Ge', 'Mo', 'Ru', 'Rh', 'Pd',
                                 'Sn', 'W', 'Re', 'Os', 'Ir', 'Pt', 'Au')
                  )
})
