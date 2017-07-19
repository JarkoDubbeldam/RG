#' Addition
#'
#' Modified addition operator to work with strings.
#'
#' If any of the arguments is of class \code{character}, the two arguments are concatenated and returned as string. Else the base implementation of \code{+} is called.
#'
#' @param e1 LHS
#' @param e2 RHS
#'
#' @return A string or numeric.
#' @export
#'
#' @examples
#' {
#' 1+1
#' "a"+"b"
#' "a"+1+2
#' 1+2+"a"
#' }
`+` <- function(e1, e2){
  if(is.character(c(e1, e2))){
    paste0(e1, e2)
  } else {
    .Primitive("+")(e1, e2)
  }
}




