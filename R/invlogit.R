#' inverse logit
#' 
#' does what you want
#' 
#' @seealso \code{\link[cioffihelperfunctions]{logit}}
#' @param a the numberic vector to which the deed is done
#' @return numeric vector deed done
#' @export
#' @examples
#' anum <- 0.48
#' logit_anum <- log(anum/(1 - anum))
#' 
#' invlogit(logit_anum)

invlogit <- function(a) exp(a) / (exp(a) + 1)
