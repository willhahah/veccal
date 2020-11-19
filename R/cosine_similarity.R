#' Cosine Similarity
#'
#' @param x A numeric vector containing no NA
#' @param y A numeric vector (containing no NA) of the same size as `x`
#' @param verbose A logic value (TRUE or FALSE, default is FALSE). When it is TRUE, the function will show calculation steps.
#' @param ... Other arguments to be passed to methods, that are not currently used.
#'
#' @return
#' A number that is the cosine value of the angle between 2 same-size vectors `x' and `y`. Output range is between -1 and 1.
#' @export
#'
#' @examples
#' cosine_similarity(c(1,0), c(1,1))
cosine_similarity <- function (x, y, verbose = FALSE, ...) {
  if (!(is.vector(x) && is.vector(y))) {
    stop('Your input contains non-vector!')               # non-vector alarm
  } else if (!(is.numeric(x) && is.numeric(y))) {
    stop('Your input contains non-number element!')       # non-numeric alarm
  } else if (length(x) != length(y)) {
    stop('Your inputted vecotrs have different sizes!')   # vecotr different size alarm
  } else if (length(x) == 0) {
    stop('Your inputted vecotrs are of length 0!')        # vecotr of length 0 alarm
  } else if (sum(is.na(x)) > 0 || sum(is.na(y))>0) {
    stop('Your input contains NA!')                       # NA alarm
  } else {
    if (verbose) cat("Calculating the dot product...\n")
    dot_pro = pracma::dot(x, y)                                   # inner product of the 2 vectors
    if (verbose) cat("The dot product is", dot_pro,"\n")
    if (verbose) cat("Calculating the length product...\n")
    len = sqrt(pracma::dot(x,x))*sqrt(pracma::dot(y,y))                   # product of 2 vector length
    if (verbose) cat("The length product is", len,"\n")
    if (verbose) cat("Calculating the cosine similarity...\n")
    cos_sim = dot_pro/len                                 # return cosine similarity
  }
}
