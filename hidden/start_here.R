#load packages
library("tidyverse")
library("DBI") 

# sources a few functions that are stored in China/community/R
# those can be replaced by a package

fl <- list.files("community/R/", full.names = TRUE)
sapply(fl, source)

## ---- load_community

# make database connection
#
con <- src_sqlite(path = "community/data/transplant.sqlite", create = FALSE)

#load cover data and metadata
cover_thin <- load_comm(con = con)

# make wide table
cover <- cover_thin %>% 
  select(-speciesName) %>%
  pivot_wider(names_from = species, values_from = cover, values_fill = list(cover = 0))

# make meta data
cover_meta <- cover[, 1:which(names(cover) == "year")]

# remove meta from cover
cover <- cover[, -(1:which(names(cover) == "year"))]
