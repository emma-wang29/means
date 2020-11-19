#' Calculate Means for Vectors
#'
#' @param data
#' Numeric Vectors
#' @param trim
#' The fraction (0 to 0.5) of observations to be trimmed from each end of `data` before the `mean` is calculated.
#' @param remove_na
#' A logical value indicating whether `NA` values in `data` should be removed before the computation proceeds.
#' @param verbose
#' A logical value indicating whether the details of the computation should be showed during the computation process.
#' @param ...
#' Further arguments passed to the function.
#'
#' @return
#' A vector containing the mean values of input.
#' @export
#'
#' @examples
#' mean_cal(1:9)

mean_cal <- function(data, trim = 0, remove_na = TRUE, verbose = FALSE, ...) {
  if (verbose) cat("Calculating the mean...\n")
  mean <- mean(data, trim = trim, na.rm = remove_na, ...)

  if (verbose) cat("Done Calculations, the result is:\n")
  mean
}

