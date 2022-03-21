################################################################################
# Tests for the data sets
#
# Checks, from the papers, randomly selected values
################################################################################

test_that('GALE__2013 is OK', {
  expect_equal(ALL_MORB__GALE__2013$Al2O3, 14.70)
  expect_equal(ALL_MORB__GALE__2013$Cs, 0.034)
  expect_equal(ALL_MORB__GALE__2013$Nd, 12.03)
  expect_equal(ALL_MORB__GALE__2013$Sr87_Sr86, 0.702819)
  expect_equal(ALL_MORB__GALE__2013$Sm_Nd, 0.325)
  expect_equal(ALL_MORB__GALE__2013$K_U, 12344)

  expect_equal(BAB__GALE__2013$SiO2, 51.67)
  expect_equal(BAB__GALE__2013$Ba, 64.3)
  expect_equal(BAB__GALE__2013$Co, 37.6)
  expect_equal(BAB__GALE__2013$Ho, 1.00)
  expect_equal(BAB__GALE__2013$U, 0.161)
  expect_equal(BAB__GALE__2013$Hf_Nd, 0.223)
})

test_that('Taylor_McLennan__1995 is OK', {
  expect_equal(CC_Bulk__Taylor_McLennan__1995$Li, 13)
  expect_equal(CC_Bulk__Taylor_McLennan__1995$Na, 2.30E4)
  expect_equal(CC_Bulk__Taylor_McLennan__1995$Cr, 185)
  expect_equal(CC_Bulk__Taylor_McLennan__1995$In, 50E-3)
  expect_equal(CC_Bulk__Taylor_McLennan__1995$Gd, 3.3)
  expect_equal(CC_Bulk__Taylor_McLennan__1995$Tl, 360E-3)

  expect_equal(CC_Lower__Taylor_McLennan__1995$Zr, 70)
  expect_equal(CC_Lower__Taylor_McLennan__1995$Nd, 12.7)
  expect_equal(CC_Lower__Taylor_McLennan__1995$Tl, 230E-3)
  expect_equal(CC_Lower__Taylor_McLennan__1995$Ir, 0.13E-3)
  expect_equal(CC_Lower__Taylor_McLennan__1995$Fe, 8.24E4)
  expect_equal(CC_Lower__Taylor_McLennan__1995$Mn, 1700)

  expect_equal(CC_Upper__Taylor_McLennan__1995$Tm, 0.33)
  expect_equal(CC_Upper__Taylor_McLennan__1995$As, 1.5)
  expect_equal(CC_Upper__Taylor_McLennan__1995$Ni, 20)
  expect_equal(CC_Upper__Taylor_McLennan__1995$Ce, 64)
  expect_equal(CC_Upper__Taylor_McLennan__1995$Zn, 71)
  expect_equal(CC_Upper__Taylor_McLennan__1995$Yb, 2.2)
})

test_that('Sun_McDounough__1989 is OK', {
  expect_equal(EMORB__Sun_McDounough__1989$U, 0.18)
  expect_equal(EMORB__Sun_McDounough__1989$Rb, 5.04)
  expect_equal(EMORB__Sun_McDounough__1989$Tb, 0.530)
  expect_equal(EMORB__Sun_McDounough__1989$Zr, 73)

  expect_equal(NMORB__Sun_McDounough__1989$Gd, 3.680)
  expect_equal(NMORB__Sun_McDounough__1989$Nb, 2.33)
  expect_equal(NMORB__Sun_McDounough__1989$Tl, 0.0014)
  expect_equal(NMORB__Sun_McDounough__1989$Th, 0.120)

  expect_equal(OIB__Sun_McDounough__1989$Li, 5.6)
  expect_equal(OIB__Sun_McDounough__1989$Tm, 0.350)
  expect_equal(OIB__Sun_McDounough__1989$Sb, 0.03)
  expect_equal(OIB__Sun_McDounough__1989$Ho, 1.06)

  expect_equal(PM__Sun_McDounough__1989$Nd, 1.354)
  expect_equal(PM__Sun_McDounough__1989$Sm, 0.444)
  expect_equal(PM__Sun_McDounough__1989$K, 250)
  expect_equal(PM__Sun_McDounough__1989$Ti, 1300)
})

test_that('McDonough_Sun__1995 is OK', {
  expect_equal(CI__McDonough_Sun__1995$Tm, 24.7E-3)
  expect_equal(CI__McDonough_Sun__1995$Tb, 36.1E-3)
  expect_equal(CI__McDonough_Sun__1995$Li, 1.5)
  expect_equal(CI__McDonough_Sun__1995$Cl, 680)
  expect_equal(CI__McDonough_Sun__1995$Sn, 1650E-3)
  expect_equal(CI__McDonough_Sun__1995$Dy, 246E-3)
  expect_equal(CI__McDonough_Sun__1995$Zn, 310)
  expect_equal(CI__McDonough_Sun__1995$Re, 40E-3)

  expect_equal(Pyrolite__McDonough_Sun__1995$Ta, 37E-3)
  expect_equal(Pyrolite__McDonough_Sun__1995$Pb, 150E-3)
  expect_equal(Pyrolite__McDonough_Sun__1995$Pd, 3.9E-3)
  expect_equal(Pyrolite__McDonough_Sun__1995$Mo, 50E-3)
  expect_equal(Pyrolite__McDonough_Sun__1995$Ge, 1.1)
  expect_equal(Pyrolite__McDonough_Sun__1995$Ce, 1675E-3)
  expect_equal(Pyrolite__McDonough_Sun__1995$P, 90)
  expect_equal(Pyrolite__McDonough_Sun__1995$Ru, 5E-3)
})
