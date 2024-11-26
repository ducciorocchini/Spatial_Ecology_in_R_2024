# time series analysis

library(imageRy)
library(terra)

im.list()

# import the data
EN01 <- im.import("EN_01.png")
EN13 <- im.import("EN_13.png")

par(mfrow=c(2,1))
im.plotRGB.auto(EN01)
im.plotRGB.auto(EN13)

# using the first element (band) of images
dif = EN01[[1]] - EN13[[1]]

# palette
cldif <- colorRampPalette(c("blue", "white", "red")) (100)
plot(dif, col=cldif)


### New example: temperature in Greenland

# how to import severla files altogether
greenland <- im.import("greenland")

plot(green)

par(mfrow=c(1,2))
plot(greenland[[1]], col=viridis(100))
plot(greenland[[4]], cpò=viridis(100))

plot(greenland[[1]], col=rocket(100))
plot(greenland[[4]], cpò=rocket(100))

# Exercise: make the differencxe between the first and the final elemnts of the stack
difg <- greenland[[4]] - greenland[[1]]
plot(difg)

# Exercise: make a RGB plot using different years
im.plotRGB(green, r=1, g=2, b=3)




