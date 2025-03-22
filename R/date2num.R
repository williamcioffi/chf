#' translate character dates to numeric dates
#'
#' convert character dates to numeric dates (seconds since UNIX epoch by default).
#' @family date manipulators
#' @seealso \code{\link[base]{as.POSIXct}}
#' @param d a character vector of dates
#' @param tz as expected by \code{\link[base]{as.POSIXct}}. 
#' @param ... any other \code{\link[base]{as.POSIXct}} params
#' @note beware if you open any csvs in excel and re-save, the dates will likely be put into an absurb ambiguous form. additionally, seconds tend to be obliterated.
#' @export
#' @examples
#' date2num("1988-03-12 07:00:00", tz = "UTC", format = "%Y-%m-%d %H:%M:%S")

date2num <- function(d, tz = "UTC", ...) {
    as.numeric(as.POSIXct(d, tz = tz, ...))
}
