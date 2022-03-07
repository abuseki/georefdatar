test_that('PTE works', {
  expect_equal(m('H'), 1.008000)

  # Si wt% in Ms
  expect_equal(
    round(3*m('Si') / (m('K')+3*m('Al')+3*m('Si')+12*m('O')+2*m('H')) * 100, 2),
    21.15
  )
})
