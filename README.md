
<!-- README.md is generated from README.Rmd. Please edit that file -->

# means

<!-- badges: start -->

<!-- badges: end -->

The purpose of `means` is to provide the `mean` function with some
friends. Especially when the input is very large, users can know the
details of what the function is doing during the computation process.

## Installation

You can install the released version of means from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("emma-wang29/means")
```

## Basic Usage

This is a basic example which shows you how to solve a common problem:

``` r
library(means)

mean_cal(1:9)
#> [1] 5
```

## Development

Always load devtools package first, as it is the public face of a set of
packages that support various aspects of package development.

``` r
library(devtools)
#> Warning: package 'devtools' was built under R version 4.0.3
#> Loading required package: usethis
```

To create this R package, call `create_package()` in the console to
initialize a new package. The means directory is an R project, we may
want to maunipulate it on GitHub, then use `use_git()`.

``` r
create_package("~/Desktop/means")
#> √ Setting active project to 'C:/Users/Emma Wang/Desktop/means'
#> √ Leaving 'DESCRIPTION' unchanged
#> Package: means
#> Title: What the Package Does (One Line, Title Case)
#> Version: 0.0.0.9000
#> Authors@R (parsed):
#>     * First Last <first.last@example.com> [aut, cre] (YOUR-ORCID-ID)
#> Description: What the package does (one paragraph).
#> License: `use_mit_license()`, `use_gpl3_license()` or friends to pick a
#>     license
#> Encoding: UTF-8
#> LazyData: true
#> Roxygen: list(markdown = TRUE)
#> RoxygenNote: 7.1.1
#> √ Leaving 'NAMESPACE' unchanged
#> √ Setting active project to '<no active project>'

use_git()
#> √ Setting active project to 'C:/Users/Emma Wang/means'
```

After the R package is created, we can restart R and make a new R script
using `use_r()`, and write a function there: start with `mean_cal()`.
Then use `load_all()` and `check()` to make the function available for
interactive use and check if the package is intact.

A warning will be occurred after running `check()`, which is related to
license. So, we need to edit the license through `use_mit_license()`.

``` r
use_mit_license("Xuerou Wang")
```

We always use `devtools::document()` to update documentation.

We still want to test the function to see if it works well, then I used
`use_testthat()` for the package to create an R script containing tests:
`use_testthat("test-meancal")`

Then check all tests with `test()` in the console to see if it passes
the test. Also, I want to test the package using `gapminder` dataset, so
I use `::` to access `gapminder`, which added in the `DESCRIPTION` file
under `Imports`.

``` r
mean_cal(gapminder::gapminder$gdpPercap)
#> [1] 7215.327
```

To make the R package more readable, README is added through:

``` r
use_readme_rmd()
#> √ Leaving 'README.Rmd' unchanged
```

and render it everytime with `build_readme()`.

Finally, make a vignette with:

``` r
use_vignette("means")
#> √ Leaving 'vignettes/means.Rmd' unchanged
```

And, build all vignettes with:

``` r
build_vignettes()
#> Building means vignettes
#> --- re-building 'means.Rmd' using rmarkdown
#> --- finished re-building 'means.Rmd'
#> 
#> Moving means.html, means.R to doc/
#> Copying means.Rmd to doc/
#> Building vignette index
```
