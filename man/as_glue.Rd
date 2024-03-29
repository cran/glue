% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue.R
\name{as_glue}
\alias{as_glue}
\title{Coerce object to glue}
\usage{
as_glue(x, ...)
}
\arguments{
\item{x}{object to be coerced.}

\item{...}{further arguments passed to methods.}
}
\value{
A character vector with S3 class \code{"glue"}.
}
\description{
A glue object is a character vector with S3 class \code{"glue"}. The \code{"glue"}
class implements a print method that shows the literal contents (rather than
the string implementation) and a \code{+} method, so that you can concatenate with
the addition operator.
}
\examples{
x <- as_glue(c("abc", "\"\\\\\\\\", "\n"))
x

x <- 1
y <- 3
glue("x + y") + " = {x + y}"
}
