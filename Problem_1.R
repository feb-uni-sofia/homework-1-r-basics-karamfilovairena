#a
x <- c( 4, 1, 1, 4)
#b
y <- c(1, 4)
#c

diff(x, y)

## Diff is something that we used in timeseries to compute lagged differences.
## Look at what it does
?diff

## We are looking for this here:

x - y

## that is the elementwise subtraction and it does work. Even though the 
## vectors have different length, R computes something and this something
## is equivalent to 

x - rep(y, 2)


## 
# It is impossible for R to 
## compute the difference between these two vectors, because they have a different length.

## NOTE: see the comment above. In your case the error does not refer to different length
## but diff compains about its 'lag' argument not being an integer...

#d
s <- c(x, y)
#e
m <-rep(s,10)
length(m)
#f
rep(s,each=3)
#g
seq(7,21, by=1)
7:21
#h
length(7:21)
