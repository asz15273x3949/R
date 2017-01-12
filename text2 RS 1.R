# <- ¥Nªí =
# c ¥Nªí ³sµ²
#µù¸Ñ


#R first
z <- 5
z

#R??–å??
y <- c(1,2,3,4,5,6,7,8,9,10)
x <- c(10,9,8,7,6,5,4,3,2,1)
plot(x,y)

#R ¹Ï§Î
demo(graphics)

data(iris)
plot(iris)

#--------------2016/09/26

#Taiwan Map
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="Taiwan",zoom=8)
ggmap(map.taiwan)

#¦w¸Ë®M¥ó
install.packages("C50")
#®M¥ó¸ü¤J
library(C50)
#²¾°£®M¥ó
remove.packages("C50")

#R½m²ß
x <- 10
x
y <- x^2
y
z <- sqrt(y)
z

#«¬ºA(mode)»Pªø«×(length)














x3
mode(x3)
length(x3)
x4 <- "Hello"
mode(x4)
length(x4)
x5 <- 4+2i
mode(x5)
length(x5)
x6 <- c(1,2,3,4,5)
mode(x6)
length(x6)

#Vector(¦V¶q)
v <- c(10, 5, 3.1, 6.4, 9.2, 21.7)
v
length()
mode(v)

#NA(¯Ê­È)
v <- c(10, 5, NA, 6.4, 9.2, 21.7)
v
v[2]
v2 <-1:10
v2
v2[1]

#Matrix(¯x°})
x <- matrix(1:24, nrow = 4, ncol = 6, byrow = TRUE)
x
y <- matrix(1:24, nrow = 4, ncol = 6, byrow = TRUE)
y

#cbind()&rbind()
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1, x2, x3)
xc
xr <- rbind(x1, x2, x3)
xr

#Âà¸m(Transposition)
xc_t <- t(xc)
xc_t

nrow(x)
ncol(x)

x[1,]
x[,2]
x[2,3]

eigen(xc)
xc
xr
z <- xc %*% xr
z

#Array(°}¦C)
x <- 1:24
dim(x) <- c(4,6)
x
x <- array(1:24, dim=c(4,6))
x[2,4]
dim(x) <- c(3,4,2)
x <- array(1:24, dim=c(3,4,2))
x
x[2,3,1]
x[3,1,2]
    
x <- array(0, dim=c(4,6))
x

#Factor(¦]¤l)
x <- factor(c("¨k","¤k","¨k","¨k","¤k"))
x

#dataframe(¸ê®Æ®Ø¬[)
id <- c(1,2,3,4)
age <- c(25, 30, 35, 40)
sex <- c("Male", "Male", "Female","Female")
pay <- c(30000, 40000, 45000, 50000)

x_dataframe <- data.frame(id, age, sex, pay)
x_dataframe
x_dataframe[3,2]
x_dataframe[4,]
x_dataframe[2]
x_dataframe$age
x_dataframe <- edit(x_dataframe)
x_dataframe

#list¦Cªí
id <- c(1,2,3)
sex <- c("male","male","female")
pay <- c(30000,40000,45000)
y_dataframe <- data.frame(id, sex, pay)
gender <- factor(c("¨k","¨k","¤k"))
Paul.Family <- list(name="Paul",wife="Iris",no.kids=3, kids.age=c(25,28,30),gender,y_dataframe)
Paul.Family

Paul.Family$Skids.age
Paul.Family[4]
Paul.Family[[4]]

Paul.Family$kids.age[2]
Paul.Family[[4]][2]
#¿ù»~paul.Family[[4]][2]

#CH2 ¸ê®ÆªºÅª¨ú»P¼g¤J
getwd()
setwd("C:/")
getwd()

X <- read.table("x.csv", sep=",",header = TRUE)
X
X$age
X[1, 2]

X <- read.table("x.csv", sep=",", header = FALSE) #¿ùªº
X
str(X)

x <-read.csv("x.csv",header=TRUE)
x 

x <- read.table("x.txt",sep = "\t",header = TRUE)
x

x <- read.table("x.txt",header = TRUE)
x

x <- scan("")
x

my <- scan(file="",what=list(name="",pay=integer(0),sex=""))
my

x <-scan("x1.txt")
x

write.table(x,"c:/x_file,csv",row.names = FALSE,
            col.names = FALSE,sep = ",")

x <- scan("x1.csv",sep = ",",what=list(id=integer(0),
                                       age=intager(0),pay=integer(0)))
x

write.table(x,"c:/x_file.csv",row.names = FALSE,
            col.names = TRUE,sep = ",")

#data¤º«Ø¸ê®ÆÀÉ
data()

data(iris)
iris
str(iris)
summary(iris)

save(iris, file="c:/iris.RData")
load("c:/iris.RData", .GlobalEnv)
iris


#²Ä¤T³¹¬yµ{±±¨î
a <- c(1,2,3)
x <- a + 2
x
#()ª½±µÅã¥Üµ²ªG
(x <- a + 2)
#µ²¦X©R¥O
{a <- c(1,2,3);x <- a+2}
x
({a <- c(1,2,3); x<- a+2})

#if else
x <- 6
if (x>5) y=2 else y=4
y

x <- 3
if (x<5) y=10
y

x <- 3
y <- 1
if(x < 5 && y < 5){y <- 10; z <- 5}
y
z

#--------------------
#¤U¨â­Ó¤@¼Ë ¼gªk¤£¦P
x <- 20
y <- ifelse (x>5,2,3)
y

if (x>5) y <- 2 else y<- 3
y
#--------------------

#ªÅ¥Õ

#switch
x <- 1
switch(x,5,sum(1:10),rnorm(5))
       
y <- 1
switch(y,juice = "apple",meat = "pork")

y <- "juice"
switch(y,juice = "apple",meat = "pork")
       
#for
x <- 0
for (i in 1:5)x <- x + i
x

x <- 0
y <- 0
for(i in 1:5){x <- x+i;y <- i^2}
x
y

#while
sum <- 0
i <- 1
while(i <=10){sum <- sum + i; i <- i + 1}
sum
       
#repeat
sum <- 0
i <- 1
repeat{
  sum <- sum + i
  i <- i + 1
  if(i > 10)break
  }
sum

#%% ¾l¼Æ %/% °Ó
sum <- 0
for(i in 1:50){
  if(i %% 2 == 0)next
  sum <- sum + i
}
sum

#apply
x <- array(1:24,dim = c(4,6))
x
apply(x,1,sum)
apply(x,2,sum)

#¦Û­q¨ç¼Æ
myfun <- functoin(x) {y <- x + 2;return(y)}
myfun(1)
myfun(100)
myfun()#error
myfu <- function(x=1){y <- x + 2;return(y)}
myfun(50)
myfun()

# <<- §ïÅÜ¨ç¼Æ¥~­±ªºÂ¾
x <- 1
myfun <- function(x){x <- 2;print(x)}
myfun(x)
x
x <- 1
myfun <- function(x){x <<- 2;print(x)}
myfun(x)
x

#factorial¬Ò­¼
factorial <- function(x=1) {
  y <- 1
  for(i in 1:x) y <- y * i
  return(y)
}
factorial(5)
factorial(10)

#²Ä¥|³¹
demo(graphics)
demo(image)

#°ª¶¥Ã¸¹Ï
y <- sin(1:20)
plot(y, type="l", main="sin plot", xlab="x", ylab="y")

#§C¶¥Ã¸¹Ï
title(sub="¹Ï4-2")
points(5,0.5)

#¤¬°Ê¦¡Ã¸¹Ï
plot(2,2)
pts <- locator(n=3)
pts

x <- c(1,3,5)
y <- c(5,3,5)
plot(x,y)
identify(x, y, "My Labels")





