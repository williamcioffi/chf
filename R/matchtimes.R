#' closest match for instance for times
#' 
#' @param t1 a numeric vector to match
#' @param t2 the second numeric vectgor to match
#' @return another numeric vector of length equal to \code{t1}
#' @details it rounds up, who cares?
#' @export
#' @importFrom utils head
#' @examples
#' # consider two vectors
#' v1 <- seq(1, 11, by = 1)
#' v2 <- seq(1, 11, by = 4)
#'
#' # matchitup
#' matchtimes(v1, v2)

matchtimes <- function(t1, t2) {
# t1, t2 are numeric
	findInterval(t1, c(-Inf, head(t2, -1)) + c(0, diff(t2)/2))
}