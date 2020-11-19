test_that("Testing mean function", {
  expect_equal(mean_cal(c(1,9)), 5)
  expect_identical(mean_cal(c(2,NA,10)), 6)
  expect_error(mean_cal(m))
  expect_equal(mean_cal(gapminder::gapminder$gdpPercap),
               mean(gapminder::gapminder$gdpPercap))
})
