#' This performs the sample_mean process many times (reps) and return a vector of the results.
#'
#' @param vec a vector
#' @param n an integer
#' @param reps an integer
#' @return Returns sample_mean called reps times
#'
#' @import dplyr

#' @export
many_sample_means <- function(vec, n, reps) {
  ret <- 1:reps %>%
    map(function(x) sample_mean(vec, n))

  return(unlist(ret))
}
