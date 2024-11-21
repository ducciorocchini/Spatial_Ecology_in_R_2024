# Spectral indices

library(imageRy)
library(terra)

# Listing files
im.list()

# Importing data
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

# band 1 = NIR
# band 2 = red
# band 3 = green

im.plotRGB(m2006, r=1, g=2, b=3)
im.plotRGB(m2006, r=3, g=2, b=1)
im.plotRGB(m2006, r=3, g=1, b=2)

# Ancient data
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
im.plotRGB(m1992, r=1, g=2, b=3)

par(mfrow=c(1,2))
im.plotRGB(m1992, r=1, g=2, b=3)
im.plotRGB(m2006, r=1, g=2, b=3)

