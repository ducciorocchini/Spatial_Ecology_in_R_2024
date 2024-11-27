# Time series analysis

library(terra)
library(imageRy)

# Listing all the available files
im.list()

EN01 <- im.import("EN_01.png")
EN13 <- im.import("EN_13.png")

par(mfrow=c(1,2))
plot(EN01)
plot(EN13)

# Differencing images in time
dev.off() # to close the multiframe
difEN = EN01[[1]] - EN13[[1]]
plot(difEN)

# Example 2: Greenland data

# Importing several data latogether

gr <- im.import("greenland")
par(mfrow=c(1,2))
plot(gr[[1]])
plot(gr[[4]])

difgr <- gr[[1]] - gr[[4]]
dev.off()
plot(difgr)

im.plotRGB(gr, r=1, g=2, b=4)


