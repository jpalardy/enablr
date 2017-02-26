
#' Population variance.
#'
#' @export
#'
#' @param d A vector
#'
#' @return \code{var()} without the \code{n - 1} division
#'
#' @examples
#' pop.var(1:10)
pop.var = function (d) {
  var(d) * (length(d)-1) / length(d)
}

#' Population standard deviation.
#'
#' @export
#'
#' @param d A vector
#'
#' @return \code{sd()} without the \code{n - 1} division
#'
#' @examples
#' pop.sd(1:10)
pop.sd = function (d) {
  sqrt(pop.var(d))
}

#-------------------------------------------------

#' The greatest common divisor of two numbers.
#'
#' @export
#'
#' @param x A number
#' @param y A number
#'
#' @return The greatest common divisor of \code{x} and \code{y}.
#'
#' @examples
#' gcd(12, 16)
#' gcd(3, 5)
gcd = function(x, y) {
  ifelse(x %% y != 0, gcd(y, x %% y), y)
}

#' The least common multiple of two numbers.
#'
#' @export
#'
#' @param x A number
#' @param y A number
#'
#' @return The least common multiple of \code{x} and \code{y}.
#'
#' @examples
#' lcm(12, 16)
#' lcm(3, 5)
lcm = function(x, y) {
  x * y / gcd(x, y)
}

