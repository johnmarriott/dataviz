library(tidyverse)
library(here)

pollution <- read.csv(unz(here::here("../datasets/pollution_us_2000_2016.csv.zip"), "pollution_us_2000_2016.csv"))

pollution %>%
  filter(State == "California") %>%
  filter(as.Date(Date.Local) < as.Date("2016-01-01")) %>% # 2016 data is incomplete
  select(County, Date.Local, NO2.Mean, O3.Mean, SO2.Mean, CO.Mean) %>%
  rename(NO2 = NO2.Mean, O3 = O3.Mean, SO2 = SO2.Mean, CO = CO.Mean) %>%
  gather(Type, Value, -County, -Date.Local) %>%
  write.csv(here::here("../datasets/california_county_pollution_means.csv"), row.names=FALSE)
