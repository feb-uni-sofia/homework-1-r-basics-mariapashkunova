# a)

xmin <- c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
xmax <- c(25.0,22.8,31.2,27.3,28.4,20.2,24.1)

# b)

TempDifference <- xmax - xmin

# c)

AvgMin <- mean(xmin)

## No need to do it in a verbose way, simp
totalxmax <- sum(xmax)
AvgMax <- totalxmax/length(xmax)

# d)

xmin [xmin < AvgMin]

# e)

xmin [xmax > AvgMax]

# f)

dateNames <- c('01Mon18', '02Tue18', '03Wed18', '04Thu18', '05Fri18' , '06Sat18' , '07Sun18')

names(xmin) <- dateNames
names(xmax) <- dateNames

# g)
## Don't leave that much blank lines as it reduces the readability of the code

temperatures <- data.frame(
  df.dateNames = dateNames,
  df.xmin = xmin, 
  df.xmax = xmax,
  df.TempDifference = TempDifference
  
)

temperatures

length(temperatures)

# h)

temperatures <- within(temperatures, {
	xminFahrenheit <- (9 / 5) * df.xmin + 32
})

temperatures

# i)

xmaxFahrenheit <- (9/5)*xmax + 32
xminFahrenheit <- (9/5)*xmin + 32

## Not relevant
TempDifferenceF <- xmaxFahrenheit - xminFahrenheit



temperaturesF <- data.frame(
	df.dateNames = dateNames,
	df.xmin = xminFahrenheit, 
	df.xmax = xmaxFahrenheit,
	df.TempDifference=TempDifferenceF
)



temperaturesF

# j)

#1)
## Use shortcut notation 1:5
temperaturesF[c(1,2,3,4,5),c('df.dateNames','df.xmin','df.xmax','df.TempDifference')]

#2)

## Use shortcut -(6:7)
temperaturesF[c(-6,-7),c('df.dateNames','df.xmin','df.xmax','df.TempDifference')]
