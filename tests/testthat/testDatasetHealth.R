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

test_that('Decay constants is healthy', {
  # Check for NAs
  expect_false(any(is.na(decayConstants[c("name", "value", "refkey")])))

  # Check uniqueness of <name, reference>
  l <- apply(decayConstants, 1, function(r) paste0(r["name"], r["refkey"]))
  expect_true(length(l)==length(unique((l))))
})


test_that('Isotopic ratios is healthy', {
  # Check for NAs
  expect_false(any(is.na(isoRatios[c("name", "value", "refkey")])))

  # Check uniqueness of <name, reference>
  l <- apply(isoRatios, 1, function(r) paste0(r["name"], r["refkey"]))
  expect_true(length(l)==length(unique((l))))
})



