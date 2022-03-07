
# georefdatar – Geosciences reference data sets in R

<!-- badges: start -->
<!-- badges: end -->

The goal of georefdatar is to provide regulary used reference data sets
for geoscience for use with *R*.

Up to now these are: \* periodic table of the elements \* list of
minerals – with name, symbol (abbreviation) and chemistry \* well known
and widely used geochemical data of reservoirs like the primitive
mantle, to continental crust, basalts, … \* some functions for basic
queries of the periodic table of the elements and the list of minerals
are also included.

All data sets have full references, making them citable.

## Installation

You can install the development version of georefdatar from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("abuseki/georefdatar")
```

## Example

-   To get the classic primitive mantle data of Sun and
    McDounough (1989) one can use:

    ``` r
    library(georefdatar)

    PM__Sun_McDounough__1989[,c('Cs','Rb','Ba','Th','U','Nb','K','La','Ce','Pb','Pr','Sr','P','Nd','Zr','Sm','Eu','Ti','Dy','Y','Yb','Lu')]
    ```

        ##       Cs    Rb    Ba    Th     U    Nb   K    La    Ce    Pb    Pr   Sr  P
        ## 1 0.0079 0.635 6.989 0.085 0.021 0.713 250 0.687 1.775 0.071 0.276 21.1 95
        ##      Nd   Zr    Sm    Eu   Ti    Dy    Y    Yb    Lu
        ## 1 1.354 11.2 0.444 0.168 1300 0.737 4.55 0.493 0.074

    or using `dplyr`:

    ``` r
    library(georefdatar)
    library(dplyr)
    ```

        ## 
        ## Attache Paket: 'dplyr'

        ## Die folgenden Objekte sind maskiert von 'package:stats':
        ## 
        ##     filter, lag

        ## Die folgenden Objekte sind maskiert von 'package:base':
        ## 
        ##     intersect, setdiff, setequal, union

    ``` r
    PM__Sun_McDounough__1989 %>% select(Cs, Rb, Ba, Th, U, Nb, K, La, Ce, Pb, Pr, Sr, P, Nd, Zr, Sm, Eu, Ti, Dy, Y, Yb, Lu)
    ```

        ## # A tibble: 1 × 22
        ##       Cs    Rb    Ba    Th     U    Nb     K    La    Ce    Pb    Pr    Sr     P
        ##    <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
        ## 1 0.0079 0.635  6.99 0.085 0.021 0.713   250 0.687  1.78 0.071 0.276  21.1    95
        ## # … with 9 more variables: Nd <dbl>, Zr <dbl>, Sm <dbl>, Eu <dbl>, Ti <dbl>,
        ## #   Dy <dbl>, Y <dbl>, Yb <dbl>, Lu <dbl>

-   Query the list of minerals:

    -   by names or symbols given as a regular expression:

        ``` r
        library(georefdatar)

        minSearch('Pyrr.*')
        ```

            ## # A tibble: 1 × 3
            ##   Symbol Name       Chemistry
            ##   <chr>  <chr>      <chr>    
            ## 1 Pyh    Pyrrhotite Fe7S8

        ``` r
        minSearch('^Ms$')
        ```

            ## # A tibble: 1 × 3
            ##   Symbol Name      Chemistry          
            ##   <chr>  <chr>     <chr>              
            ## 1 Ms     Muscovite KAl2(Si3Al)O10(OH)2

    -   by chemistry as a regular expression:

        ``` r
        library(georefdatar)

        minsForChemistry('\\(SiO4\\)3$')
        ```

            ## # A tibble: 18 × 3
            ##    Symbol Name            Chemistry            
            ##    <chr>  <chr>           <chr>                
            ##  1 Alm    Almandine       Fe2+3Al2(SiO4)3      
            ##  2 Adr    Andradite       Ca3Fe3+2(SiO4)3      
            ##  3 Cdr    Calderite       Mn2+3Fe3+2(SiO4)3    
            ##  4 Erg    Eringaite       Ca3Sc2(SiO4)3        
            ##  5 Eul    Eulytine        Bi4(SiO4)3           
            ##  6 Glm    Goldmanite      Ca3V3+2(SiO4)3       
            ##  7 Grs    Grossular       Ca3Al2(SiO4)3        
            ##  8 Krr    Knorringite     Mg3Cr2(SiO4)3        
            ##  9 Maj    Majorite        Mg3(MgSi)(SiO4)3     
            ## 10 Mzr-Y  Menzerite-(Y)   (CaY2)Mg2(SiO4)3     
            ## 11 Mom    Momoiite        Mn2+3V3+2(SiO4)3     
            ## 12 Mmt    Morimotoite     Ca3(TiFe2+)(SiO4)3   
            ## 13 Prp    Pyrope          Mg3Al2(SiO4)3        
            ## 14 Sps    Spessartine     Mn2+3Al2(SiO4)3      
            ## 15 Tks    Trikalsilite    K2NaAl3(SiO4)3       
            ## 16 Tme    Trimerite       CaBe3Mn2+2(SiO4)3    
            ## 17 Uv     Uvarovite       Ca3Cr2(SiO4)3        
            ## 18 Wbh    Wayneburnhamite Pb9Ca6(Si2O7)3(SiO4)3

-   Query atomic mass from the periodic table of the elements:

    ``` r
    m('H')
    ```

        ## [1] 1.008

    ``` r
    m('H')*2 + m('O')
    ```

        ## [1] 18.015

    ``` r
    # Si wt% in muscovite
    round(3*m('Si') / (m('K')+3*m('Al')+3*m('Si')+12*m('O')+2*m('H')) * 100, 2)
    ```

        ## [1] 21.15
