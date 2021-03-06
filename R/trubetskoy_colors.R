#' use this color pallete
#' 
#' @param n the number of colors you want (1:22 if you want black and white and gray; 1:19 if not)
#' @param alpha set the alpha of all the colors together at once I don't let you do it indepdently
#' @param nogray defaults to \code{FALSE}, if set to \code{TRUE} then it doesn't return black and white amd gray.
#' @return a vector of hexcoded rgb colors
#' @details this uses the color pallete described here: \url{https://sashat.me/2017/01/11/list-of-20-simple-distinct-colors/} and inspired by Kenneth Kelly's 22 colors of maximum contrast. Kelly's are better matched for "brightness" but these are more distinct to my eyes.
#' @export
#' @examples 
#' \dontrun{
#' plot(1:22, rep(1, 22), pch = 16, cex = 5, col = trubetskoy_colors(22))  
#' }

trubetskoy_colors <- function(n, alpha = 1, nogray = FALSE) {
  if(nogray) {
    if(n > 19) stop("i need an n in [1, 19")
  } else {
    if(n > 22) stop("i need an n in [1, 22]")  
  }
  
  if(nogray) {
    cols <- c("#e6194b", "#3cb44b", "#ffe119", "#4363d8", "#f58231", "#911eb4", "#46f0f0", "#f032e6", "#bcf60c", "#fabebe", "#008080", "#e6beff", "#9a6324", "#fffac8", "#800000", "#aaffc3", "#808000", "#ffd8b1", "#000075")[1:n]
  } else {
	  cols <- c("#e6194b", "#3cb44b", "#ffe119", "#4363d8", "#f58231", "#911eb4", "#46f0f0", "#f032e6", "#bcf60c", "#fabebe", "#008080", "#e6beff", "#9a6324", "#fffac8", "#800000", "#aaffc3", "#808000", "#ffd8b1", "#000075", "#808080", "#ffffff", "#000000")[1:n]
  }
  
	if(alpha != 1) {
	  if(alpha < 0 | alpha > 1) stop("alpha needs to be on [0, 1]")
	  decalpha <- round(alpha * 255)
	  hexalpha <- as.hexmode(decalpha)
	  cols <- paste(cols, hexalpha, sep = "")
	}
	
	cols
}