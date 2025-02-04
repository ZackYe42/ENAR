setwd("D:/OneDrive - UBC/Desktop/ENAR Data Fest") # Change to yours

packages <- c("dplyr", "haven","ggplot2")

install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
  library(pkg, character.only = TRUE)
}

lapply(packages, install_if_missing)

ds <- read.csv("Data/nhanes_data.csv")

ds99 <- filter(ds, svy_year == "1999-2000")

ds2 <- read_xpt("Data/DR1TOT_A.xpt")

merge_df <- merge(ds99, ds2, by.x = "svy_id", by.y = "SEQN")
