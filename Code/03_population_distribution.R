# install.packages("sdm")
# install.packages("terra")

library(sdm)
library(terra)

file <- system.file("external/species.shp", package="sdm")
# [1] "/usr/local/lib/R/site-library/sdm/external/species.shp"

rana <- vect(file)
rana

rana$Occurrence

plot(rana)

pres <- rana[rana$Occurrence==1]

# Exercise: plot in a multiframe the rana dataset beside the pres dataset
par(mfrow=c(1,2))
plot(rana)
plot(pres)

# absence
# par pres abs
# pres + abs
# 
