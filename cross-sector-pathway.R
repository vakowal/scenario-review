# filter and summarize AR6 scenarios to update cross-sector pathway
library(rstudioapi)
library(readxl)

proj_dir <- dirname(dirname(getSourceEditorContext()$path))

scen_key <- read_excel(paste0(
  proj_dir, "/IPCC_AR6/AR6_Scenarios_Database_metadata_indicators_v1.1.xlsx"),
  sheet="meta_Ch3vetted_withclimate")
scen_df <- read.csv(
  paste0(proj_dir, "/IPCC_AR6/AR6_Scenarios_Database_World_v1.1.csv"))
