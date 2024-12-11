# Code to import external data

library(terra)

setwd("/home/duccio/Downloads")
# Windowds: "C:\\path\Downloads" -> "C://path/Downloads"

getwd()

scotland <- rast("scotland_outerhebrides_oli_20240918_lrg.jpg")
plotRGB(scotland, r=1, g=2, b=3)

# Exercise: download a set of the Earth Observatory and upload it in R
# Any ecological process is ok
algae <- rast("lakevillarrica_oli_2023123_lrg.jpg")
plot(algae)



