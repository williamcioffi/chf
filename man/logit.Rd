% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logit.R
\name{logit}
\alias{logit}
\title{logit}
\usage{
logit(p)
}
\arguments{
\item{p}{the numeric vector to which the deed is done}
}
\value{
a numeric vector deed done
}
\description{
does what you want
}
\examples{
anum <- -0.08004271
invlogit_anum <- exp(anum) / (exp(anum) + 1)

logit(invlogit_anum)
}
\seealso{
\code{\link[chf]{invlogit}}
}
