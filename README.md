
# georefdatar

<!-- badges: start -->
<!-- badges: end -->

The goal of georefdatar is to provide commonly used reference data sets for
geoscience for use with _R_.  

Up to now these are:
* periodic table of elemnts
* list of minerals
* well known and widely used geochemical data of  reservoirs like the primitive mantle, to continental crust, ...

For all data sets the corresponding references are give.

## Installation

You can install the development version of georefdatar from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("abuseki/georefdatar")
```

## Example

To get the classic primitive mantle data of Sun and McDounough (1989) one can use:

``` r
library(georefdatar)
PM__Sun_McDounough__1989[,c('Cs',"Rb","Ba","Th","U","Nb","K","La","Ce","Pb","Pr","Sr","P","Nd","Zr","Sm","Eu","Ti","Dy","Y","Yb","Lu")]
```

