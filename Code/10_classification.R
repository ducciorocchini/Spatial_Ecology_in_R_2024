# Classifying imagery data

library(terra)
library(imageRy)
library(ggplot2)
# install.packages("patchwork")
library(patchwork)

im.list()

sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

sunc <- im.classify(sun, num_clusters=3)

# Mato Grosso example

mato1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
mato2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

mato1992c <- im.classify(mato1992, num_clusters=2)
# class 1 = human related areas + water
# class 2 = forest

mato2006c <- im.classify(mato2006, num_clusters=2)
# class 1 = human related areas + water
# class 2 = forest

# frequencies of pixels inside each class
f1992 <- freq(mato1992c)

tot1992 <- ncell(mato1992)

p1992 <- f1992 * 100 / tot1992
# percentages 1992
# human related areas: 17
# forest: 83

f2006 <- freq(mato2006c)

tot2006 <- ncell(mato2006c)

p2006 <- f2006 * 100 / tot2006
# percentages 2006
# human related areas: 55
# forest: 45

# final tabòe
# columns:
class <- c("forest", "human")
y1992 <- c(83, 17)
y2006 <- c(45, 55)

tabout <- data.frame(class, y1992, y2006)

# Final ggplot graph!

p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p1 + p2
p1 / p2







                      
