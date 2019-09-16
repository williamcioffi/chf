#' apply Chauvenet's criterion to find outliers
#'
#' @param y a numeric vector time series
#' @param predetermined threshold
#' @param na.rm boolean defaults to TRUE for \code{mean} and \code{sd}
#' @return a list of two vectors: \code{outliers} boolean vector where TRUE is the outliers and \code{crit} which are the critical values.
#' @export
#' @examples
#' # make some data
#' y <- sin(1:100 / pi)
#' y[25] <- y[25]*3
#' 
#' chau(y, .5)

chau <- function(y, threshold, na.rm = TRUE) {
  ybar <- mean(y, na.rm = na.rm)
  sigma <- sd(y, na.rm = na.rm)
	
  ny <- length(y)
	
  # calculate t for each datapoint in y
  z_sus <- vector()
  for(i in 1:ny) {
    z_sus[i] <- (y[i] - ybar) / sigma
  }
	
  # two tailed prop
  prob <- 2 * (1 - pnorm(z_sus))
	
  # multiply by the number of samples (ny)
  crit <- ny * prob
	
  # find the outliers
  outliers <- crit < threshold
	
  list(outliers = outliers, crit = crit)
}
