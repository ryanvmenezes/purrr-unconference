library(tidyverse)

nested = repurrrsive::gap_simple %>% 
  group_by(year) %>% 
  nest()

nested

walk2(nested$year, nested$data, ~write_csv(.y, glue::glue('data/{.x}.csv')))     
