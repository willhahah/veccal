
<!-- README.md is generated from README.Rmd. Please edit that file -->

# For assignment

How did I make each part of my R package?

My reference: <https://stat545.stat.ubc.ca/notes03b/>

1.  Load devtools package in the console.

2.  Create a package using `create_tidy_package("veccal")`. One could
    also use `create_package()`, but using `create_tidy_package()` will
    give us a better sructured package. Please note that some files may
    be located at different places using `create_tidy_package()`, eg.
    `CODE_OF_CONDUCT.md` is now under the /github folder. There would be
    also some re-writing if some files are created again, but it does
    not matter much.

3.  `use_git()` to create local git and then link it to a empty public
    github repository.

4.  Make a new R script `using use_r("cosine_similarity")`, and then
    write my only function here. Remember to use `pracma::dot()` when
    using the `dot()` function, and the dependency will be added later.

5.  `use_package("pracma")`, so that the dependancy is added.

6.  Use MIT license by using `use_mit_license("Will Huang")` in the
    console.

7.  Insert roxygen skeletonin the function and edit it, then run
    `document()`.

8.  Install and restart, try to use the function inside the package.

9.  Run `use_testthat("cosine_similarity")` to create a test file for
    the function, and edit test functions inside. Run check button
    after.

10. Add README using `use_readme_rmd()`, and render it using
    `build_readme()` after editing.

11. Make a vignette with `use_vignette()`. Then render with
    `build_vignettes()`.

12. Often commit and push.

13. Tag and submit.

# veccal

<!-- badges: start -->

<!-- badges: end -->

The goal of veccal is to include some widely-used calculations for
vectors.

## Installation

You can install the released version of veccal from github with:

``` r
devtools::install_github("willhahah/veccal")
```

## Example

There is only one function called cosine\_similarity in the veccal
package right now, so I will show examples for the cosine\_similarity
sunction.

This is a basic example which shows you how to calculate the cosine
similarity of 2 numeric vectors of the same length:

``` r
library(veccal)
a<-cosine_similarity(c(1,0), c(1,1))
a
#> [1] 0.7071068
```

The answer is cosine(π/4), which is correct.

There are some examples that show how this function detect errors:

``` r
#install.packages("testthat")
library(testthat)
expect_error(cosine_similarity("abc","edfd"))           # non-vector test
```

``` r
#install.packages("testthat")
library(testthat)
expect_error(cosine_similarity(c(1, NA, 2), c(0,1,2)))  # NA test
```

## Contact

If you have any questions about this package, please contact Will Huang
at: <willhuang9509@gmail.com>
