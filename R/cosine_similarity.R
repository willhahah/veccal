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
    dot_pro = dot(x, y)                                   # inner product of the 2 vectors
    if (verbose) cat("The dot product is", dot_pro,"\n")
    if (verbose) cat("Calculating the length product...\n")
    len = sqrt(dot(x,x))*sqrt(dot(y,y))                   # product of 2 vector length
    if (verbose) cat("The length product is", len,"\n")
    if (verbose) cat("Calculating the cosine similarity...\n")
    cos_sim = dot_pro/len                                 # return cosine similarity
  }
}
