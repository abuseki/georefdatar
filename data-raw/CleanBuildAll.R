################################################################################
# Simple helper script to rebuild data sets from raw data
#
# Deletes all `*.rda` files in `data` and sources all `*.R` files (except this
# one) - leading to a rebuild of the `rda` file in `data`
################################################################################

# Flag to clean up the `data` directory (deleting the rda files there)
cleanUp <- TRUE

## Clean
if (cleanUp) {
  root <- 'data/'
  fs <- list.files(root, pattern = '.+\\.rda$')

  file.remove(lapply(fs, function(f) file.remove(paste0(root, f))))
}

## Build
root <- 'data-raw/'
fs <- list.files(root, pattern = '.+\\.R$')
### remove ourself from the list
fs <- fs[fs != "CleanBuildAll.R"]

### rebuild by sourcing
lapply(fs, function(f) source(paste0(root, f)))
