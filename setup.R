# Run this script first to check required packages installed 

# Check recent version of R installed
if(getRversion() < "3.6.0") {
  stop("##########\nOld version of R\nPlease install latest version\n##########")
}

# Check recent version of Rstudio installed
if(RStudio.Version()$version < "1.0.1"){
  stop("##########\nOld version of Rstudio\nPlease install latest version\n##########")
}


# Check CRAN packages installed
CRAN_needed <- c(
  "tidyverse", #this includes dplyr, ggplot, tidyr etc
  "vegan",
  "RSQLite",
  "DBI",
  "remotes",
  "patchwork",
  "rmarkdown")

# check against currently installed packages
installed_packages <- .packages(all.available = TRUE)
CRAN_needed2 <- CRAN_needed[!CRAN_needed %in% installed_packages]

# download missing CRAN packages
if(length(CRAN_needed2) > 0){
  install.packages(CRAN_needed2)
}

# Install libraries from GitHub:
remotes::install_github("gavinsimpson/ggvegan", upgrade = FALSE)
remotes::install_github("Between-the-Fjords/dataDownloader", upgrade = FALSE)
# check all packages downloaded 
# if this line doesn't work - assert that didn't install

stopifnot(all(c(CRAN_needed, "ggvegan", "dataDownloader") %in% .packages(all.available = TRUE)))

# clean-up
rm(CRAN_needed, CRAN_needed2, installed_packages)

