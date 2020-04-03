#' Safely interpolate strings
#'
#' `glue_safe()` and `glue_data_safe()` differ from `glue()` and `glue_data()`
#' in that the safe versions only look up symbols from an environment use
#' [get()] they do not execute any R code. This makes them suitable when used
#' with untrusted input, such as inputs in a shiny application, where using the
#' normal functions would allow an attacker to execute arbitrary code.
#' @inheritParams glue
#' @inheritParams glue
#' @export
#' @example
#' "1 + 1" <- 5
#' # glue actually executes the code
#' glue("{1 + 1}")
#'
#' # glue_safe just looks up the value
#' glue_safe("{1 + 1}")
#'
#' rm("1 + 1")
glue_safe <- function(..., .envir = parent.frame()) {
  glue(..., .envir = .envir, .transformer = base::get)
}

#' @rdname glue_safe
#' @export
glue_data_safe <- function(.x, ..., .envir = parent.frame()) {
  glue_data(.x, ..., .envir = .envir, .transformer = base::get)
}