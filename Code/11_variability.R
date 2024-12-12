# Script to measure variability

library(imageRy)
library(terra)

im.list()

sent <- im.import("sentinel.png")
im.plotRGB(sent, r=1, g=2, b=3)

# bands:
# 1 NIR
# 2 red
# 3 green

im.plotRGB(sent, r=2, g=1, b=3)
im.plotRGB(sent, r=2, g=3, b=1)

# measuring standard deviation
nir <- sent[[1]]
sd3 <- focal(nir, matrix(1/9, 3, 3), fun=sd)


