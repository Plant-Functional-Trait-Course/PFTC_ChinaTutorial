
# Libraries
library("tidyverse")
library("dataDownloader")
library("DBI")
library("vegan")
library("ggvegan")
library("patchwork")

## Download the data
source("instructions_to_download.R")

# Read cover and composition data
source("start_here.R")

# Read trait data
traitsLeaf <- read_csv(file = "traits/data/PFTC1.2_China_2015_2016_LeafTraits.csv", col_names = TRUE)

traitsChem <- read_csv(file = "traits/data/PFTC1.2_China_2015_2016_ChemicalTraits.csv", col_names = TRUE)

# Rename the treatment levels
traitsLeaf <- traitsLeaf %>%
  mutate(Treatment=dplyr::recode(Treatment, "C"= "control", "0"="local", "1" ="warm1", "2"="cool1", "3"="warm3", "4"="cool3", "LOCAL"="outexp", "OTC"="OTC")) %>%
  mutate(Treatment = factor(Treatment, levels = c("local", "control", "warm1", "cool1", "warm3", "cool3","OTC", "outexp")))

traitsChem <- traitsChem %>%
  mutate(Treatment=dplyr::recode(Treatment,"C"= "control","0"="local", "1" ="warm1", "2"="cool1", "3"="warm3", "4"="cool3", "LOCAL"="outexp", "OTC"="OTC")) %>%
  mutate(Treatment = factor(Treatment, levels = c("local", "control", "warm1", "cool1", "warm3", "cool3", "OTC", "outexp")))
