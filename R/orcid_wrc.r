#' my orcid id e.g. for setting seeds
#'
#' @return numeric representation of my orcid
#' @export
#' @examples
#' \dontrun{
#' set.seed(orcid_wrc())
#' x1 <- rnorm(100)
#' }

orcid_wrc <- function(char = FALSE) {
  if(char) {
    "0000000311828578"
  } else {
    0000000311828578
  }
}
