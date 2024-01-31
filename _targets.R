## Load your packages, e.g. library(targets).
source("./packages.R")
tar_source()
## Load your R files

## tar_plan supports drake-style targets and also tar_target()
tar_plan(
  tar_file(storms_file, "data/storms.csv"),
  storms_raw = read_csv(storms_file),
  storms_tidy = clean_storms(storms_raw),
  storms_model = model_storms(storms)
)
