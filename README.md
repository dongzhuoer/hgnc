# hgnc
[![Build Status](https://travis-ci.com/dongzhuoer/hgnc.svg?branch=master)](https://travis-ci.com/dongzhuoer/hgnc)

## Overview

This package serves a utility for [rGEO](https://github.com/dongzhuoer/rGEO). 
    It convert a probe-to-geneID map to a probe-to-symbol map. (here **geneID** 
    refers to entrez gene ID, ensemble gene ID, RefSeq accession, etc.)


## Installation

```r
if (!('devtools' %in% .packages(T))) install.packages('devtools');
remotes::install_github('dongzhuoer/hgnc');
```

## Usage

refer to `vignette('hgnc')`.

## Resources

https://www.genenames.org/help/statistics-downloads
