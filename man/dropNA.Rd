% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Utils.R
\name{dropNA}
\alias{dropNA}
\title{Drop rows with missing values or zero values}
\usage{
dropNA(x)
}
\arguments{
\item{x}{A matrix}
}
\value{
A matrix with NA dropped
}
\description{
This function drops rows in a matrix that have missing values, but keeps values equal to zero.
}
