#' .. content for \description{} (no empty lines) ..
#'
#' .. content for \details{} ..
#'
#' @title
#' @param storms
#' @return
#' @author njtierney
#' @export
model_storms <- function(storms_tidy) {

  lm(wind ~ pressure + lat + long,
     data = storms_tidy)

}
