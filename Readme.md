
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pakietph

<!-- badges: start -->

[![R-CMD-check](https://github.com/pawel1987/pakietph/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/pawel1987/pakietph/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of pakietph is to …

## Installation

You can install the development version of pakietph from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("pawel1987/pakietph")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(pakietph)
df = read.csv2(system.file("dane_przykladowe", package = "pakietph") |> dir(full.names = TRUE))
# Obliczanie site index w wieku bazowym 100 lat dla drzewostanów w tabeli df
df$si = thmodel(df$wysokosc, df$wiek, T2 = 100)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
