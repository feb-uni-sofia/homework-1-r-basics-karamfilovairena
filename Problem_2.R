
## NOTE: readability: leave some blank linkes between the code to make it more readable

## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.
## Do not leave blanks before paranthesis, e.g.
## BAD: data.frame (x, y)
## GOOTD: data.frame(x, y)

#a
xmin <- c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
xmax <- c( 25.0,22.8,31.2,27.3,28.4,20.2, 24.1)
#b
## Not relevant to the problem at hand. We are looking for the _difference_, 
## not the _absolute_ difference. In this special case the result is the same
## because xmax is always greater than xmin

abs(xmax-xmin)
#c
avgMinTemp <- mean(xmin)
avgMaxTemp <- mean (xmax)
#d
xmin[ xmin < avgMinTemp]
#e
xmax[xmax > avgMaxTemp]
#f
## Nice
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

## NOTE: this is an error
## you are referring to a variable 'xminFahrenheit' that does not 
## exist in the global environment
## It exists as a column in temperatures
## To refer to it use 

temperatures$xminFahrenheit 
## or
temperatures[, 'xminFahrenheit']

## Furthermore, the block inside a data.frame call is strange. 
## Perhaps you are mixin up two things. A call to 'data.frame'
## and a call to 'within' (see end of file)

tempFahreinheit <- data.frame(xminFahrenheit= xminFahrenheit, {
  xmaxFahrenheint <- xmax*1.8 +32
  })
tempFahreinheit
#j

## Easier way to do things:

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]
