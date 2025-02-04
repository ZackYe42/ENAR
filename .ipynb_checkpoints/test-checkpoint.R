setwd("D:/OneDrive - UBC/Desktop/ENAR Data Fest")

ds <- nhanes_data

library(dplyr)
library(haven)

ds1 <- ds %>% 
  select(bp_sys_mean, bp_dia_mean, htn_jnc7, htn_accaha)
head(ds1)
summary(ds$svy_id
)

ds2 <- read_xpt("DRXIFF_B.xpt")
summary(ds2$SEQN)

ds %>% group_by(svy_year) %>% 
  summarise(ds$svy_id)

ds %>%
  group_by(svy_year) %>%
  summarise(
    min_svy_id = min(svy_id, na.rm = TRUE),
    max_svy_id = max(svy_id, na.rm = TRUE),
    unique_ids = n_distinct(svy_id)
  )

ds3 <-  read_xpt("DRXIFF_B.xpt")
summary(ds3$SEQN)

ds31 <- read_xpt("DR1IFF_C.xpt")
ds32 <- read_xpt("DR2IFF_C.xpt")

summary(ds31$SEQN)
length(ds31$SEQN)

summary(ds32$SEQN)
length(ds32$SEQN)
