# format_decimal.R
###############################################################################
# This function formats a number in fixed number with an arbitray number of
# demial places.
###############################################################################

#' format_decimal
#'
#' @param x is the number to be for,mated.
#' @param k is the number of decimal digits
#'
#' @return the number as formatted string
#'
#' @examples
format_decimal <- function(x, k) {
    return(format(round(as.numeric(x), k), nsmall=k))
}