#load packages
library("tidyverse")
library("DBI") 

# sources a few functions that are stored in China/community/R
# those can be replaced by a package

fl <- list.files("community/R/", full.names = TRUE)
sapply(fl, source)
path <- "community/"

## ---- load_community

if(!exists("path")) {
  path <- ""
}

# make database connection
#
con <- src_sqlite(path = paste0(path, "/data/transplant.sqlite"), create = FALSE)

#load cover data and metadata
cover_thin <- load_comm(con = con)

# make fat table
cover <- cover_thin %>% 
  select(-speciesName) %>%
  spread(key = species, value = cover, fill = 0)

# make meta data
cover_meta <- cover[, 1:which(names(cover) == "year")]

# remove meta from cover
cover <- cover[, -(1:which(names(cover) == "year"))]
