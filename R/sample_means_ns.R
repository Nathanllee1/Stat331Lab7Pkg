#' It performs the many_sample_means process for each of the values in the ns vector.
#'
#' @param vec a vector
#' @param n an integer
#' @param ns a vector
#'
#' @return A dataframe with many_sample_means on each value of the ns vector
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sample_means_ns <- function(vec, reps, ns) {
  mapped <- ns %>%
    map(function(x) many_sample_means(vec, x, reps))

  mapped <- data.frame(mapped)
  colnames(mapped) <- ns

  mapped <- mapped %>%
    pivot_longer(cols=1:length(ns), "n")

  return(mapped[, c("value", 'n')])

}
