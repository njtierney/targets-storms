## Load your packages, e.g. library(targets).
source("./packages.R")
tar_source()
## Load your R files

## tar_plan supports drake-style targets and also tar_target()
tar_assign({
  storms_file <- tar_file("data/storms.csv")
  storms_raw <- read_csv(storms_file) |> tar_target()
  storms_tidy <- clean_storms(storms_raw) |> tar_target()
  storms_model <- model_storms(storms_tidy) |> tar_target()
  storms_loess <- fit_loess(storms_tidy) |> tar_target()
  model_summary <- summary(storms_model) |> tar_target()
  model_augment <- augment(storms_loess) |> tar_target()
  model_diagnostics <- plot_summary(model_augment) |> tar_target()
  # tar_quarto(eda, "doc/eda.qmd")
})
