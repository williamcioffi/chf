#' change (or add) alpha to colors
#'
#' @param col color or vector of colors
#' @param alpha value to add or change. on [0, 1].
#' @return rgb colors or vector of rgbcolors with alpha
#' @export
#' @importFrom grDevices col2rgb rgb
#' @examples
#' # numeric
#' change_alpha(1, .5)
#' 
#' # rgb
#' change_alpha(rgb(1, 0, 1), .5)
#' change_alpha("#ff00ff", .5)
#' 
#' # multiple
#' change_alpha(1:3, alpha = 0.5)
#' change_alpha(1:3, alpha = c(0.1, 0.2, 0.3))

change_alpha <- function(col, alpha) {
  if(missing(col) | missing(alpha)) {
    stop("change_alpha: must specify at least a color and a desired alpha level")
  }
  
  if(length(col) %% length(alpha) != 0) {
    stop("change_alpha: alpha must be a multiple of the number of colors")
  }
  
  color <- col2rgb(col, alpha = FALSE)/255
  rgb(t(color), alpha = alpha)
}
