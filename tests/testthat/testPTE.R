################################################################################
# Tests for the periodic table of the elements
################################################################################

test_that('PTE works', {

  expect_equal(pte[1, "Name"], "Hydrogen")
  expect_equal(pte[pte$Symbol=='K', "ElectronConfiguration"], "[Ar]4s1")

  # TODO more tests
})
