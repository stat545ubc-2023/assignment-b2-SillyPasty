library("testthat")
library("dplyr")
library("palmerpenguins")
library("usethis")
library("devtools")
#' @title group_and_count
#' @details 
#' Group the input data with specified column and count each group's occurrence
#' @param data Input data frame
#' @param ... Multiple value, the group column
#' @param count_c The count number column name, with default value cnt.
#'
#' @return A tibble with the count result
#' @md
#' @export
#' 
#' @examples
#' group_and_count(penguins, island)
#' group_and_count(penguins, island, sex)
#' 
group_and_count <- function(data, ..., count_c = "cnt") {
  group_columns <- enquos(...)
  result <- data %>%
    group_by(!!!group_columns) %>%
    summarize(!!count_c := n())
  return(result)
}

