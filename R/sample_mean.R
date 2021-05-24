#' Takes a random sample of size n from vec, then calculates and returns the mean of that subsample.
#'
#' @param vec a vector
#' @param n an integer
#' @return the mean of the subsample in vec
#'
#' @import dplyr
#'
#' @export


sample_mean <- function(vec, n) {
  return(mean(sample(vec, n, replace = TRUE)))
}


