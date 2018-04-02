#a
x <- c( 4, 1, 1, 4)
#b
y <- c(1, 4)
#c
diff(x,y)
# It is impossible for R to compute the difference between these two vectors, because they have a different length.
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