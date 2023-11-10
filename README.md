
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Groupandcount

The goal of the groupandcount package is to group the input data with
specified column and count each group’s occurrence

## Installation

You can install the development version of groupandcount from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/assignment-b2-SillyPasty", quiet = TRUE)
```

## Examples

This example shows group the penguins dataset according to island column
and count the rows for each island.

``` r
library("palmerpenguins")
test1 <- group_and_count(penguins, island)
print(test1)
#> # A tibble: 3 × 2
#>   island      cnt
#>   <fct>     <int>
#> 1 Biscoe      168
#> 2 Dream       124
#> 3 Torgersen    52
```

This example shows group the penguins dataset according to island and
sex column and count the rows for the columns.

``` r
test2 <- group_and_count(penguins, island, sex)
print(test2)
#> # A tibble: 9 × 3
#> # Groups:   island [3]
#>   island    sex      cnt
#>   <fct>     <fct>  <int>
#> 1 Biscoe    female    80
#> 2 Biscoe    male      83
#> 3 Biscoe    <NA>       5
#> 4 Dream     female    61
#> 5 Dream     male      62
#> 6 Dream     <NA>       1
#> 7 Torgersen female    24
#> 8 Torgersen male      23
#> 9 Torgersen <NA>       5
```
