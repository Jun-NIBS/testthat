context("Errors")

test_that("errors are caught with throws_error", {
  res <- throws_error()(stop())
  expect_that(res$passed, is_true())
  
  res <- throws_error("Yes")(stop("Yes"))
  expect_that(res$passed, is_true())
  
  res <- throws_error("Yes")(stop("No"))
  expect_that(res$passed, is_false())
})
