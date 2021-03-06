% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as-symbol.R
\name{as_symbol}
\alias{as_symbol}
\alias{as_symbol_from_symbol}
\alias{as_symbol_from_entrez}
\alias{as_symbol_from_ensembl}
\alias{as_symbol_from_genbank}
\alias{as_symbol_from_entrez_or_symbol}
\alias{as_symbol_from_unigene}
\title{convert common gene ID (accession) to HUGO gene symbol}
\usage{
as_symbol_from_symbol(symbol)

as_symbol_from_entrez(entrez)

as_symbol_from_ensembl(ensembl)

as_symbol_from_genbank(genbank)

as_symbol_from_entrez_or_symbol(entrez_or_symbol)

as_symbol_from_unigene(unigene)
}
\arguments{
\item{symbol}{character. each element is a valid HUGO gene symbol, like \code{'ANKLE2'}}

\item{entrez}{character. each element is a valid entrez gene ID, like \code{'503538'}}

\item{ensembl}{character. each element is a valid ensembl gene ID, like \code{'ENSG00000148584'}}

\item{genbank}{character. each element is a valid Genbank accession, like \code{'BX647329'}}

\item{entrez_or_symbol}{character. each element is a valid entrez gene ID or HUGO gene symbol, refer to \code{vignette('content')}}

\item{unigene}{character. each element is a valid unigene ID, with or without \code{Hs.}, like \code{'41'}, \code{'Hs.96'}}
}
\value{
character. corresponding HUGO gene symbol
}
\description{
haha
}
\section{Caution}{
 \code{as_symbol_from_genbank()} ignores transcript id or version
number, anyhow, the trailing \verb{.\\\\d}.
}

