#' tiny function for navigating pages of plots mainly
#'
#' @param f this is the function you want to iterate
#' @details Sometimes I have a big for loop with a bunch of diagnostic plots and a readline() at the end. Use this instead you can go forward and back and skip all around. Some basic error checking.
#' @export


formenu <- function(f = function(i) {print(i)}) {
  quit <- FALSE
  i <- NA
  
  while(!quit) {
    resp <- readline(paste0("(q)uit | (n)ext | (p)rev | i = [", i, "] "))
    if(tolower(resp) == "q") {
      quit <- TRUE
    } else if(tolower(resp) == "n") {
      if(!is.na(i)) {
        i <- i + 1
      }
    } else if(tolower(resp) == "p") {
      if(!is.na(i)) {
        i <- i - 1
      }
    } else {
      i <- as.numeric(resp)
    }

    if(!is.na(i)) {
      out <- tryCatch(f(i),
       error = function(e) {
         print(e)
         return(-1)
       })
       
       if(length(out) > 0) {
         i <- NA
       }
    }
  }
}
