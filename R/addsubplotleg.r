#' addsubplotleg
#'
#' adds a pretty subplot legend e.g., (a), (b), ..., etc. for par multipanel plots
#'
#' @param lab a string you want to display
#' @param cex the text cex
#' @export
#' @examples
#' \dontrun{
#' par(mfrow = c(2, 1)
#' plot(1:10)
#' addsubplotleg('(a)')
#' plot(21:30)
#' addsubplotleg('(b)')
#' }

addsubplotleg <- function(lab, cex = 1.5, ...) {
  devin <- dev.size("in")
  x <- grconvertX(c(0, devin[1]), from = "in", to = "user")
  y <- grconvertY(c(0, devin[2]), from = "in", to = "user")
  
  fig <- par('fig')
  x <- x[1] + (x[2] - x[1]) * fig[1:2]
  y <- y[1] + (y[2] - y[1]) * fig[3:4]
  
  x <- x[1] + strwidth(lab, cex = cex)
  y <- y[2] - strheight(lab, cex = cex)
  text(x, y, lab, cex = cex, xpd = NA, ...)
}
