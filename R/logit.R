#' logit
#' 
#' does what you want
#' 
#' @seealso \code{\link[cioffihelperfunctions]{invlogit}}
#' @param p the numeric vector to which the deed is done
#' @return a numeric vector deed done
#' @export
#' @examples 
#' anum <- -0.08004271
#' invlogit_anum <- exp(anum) / (exp(anum) + 1)
#' 
#' logit(invlogit_anum)
 
logit <- function(p) log(p / (1 - p))
