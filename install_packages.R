
# Run this script first to install the packages from GitHub and CRAN

# Install packages from CRAN:
install.packages("tidyverse")
install.packages("vegan")
install.packages("ggvegan")
install.packages("RSQlite")
install.packages("DBI")# also needs RSQLite installed
install.packages("devtools")
install.packages("patchwork")
install.packages("osfr")

# Install libraries from GitHub:
library(devtools)
remotes::install_github("gavinsimpson/ggvegan")
devtools::install_github("Between-the-Fjords/dataDownloader")

