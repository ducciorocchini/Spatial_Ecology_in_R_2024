# Code for remote sensing data handling and analysis

# install.packages("devtools")
# install_github("ducciorocchini/imageRy")

library(terra)
library(imageRy)

# Listing data inside imageRy
im.list()

# Sentinel-2 bands
https://gisgeography.com/sentinel-2-bands-combinations/

# importing the data
b2 <- im.import("sentinel.dolomites.b2.tif")

cl <- colorRampPalette(c("black", "grey", "light grey")) (100)
plot(b2, col=cl)

# Exercise: import b3 and plot it with the previous palette
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=cl)

# Importing the red band
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cl)

# Importing the NIR band
b8 <- im.import("sentinel.dolomites.b8.tif")
plot(b8, col=cl)

# Multiframe
par(mfrow=c(2,2))
plot(b2, col=cl)
plot(b3, col=cl)
plot(b4, col=cl)
plot(b8, col=cl)

# stack
sentstack <- c(b2, b3, b4, b8)
plot(sentstack, col=cl)





