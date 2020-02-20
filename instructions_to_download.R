# Instructions to download the Data
# load packages
library("osfr")
library("dataDownloader")
# Location of PFTC Data
# The data are located in OSF repository
# To know the exact location of each PFTC Data check this file:
# https://docs.google.com/spreadsheets/d/1y81Xv33BaoWV2FNx0F9XbikjKeHLGNxfmWZ2w4xmISk/edit#gid=0

## COMMUNITY DATA
path <- "community/"
if(!exists("path")) {
  path <- ""
}
# China community data from the transplants:
get_file(node = "4hjzu",
         file = "transplant.sqlite",
         path = "community/data")

## TRAIT DATA
path <- "traits/"
if(!exists("path")) {
  path <- ""
}
# China traits: Leaf traits
get_file(node = "emzgf",
         file = "PFTC1.2_China_2015_2016_LeafTraits.csv",
         path = "traits/data")
# China traits: Chemical traits
get_file(node = "emzgf",
         file = "PFTC1.2_China_2015_2016_ChemicalTraits.csv",
         path = "traits/data")

