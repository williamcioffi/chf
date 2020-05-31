#' mat2df
#'
#' convert a matrix to a dataframe
#'
#' @seealso \code{\link[chf]{df2mat}}
#' @param m matrix
#' @param datlabel character of what you want the column to be in the df
#' @param symmetrical bool only TRUE is currently supported
#' @param diag bool only FALSE is currently supported
#' @param stringsAsFactors bool don't mess with it
#' @return data.frame
#' @export

mat2df <- function(m, datlabel = "value", symmetrical = TRUE, diag = FALSE, stringsAsFactors = FALSE) {
  if(!symmetrical) stop("non symmetric matrices not implemented yet...")
  if(diag) stop("diagonal not implemented yet")
  if(stringsAsFactors) warning("stringsAsFactors set to TRUE... are you sure you want that?")
  
  if(is.null(rownames(m))) rownames(m) <- 1:nrow(m)
  if(is.null(colnames(m))) colnames(m) <- 1:nrow(m)
  
  i1 <- matrix(rep(rownames(m), ncol(m)), nrow(m), ncol(m))
  i2 <- t(i1)
  
  ut <- upper.tri(m)
  
  out <- data.frame(id1 = i1[ut], id2 = i2[ut], dat = m[ut], stringsAsFactors = stringsAsFactors)
  names(out)[3] <- datlabel
  
  out
}
