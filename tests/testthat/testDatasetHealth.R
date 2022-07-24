test_that('No NAs in datasets', {
  expect_false(any(is.na(PM__Sun_McDounough__1989)))
  expect_false(any(is.na(NMORB__Sun_McDounough__1989)))
  expect_false(any(is.na(EMORB__Sun_McDounough__1989)))
  expect_false(any(is.na(OIB__Sun_McDounough__1989)))

  expect_false(any(is.na(CI__McDonough_Sun__1995)))
  expect_false(any(is.na(Pyrolite__McDonough_Sun__1995)))

  expect_false(any(is.na(CC_Upper__Taylor_McLennan__1995)))
  expect_false(any(is.na(CC_Bulk__Taylor_McLennan__1995)))
  expect_false(any(is.na(CC_Lower__Taylor_McLennan__1995)))

  expect_false(any(is.na(ALL_MORB__GALE__2013)))
  expect_false(any(is.na(BAB__GALE__2013)))

  expect_false(any(is.na(CC_Upper__Rudnick_Gao__2014)))
  expect_false(any(is.na(CC_Middle__Rudnick_Gao__2014)))
  expect_false(any(is.na(CC_Lower__Rudnick_Gao__2014)))
  expect_false(any(is.na(CC_Bulk__Rudnick_Gao__2014)))
})


# TODO CHECK REFERENCES for unwanted attributes

