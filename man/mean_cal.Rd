% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/meancal.R
\name{mean_cal}
\alias{mean_cal}
\title{Calculate Means for Vectors}
\usage{
mean_cal(data, trim = 0, remove_na = TRUE, verbose = FALSE, ...)
}
\arguments{
\item{data}{Numeric Vectors}

\item{trim}{The fraction (0 to 0.5) of observations to be trimmed from each end of \code{data} before the \code{mean} is calculated.}

\item{remove_na}{A logical value indicating whether \code{NA} values in \code{data} should be removed before the computation proceeds.}

\item{verbose}{A logical value indicating whether the details of the computation should be showed during the computation process.}

\item{...}{Further arguments passed to the function.}
}
\value{
A vector containing the mean values of input.
}
\description{
Calculate Means for Vectors
}
\examples{
mean_cal(1:9)
}
