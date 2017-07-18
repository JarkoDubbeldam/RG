#' Load this package
#'
#' This function is called within every other function of this package, and calls \code{library(RG)} if it isn't attached yet. This ensures that you only need to use the \code{RG::} prefix once.
#'
#' @return Nothing!
#'
#' @examples {
#' RG::Load()
#' C(2,3,9)}
Load <- function(){
  if(!"RG" %in% names(sessionInfo()$otherPkgs))library(RG)
}
