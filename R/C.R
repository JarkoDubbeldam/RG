#' Numerical concatenation
#'
#' @param ... Numerics
#'
#' @return The digits from input concatenated. Returned as numeric.
#' @export
#'
#' @examples
#'
#' RG::C(2,3,9)
#' C(1,5,1)
C <- function(...){
  Load()
  x <- as.numeric(paste0(...))
  if(length(x))x else 0
}
