# This code is related to multivariate analysis in R for monitoring communities
# to see the relationship in space among different species

# install.packages("vegan")
library(vegan)

data(dune)
dune
head(dune)
# View(dune)

multivar <- decorana(dune)

dca1 <- 3.7004
dca2 <- 3.1166
dca3 <- 1.30055
dca4 <- 1.47888

total <- dca1 + dca2 + dca3 + dca4

prop1 = dca1/total
prop2 = dca2/total

perc1 = prop1*100
perc2 = prop2*100

perc1+perc2
# 71.03683

plot(multivar)


# Achillea millefolium
# Bromus hordeaceus

