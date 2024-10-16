# There are three important concpets:
# 1. objects
# 2. the assignment (<-)
# 3. comments (like this one!)
# 4. functions
# 5. arrays

2 + 3 # this is my first operation in R

# It is important to make use of objects
cato <- 2 + 3  # the result of the operation is assigned to an object called cato
cato

maria <- 4 + 2
maria

cato + maria

cato ^ maria

(cato + maria) ^ cato

# arrays
andrea <- c(10, 15, 20, 50, 70) # in a function arguments are separated by commas  
andrea

sofia <- c(100, 200, 300, 400, 500) # an array is a set of different elemnts
sofia

plot(sofia, andrea)

plot(sofia, andrea, pch=19)
# https://www.datanovia.com/en/blog/pch-in-r-best-tips/

plot(sofia, andrea, pch=19, cex=2)

plot(sofia, andrea, pch=19, cex=0.5)

plot(sofia, andrea, pch=19, cex=.5)

plot(sofia, andrea, pch=19, cex=2, col="blue")
# colors in R: https://r-graph-gallery.com/42-colors-names.html

plot(sofia, andrea, pch=19, cex=2, col="blue", xlab="CO2", ylab="amount of fruits")

