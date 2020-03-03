
# Run this script first to install the packages from GitHub and CRAN

# Install packages from CRAN:
install.packages("tidyverse")
install.packages("vegan")
install.packages("RSQlite")
install.packages("DBI")
install.packages("remotes")
install.packages("patchwork")
install.packages("osfr")

# Install libraries from GitHub:
remotes::install_github("gavinsimpson/ggvegan")
remotes::install_github("Between-the-Fjords/dataDownloader")

