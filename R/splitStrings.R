#' Split a vector into single characters or digits
#'
#' Takes a string and returns all separated characters. If the input is numeric, the input is split into its digits and returned as numerics.
#'
#' @param x Vector to split. Can be numeric or character.
#' @param on Character string to split on, defaults to \code{""}.
#'
#' @return If \code{length(x) == 1}, returns split as a vector, else as a list.
#' @export
#'
#' @examples
#' s("bla")
#' s(c("bla", "bla"))
#' s(155)
#' s(c(151, 239))
s <- function(x, on = ""){
  Load()
  num <- is.numeric(x)
  split <- strsplit(as.character(x), on)
  if (num) {
    split <- lapply(split, as.numeric)
  }
  if (length(split) == 1) {
    split <- split[[1]]
  }
  split
}
