test_that('No NAs in datasets', {
  expect_false(any(is.na(PM__Sun_McDounough__1989)))

  expect_false(any(is.na(CI__McDonough_Sun__1995)))
  expect_false(any(is.na(Pyrolite__McDonough_Sun__1995)))

  expect_false(any(is.na(UpperCC__Taylor_McLennan__1995)))
  expect_false(any(is.na(BulkCC__Taylor_McLennan__1995)))
  expect_false(any(is.na(LowerCC__Taylor_McLennan__1995)))

})
