require(ggplot2)

x <- 0.120000
i <- 1
vectX <- c()
vectY <- c()

while ( i <= 100)
{
  y <- 4 * x * ( 1 - x)
  vectX[[i]] <- i
  vectY[[i]] <- y
  x <- y
  i <- i + 1
}
print(y)
theDF <- data.frame(vectX, vectY)
ggplot(theDF, aes(x = vectX, y = vectY)) + geom_line()
