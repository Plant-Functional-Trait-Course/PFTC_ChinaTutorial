
# Run this script first to install the packages from GitHub and CRAN

# Install packages from CRAN:
install.packages("tidyverse")
install.packages("vegan")
install.packages("ggvegan")
install.packages("RSQlite")
install.packages("DBI")# also needs RSQLite installed
install.packages("devtools")
install.packages("cowplot")


# Install libraries from GitHub:
library(devtools)
remotes::install_github("richardjtelford/ggbiplot")
remotes::install_github("gavinsimpson/ggvegan")
remotes::install_github("gustavobio/tpldata")
remotes::install_github("gustavobio/tpl")
remotes::install_github("centerforopenscience/osfr")
devtools::install_github("Between-the-Fjords/dataDownloader")

