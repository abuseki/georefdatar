test_that("icsColors works", {
  expect_error(
    icsColor("XXXXXXian", "THIS NO COLORMODEL"),
    "colorModel must be 'RBG' or 'CMYK'."
    )

  expect_error(
    icsColor("XXXXXXian"),
    '"XXXXXXian" is unknown.'
  )

  expect_equal(
    icsColor('Greenlandian'),
    list(Red=254, Green= 236, Blue=219)
  )

  expect_equal(
    icsColor('Rhuddanian', colorModel= 'CMYK'),
    list(Cyan= 35, Magenta= 0, Yellow=25, Black= 0)
  )

})
