#' .. content for \description{} (no empty lines) ..
#'
#' .. content for \details{} ..
#'
#' @title
#' @param storms_tidy
#' @return
#' @author njtierney
#' @export
fit_loess <- function(storms_tidy) {

  loess(wind ~ lat + long, data = storms_tidy)

}
