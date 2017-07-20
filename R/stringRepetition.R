#' Character repetition
#' 
#' Shorthand for \code{paste(rep(e1, each = e2), collapse = "")}. Works like regular multiplication if \code{e1} is not character.
#'
#' @param e1 
#' @param e2 
#'
#' @return Character if \code{e1} is character, regular output otherwise.
#' @export
#'
#' @examples
#' 2*2
#' "A"*2
#' "A"*2+1
#' "A"*(2+1)
`*` <- function(e1, e2){
  if(is.character(e1)){
    paste(rep(e1, each = e2), collapse = "")
  } else {
    .Primitive("*")(e1, e2)
  }
}
