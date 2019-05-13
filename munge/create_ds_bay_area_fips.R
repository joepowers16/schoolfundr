library(tidyverse)

source_file_paths()

bay_area_counties <- c("Alameda", "Contra Costa", "Marin", "Napa", "San Francisco", 
  "San Mateo", "Santa Clara", "Solano", "Sonoma") %>% 
  str_to_lower()

ds_bay_area_fips <- 
  read_csv(
    file_raw_bay_area_fips,
    col_types = cols(
      county = col_character(),
      fips = col_integer()
    )
  ) %>% 
  mutate(county = str_to_lower(county)) %>% 
  mutate(bay_dmy = county %in% bay_area_counties)

# quick check
length(bay_area_counties) == sum(ds_bay_area_fips$bay_dmy)

write_rds(ds_bay_area_fips, file_ds_bay_area_fips)
