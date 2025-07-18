#' .. content for \description{} (no empty lines) ..
#'
#' .. content for \details{} ..
#'
#' @title
#' @param storms_model
#' @return
#' @author njtierney
#' @export
plot_summary <- function(model_augment) {
  ggplot(model_augment, aes(x = .fitted, y = .resid)) +
    geom_point()
}
