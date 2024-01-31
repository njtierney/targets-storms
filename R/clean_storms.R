#' .. content for \description{} (no empty lines) ..
#'
#' .. content for \details{} ..
#'
#' @title
#' @param storms_raw
#' @return
#' @author njtierney
#' @export
clean_storms <- function(storms_raw) {

  storms_raw %>% 
    filter(year >= 1980)

}
