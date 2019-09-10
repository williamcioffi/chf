#' make a stretch id from a date or something
#' 
#' @param stretches a numeric or character vector to convert into a stretchid
#' @return a stretchid numeric vector starting at 1
#' @details i do this all the time, but probably there is a cleverer pattern where you don't need to do it that i don't know about
#' @export
#' @examples
#' # consider a date vector
#' v1 <- c("2019-01-01", "2019-01-01", "2019-01-02", "2019-01-03")
#' 
#' # get the stretches
#' getstretchid(v1)

getstretchid <- function(stretches) {
  c(1, 1 + cumsum(stretches[1:(length(stretches) - 1)] != stretches[2:length(stretches)]))
}