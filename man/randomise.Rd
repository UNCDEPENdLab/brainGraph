% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/brainGraph_GLM.R
\name{setup_randomise}
\alias{setup_randomise}
\alias{randomise}
\title{Helper function to setup for randomise}
\usage{
setup_randomise(X, con.mat, con.type, nC)

randomise(ctype, N, perms, DT, nC, measure, X, con.mat, alternative)
}
\arguments{
\item{X}{Numeric matrix, if you wish to supply your own design matrix
(default: \code{NULL})}

\item{con.mat}{Numeric matrix specifying the contrast(s) of interest; if
only one contrast is desired, you can supply a vector}

\item{con.type}{Character string; either \code{'t'} or \code{'f'} (for t or
F-statistics). Default: \code{'t'}}

\item{nC}{Integer; the number of contrasts}

\item{N}{Integer; number of permutations to create (default: 5e3)}

\item{perms}{Matrix of permutations, if you would like to provide your own
(default: \code{NULL})}

\item{DT}{\code{data.table} with outcome variables}

\item{measure}{Character string of the graph measure of interest}

\item{alternative}{Character string, whether to do a two- or one-sided test
(default: \code{'two.sided'})}
}
\value{
A list containing:
  \item{Mp}{The full partitioned model, joined}
  \item{Rz}{The residual-forming matrix}
  \item{MtM}{The inverse of the cross product of the full model}
  \item{eC}{The \emph{effective contrast}, equivalent to the original, for
    the partitioned model \code{[X, Z]} and considering all covariates}
  \item{dfR}{The residual degrees of freedom of the full partitioned model}
  \item{CMtM}{(only for F-contrasts) The effective contrast multiplied by the
    inverse of the cross-product of the full model.}
  \item{rkC}{(only for F-contrasts) The rank of the effective contrast
    matrix.}
}
\description{
\code{setup_randomise} is used to setup the data/objects for any function
that does permutations for GLM-based analysis.
}
\keyword{internal}
