library(datasets)
data(iris)
iris
?iris

## Mean equals 7
df <- subset(iris, iris$Species == "virginica")
mean(df$Sepal.Length)

## What returns the 4 means?
?apply
apply(iris[, 1:4], 2, mean) # for matrix "2" indicates columns

## MTCARTS How can one calculate the average miles per gallon (mpg) 
## by number of cylinders in the car (cyl)? Select all that apply.
data(mtcars)
?mtcars

MpgPerCyl <- mtcars$mpg/mtcars$cyl

?sapply
?tapply
split(mtcars$mpg, mtcars$cyl)

sapply(split(mtcars$mpg, mtcars$cyl), mean) ## YES
tapply(mtcars$cyl, mtcars$mpg, mean)
with(mtcars, tapply(mpg, cyl, mean)) ## YES
tapply(mtcars$mpg, mtcars$cyl, mean) ## YES
mean(mtcars$mpg, mtcars$cyl)
split(mtcars, mtcars$cyl)
apply(mtcars, 2, mean)
lapply(mtcars, mean)
sapply(mtcars, cyl, mean)

## Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference 
## between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars? 127

df2 <- sapply(split(mtcars$hp, mtcars$cyl), mean)
df2 <- as.data.frame(df2)
AbsDiff <- abs(df2[1,1] - df2[3,1])
AbsDiff

# If you run debug(ls) what happens when you next call the 'ls' function?

?ls
ls
debug(ls)
ls(Global)
undebug(ls)





