library(testthat)
test_that('Input and Output lengths same', {
  expect_equal(length(c(1,2,3,4,5,6,7,8,9,10)), length(FizzBuzz(c(1,2,3,4,5,6,7,8,9,10))))
  expect_equal(length(c(1,2,3,4,5)), length(FizzBuzz(c(1,2,3,4,5))))
})

test_that('invalid inputs are caught and errored', {
  expect_error(FizzBuzz(c(0,0,0,0)))
  expect_error(FizzBuzz(c(1,2,3,4,-5)))
  expect_error(FizzBuzz(c(1,2,3,Inf,5)))
})
