# Code to import external data

library(terra)

# seeting the working directory
setwd("/home/duccio/Downloads")
# Windows users: C:\\path\Downloads -> C://path/Downloads

# get info
getwd()

scotland <- rast("scotland_outerhebrides_oli_20240918_lrg.jpg")
plotRGB(scotland, r=1, g=2, b=3)

# Exercise: go to Earth Observatory and import another set
korea <- rast("koreasnow_tmo_20241129_lrg.jpg")
plotRGB(korea, r=1, g=2, b=3)

# Copernicus data




