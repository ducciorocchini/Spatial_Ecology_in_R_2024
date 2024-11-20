# Script related to remotely sensed data visualization

# install.packages("terra")
# install.packages("devtools")
# install_github("ducciorocchini/imageRy")

library(terra)
library(imageRy)

# listing the data which are part of the package
im.list()

# importing the data
b2 <- im.import("sentinel.dolomites.b2.tif")
cl <- colorRampPalette(c("black", "grey", "light grey")) (100)
plot(b2, col=cl)

# Exercise: import band number 3 (green)
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=cl)

# importing the red band
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cl)

# importing the NIR band
b8 <- im.import("sentinel.dolomites.b8.tif")
plot(b8, col=cl)

# multiframe with all the images
par(mfrow=c(2,2))
plot(b2, col=cl) # blue
plot(b3, col=cl) # green
plot(b4, col=cl) # red
plot(b8, col=cl) # NIR

# stacking the images
sentstack <- c(b2, b3, b4, b8)
plot(sentstack, col=cl)

dev.off()

# plotting single layers
plot(sentstack[[1]], col=cl)
plot(sentstack[[4]], col=cl)

# changing color ramp palettes
clb <- colorRampPalette(c("dark blue", "blue", "light blue")) (100)

par(mfrow=c(2,2))
plot(b2, col=clb)

clg <- colorRampPalette(c("dark green", "green", "light green")) (100)
plot(b3, col=clg)

clr <- colorRampPalette(c("dark red", "red", "pink")) (100)
plot(b4, col=clr)

cln <- colorRampPalette(c("brown", "orange", "yellow")) (100)
plot(b8, col=cln)

# RGB plot
# sentstack[[1]] = blue
# sentstack[[2]] = green
# sentstack[[3]] = red
# sentstack[[4]] = NIR

im.plotRGB(sentstack, r=3, g=2, b=1)
im.plotRGB(sentstack, r=4, g=3, b=2)








