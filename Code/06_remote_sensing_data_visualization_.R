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













