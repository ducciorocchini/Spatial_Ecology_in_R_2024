# Code for visualizing remote sensing data

# install.packages("devtools")
# install.packages("terra")

library(devtools)

# installing the imageRy package

# install_github("ducciorocchini/imageRy")

library(imageRy)
library(terra)

im.list()

# importing data
b2 <- im.import("sentinel.dolomites.b2.tif")

# visualizing data
cl <- colorRampPalette(c("black", "grey", "light grey")) (100)
plot(b2, col=cl)

# green data
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=cl)

# red data
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cl)

# NIR data (near infrared)
b8 <- im.import("sentinel.dolomites.b8.tif")
plot(b8, col=cl)

# plot the bands altogether
par(mfrow=c(2,2))
plot(b2, col=cl)
plot(b3, col=cl)
plot(b4, col=cl)
plot(b8, col=cl)

# stacking images together
sent <- c(b2, b3, b4, b8)
plot(sent, col=cl)

dev.off()
plot(sent[[4]], col=cl)

# Plot the images with different color ramp palettes
clb <- colorRampPalette(c("dark blue", "blue", "light blue")) (100)

par(mfrow=c(2,2))
plot(b2, col=clb)

# new color ramp palette for the green band
clg <- colorRampPalette(c("dark green", "green", "light green")) (100)
plot(b3, col=clg)

# new color ramp palette for the red wavelength
clr <- colorRampPalette(c("dark red", "red", "pink")) (100)
plot(b4, col=clr)

# new color ramp palette for the NIR wavelength
cln <- colorRampPalette(c("brown", "orange", "yellow")) (100)
plot(b8, col=cln)



