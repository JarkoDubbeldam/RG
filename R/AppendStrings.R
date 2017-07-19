#' Addition
#' 
#' Modified addition operator to work with strings. 
#' 
#' If the first argument (LHS) is of class \code{character}, the two arguments are concatenated and returned as string. Else the base implementation of \code{+} is called.
#'
#' @param e1 
#' @param e2 
#'
#' @return A string or numeric.
#' @export
#'
#' @examples
#' {
#' 1+1
#' "a"+"b"
#' }
`+` <- function(e1, e2){
  if(is.character(e1)){
    paste0(e1, e2)
  } else {
    .Primitive("+")(e1, e2)
  }
}


  

