% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mapping.R
\name{melt_map}
\alias{melt_map}
\title{convert a "wide" map into a "long" one}
\usage{
melt_map(df, id, measure, sep_pattern = NA)
}
\arguments{
\item{df}{tibble. rows containing NA in any of following variables are removed.}

\item{id}{string. name of a character variable in \code{df}, its elements must be unique and can only contain \emph{one} value each}

\item{measure}{string. name of a character variable in \code{df}, its elements needn't to be unique and contain multiple values (we use \code{\link[stringr:str_split]{stringr::str_split()}} to sperate them by \code{sep_pattern})}

\item{sep_pattern}{string. see \code{measure}, note that it is a \emph{pattern}, for example, '|' should be '\\|'}
}
\value{
tibble. column names are \code{id} and \code{measure}.
}
\description{
convert a "wide" map into a "long" one
}
\examples{
tibble::tribble(
    ~symbol, ~id, ~foobar,
    'A|B', '1', 'foo',
    'C', '2', 'bar',
    'D', '2', 'foobar'
) \%>\% melt_map('id', 'symbol', '\\\\|')

}
\seealso{
Other mapping: 
\code{\link{cast_map}()}
}
\concept{mapping}
