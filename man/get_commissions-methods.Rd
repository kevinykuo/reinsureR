% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Claims-class.R
\docType{methods}
\name{get_commissions}
\alias{get_commissions}
\alias{get_commissions,Claims-method}
\title{Get commissions}
\usage{
get_commissions(object)

\S4method{get_commissions}{Claims}(object)
}
\arguments{
\item{object}{The object to display}
}
\description{
\code{get_commissions} gets the commissions induced by QS treaties applied to \code{Claims} (\code{\link{Claims-class}}) object.
}
\examples{
c <- data.frame(year = unlist(sapply(2000:2017, function(x) rep(x, rpois(1,3)))))
c$amount <- pmax(rnorm(nrow(c), 200000, 100000), 0)
p <- aggregate(amount ~ year, c, sum)
claims <- claims(c, p)
treaty_1 <- qs(0.8, com = 0.25)
claims <- apply_treaty(claims, treaty_1)
get_commissions(claims)

}
