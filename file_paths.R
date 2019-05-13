dir_data <- here::here("schoolfundr_cloud", "data")
dir_raw <- fs::path(dir_data, "raw")

# Raw data
file_raw_bay_area_fips <- fs::path(dir_raw, "bay_area_county_fips_codes.csv")

# Cleaned data
file_ds_bay_area_fips <- fs::path(dir_data, "ds_bay_area_fips.rds")