# Keep the local renv environment for interactive development, but do not
# auto-activate it in CI where dependencies are installed explicitly.
if (Sys.getenv("CI") != "true" && file.exists("renv/activate.R")) {
  source("renv/activate.R")
}
