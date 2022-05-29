#' i'm a dinosauR
#'
#' @return a dinosauR?
#' @export
#' @examples
#' \dontrun{
#' dinosauR()
#' # and enjoy
#' }

dinosauR <- function() {
require(jpeg)
 img <- jpeg::readJPEG(system.file(".", "kiwi_and_egg_picturesque_new_zealand_1913.jpg", package = "chf"))
 r <- as.raster(img[, , 1:3])
 plot(r)
}
