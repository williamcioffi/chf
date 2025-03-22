#' automatically generate some letter labels for arbitrary n
#'
#' @param n how many labels you want
#' @param case upper or lower case letters
#' @return a vector of labels
#' @details basically the column labels in a spreadsheet
#' @export
#' @examples
#' # make some labels
#' labs <- labelgenerator(10)
#' plot(1:10)
#' axis(3, at = 1:10, lab = labs)
#' 
#' # they'll repeat in the way you expect
#' labelgenerator(1000)

labelgenerator <- function(n, case = c('upper', 'lower')) {
  if(missing(n) | n < 1) {
    stop("labelgenerator: n must be a positive integer greater than 0")
  }
  
  # round n just in case
  n <- round(n)
  
  # default to upper if not specified
  if(missing(case)) case = case[1]
  
  # select the label pool
  pool = switch(case,
    upper = LETTERS,
    lower = letters,
    {
      warning("labelgenerator: invald input defaulting to upper case...")
      LETTERS
    }
  )
  
  np <- length(pool)
  
  outpool <- vector(length = n)
  newpool <- ""
  
  i <- 1
  poolcount <- 1
  count <- 1
  while(count <= n) {
    outpool[count] <- paste0(newpool[poolcount], pool[i])
    count <- count + 1
    
    if(i %% np == 0) {
      i <- 1
      poolcount <- poolcount + 1
      newpool[poolcount] <- outpool[poolcount - 1]
    } else {
      i <- i + 1
    }
  }
  
  outpool
}
