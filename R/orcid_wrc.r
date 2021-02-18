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
  out <- "0000000311828578"
  if(!char) out <- as.numeric(out)

  out
}
