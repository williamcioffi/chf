#' my orcid id e.g. for setting seeds
#'
#' @param char default FALSE returns a numeric (note this will remove any leading 0s) otherwise will return a char.
#' @return numeric representation of my orcid
#' @export
#' @examples
#' \dontrun{
#' set.seed(orcid_wrc())
#' x1 <- rnorm(100)
#' }

orcid_my <- function(char = FALSE) {
  out <- "0000000311828578"
  if(!char) out <- as.numeric(out)

  out
}
