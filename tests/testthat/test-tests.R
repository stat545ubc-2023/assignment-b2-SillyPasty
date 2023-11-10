test_that("group and count correctly count data", {
  data_df <- data.frame(
    Category = c("a", "a", "b", "b", "a", "b"),
    Product = c("m", "n", "m", "m", "n", "n")
  )

  result <- group_and_count(data_df, Category)
  expect_equal(result$Category, c("a", "b"))
  expect_equal(result$cnt, c(3, 3))
})
test_that("group and count correctly count data", {
  data_df <- data.frame(
    Category = c("a", "a", "b", "b", "a", NA),
    Product = c("m", "n", "m", "m", "n", "n")
  )

  result <- group_and_count(data_df, Category)
  expect_equal(result$Category, c("a", "b", NA))
  expect_equal(result$cnt, c(3, 2, 1))
})

test_that("group and count correctly count data", {
  data_df <- data.frame(
    Category = c("a", "a", "b", "b", "a", "a"),
    Product = c(1, 2, 3, 1, 2, 3)
  )

  result <- group_and_count(data_df, Category, Product)
  print(result)
  expect_equal(result$Category, c("a", "a", "a", "b", "b"))
  expect_equal(result$Product, c(1, 2, 3, 1, 3))
  expect_equal(result$cnt, c(1, 2, 1, 1, 1))
})
