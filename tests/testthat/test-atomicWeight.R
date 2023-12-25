test_that("atomic weights works", {
  expect_equal(aw('H'), 1.0080)

  # Si wt% in Ms
  expect_equal(
    round(3*aw('Si') / (aw('K')+3*aw('Al')+3*aw('Si')+12*aw('O')+2*aw('H')) * 100, 2),
    21.15
  )

  expect_error(aw('H', dataSource = "xxxxxxxxx"))
  expect_error(aw('H', dataSource = "xxxxxxxxx", "Unknown data source!"))
})
