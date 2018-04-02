#a
x<-c(4,1,1,4) 

#b
y<-c(1,4)

#c
Difference <- x - y # prints out : 3 -3 0 0. Basic vector subtraction -> each number in the first vector is reduced by its corresponding number in the second vector: 4,1 - 1,4 giving us 3,-3 and then 1,4 - 1,4 giving us 0,0.

#d
s<- c(x,y)

#e
rep(s,10)
length(rep(s,10))

#f
rep(s,each = 3)

#g

seq(7, 21, by=1)

7:21

#h

length(7:21)




