
# Run this script first to install the packages from GitHub and CRAN

# Install packages from CRAN:
install.packages("tidyverse")
install.packages("vegan")
install.packages("RSQLite")
install.packages("remotes")
install.packages("patchwork")

# Install libraries from GitHub:
remotes::install_github("gavinsimpson/ggvegan", upgrade = FALSE)
remotes::install_github("Between-the-Fjords/dataDownloader", upgrade = FALSE)

