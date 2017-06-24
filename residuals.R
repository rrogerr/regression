#influence measures, dfbetas, hatvalues

x <- rnorm(20)
y <- x + rnorm(20, sd = 0.1)

# aligned outlier

x0 <- 5
y0 <- 5

x1 <- c(x0, x)
y1 <- c(y0, y)

plot(x1, y1)

fit <- lm(y1~x1)
round(hatvalues(fit)[1:10],3)
round(dfbetas(fit)[1:10,2],3)

# non-aligned outlier

x0 <- 5
y0 <- 20

x1 <- c(x0, x)
y1 <- c(y0, y)

plot(x1, y1)

fit <- lm(y1~x1)
round(hatvalues(fit)[1:10],3)
round(dfbetas(fit)[1:10,2],3)

x0 <- 5
y0 <- 0

x1 <- c(x0, x)
y1 <- c(y0, y)

plot(x1, y1)

fit <- lm(y1~x1)
round(hatvalues(fit)[1:10],3)
round(dfbetas(fit)[1:10,2],3)

x0 <- 0
y0 <- 5

x1 <- c(x0, x)
y1 <- c(y0, y)

plot(x1, y1)

fit <- lm(y1~x1)
round(hatvalues(fit)[1:10],3)
round(dfbetas(fit)[1:10,2],3)