test_that("test mineral search functions work", {
  expect_equal(minSearch("Prp")$Name, "Pyrope")
  expect_equal(minSearch("Pyrope")$Symbol, "Prp")
  expect_equal(minSearch("Pyrope")$Chemistry, minSearch("Prp")$Chemistry)

  expect_equal(minsForChemistry("^Ce\\(PO4\\)$")$Symbol, "Mnz-Ce")
  expect_equal(minsForChemistry("^Ce\\(PO4\\)$")$Name, "Monazite-(Ce)")

})
