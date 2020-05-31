#' df2mat
#'
#' convert a matrix to a dataframe
#'
#' @seealso \code{\link[chf]{mat2df}}
#' @param d dataframe to convert has to have 3 columns with the data in the third
#' @param symmetrical bool only symmetrical supported right now
#' @return matrix
#' @export

df2mat <- function(d, symmetrical = TRUE) {
  if(!symmetrical) stop ("non symmetric matrices not implemented yet...")
  
  uids <- sort(unique(c(d$id1, d$id2)))
  nids <- length(uids)
  
  m <- matrix(NA, nids, nids)
  dimnames(m) <- list(uids, uids)
  
  for(i in 1:nrow(d)) {
    m[d$id1[i], d$id2[i]] <- d[i, 3]
    m[d$id2[i], d$id1[i]] <- d[i, 3]
  }
  
  m
}
