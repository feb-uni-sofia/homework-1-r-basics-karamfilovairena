#a
xmin <- c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
xmax <- c( 25.0,22.8,31.2,27.3,28.4,20.2, 24.1)
#b
abs(xmax-xmin)
#c
avgMinTemp <- mean(xmin)
avgMaxTemp <- mean (xmax)
#d
xmin[ xmin < avgMinTemp]
#e
xmax[xmax > avgMaxTemp]
#f
date <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmin) <- date
names(xmax) <- date
#g
temperatures <- data.frame(xmin= xmin, xmax=xmax)
temperatures
#h
temperatures <- within(temperatures, {
xminFahrenheit <- xmin*1.8 +32
})
temperatures
#i
tempFahreinheit <- data.frame(xminFahrenheit= xminFahrenheit, {
  xmaxFahrenheint <- xmax*1.8 +32
  })
tempFahreinheit
#j
