#' translate numeric dates back to \code{POSIX*}
#'
#' will convert a numeric vector (seconds since UNIX epoch) using \code{as.POSIXct}.
#' @family date manipulators
#' @seealso \code{\link[base]{as.POSIXct}}
#' @param d a numeric vector of dates.
#' @param tz,origin as expected by \code{\link[base]{as.POSIXct}}.
#' @note beware if you open any csvs in excel and re-save, the dates will likely be put into an absurb ambiguous form. additionally, seconds tend to be obliterated.
#' @export
#' @examples
#' num2date(574153200)

num2date <- function(d, tz = "UTC", origin = "1970-01-01", ...) {
    as.POSIXct(d, tz = tz, origin = origin)	
}
