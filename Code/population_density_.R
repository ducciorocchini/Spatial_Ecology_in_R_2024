# How to calculate the density of individuals in a population

# Installing the spatstat package
install.packages("spatstat")

# Recalling the package
library(spatstat)

# dataset
bei

plot(bei)
plot(bei, pch=19)
plot(bei, pch=19, cex=.5)

bei.extra
plot(bei.extra)

# Extracting data
elevation <- bei.extra$elev
plot(elevation)

elevation <- bei.extra[[1]]

# Density map starting from points
densitymap <- density(bei)
densitymap

plot(densitymap)
points(bei, col="green")
