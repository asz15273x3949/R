x <- 5
x
#點
y <- c(1,2,3,4,5)
plot(y)

z <- c(12,22,20,42,52)
plot(y,z)
#圖形種類
demo(grapics)
#IRIS圖形
data(iris)
plot(iris)
#TAIWAN MAP
install.packages("ggmap")
library("ggmap")
map.taiman <- get_map(location="Taiwan",xoom=8)
ggmap(map.taiman)
#套件安裝
install.packages("C50")
#套件載入
library(C50)
#套件移除
remove.packages("C50")
#套件更新
update.packages()
#R 練習
X <- 10
X
Y <- X^2
Y
Z <- sort(Y)
Z
#型態與長度
x1 <- 10
mobe(x1)
length(x1)
x2 <- 10.11
mode(x2)
length(x2)
x3 <- T
x3
mode(x3)
length(x3)
x4 <- "Hello"
mode(x4)
lenght(x4)
x5 <- 4+2i
mode(x5)
length(x5)
x6 <- c(1,2,3,4,5)
mode(x6)
length(x6)
#矩陣matrix
x <- matrix(1:24,nrow=4,ncol=6,byrow=true)
x
y <- matrix(1:24,nrow=4,ncol=6,byrow=false)
y
#cbind()&rbind()
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1,x2,x3)
xc
xr <- rbind(x1,x2,x3)
xr
#轉置Transposition
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
z <- xc %% xr
z

#陣列array
x <- 1:24
dim(x) <- c(4,6)
x
x <- array(1:24,dim=c(4,6))
x[2,4]
dim(x) <- c(3,4,2)
x
x[2,3,1]
x[3,1,2]

x <- array(0,dim=c(4,6))
x
#因子factor
x <- factor(c("男","女","男","男","女"))
x
#dataframe(資料框架)
id <- c(1,2,3,4)
sex <- c("male","male","female","female")
pay <- c(30000,4000,45000,50000)

x_dataFrame <- data.Frame(id,age,sex,pay)
x_dataframe

x_dataFrame[3,2]
x_dataFrame[4,]
x_dataFrame[2]
x_dataFrame$age
x_dataFrame <- edit(x_dataframe)
x_dataFrame

#list列表id<-c(1,2,3)
sex <- c ("male","male',female")
pay <- c (3000,4000,45000)
y_dataFrame <- data.Frame(id,sex,pay)
gender <- factor(c("男","男","女"))
paul.Family <- list(name="paul",wife="iris",
no.kids=3,kids.age=c(25,28,30),gender,y_dataFrame)
paul.Family

paul.family$kids.age
paul.family[4]
paul.family[[4]]

paul.family$kids.age[2]
paul.family[[4]][2]
paul.family[4][2]

#CH2 資料的讀寫
GETWD()
SESETWD("C:/")
GETWD()
x <- read.table("x.csv",sep=",",header=TRUE)
x
x$age
x[1,2]

x <- read.table("x.csv",sep=",",header=FALSE) #錯的
x
str(x)

x <- read.csv("x.csv",header=true)
x

x <- read.table("x.txt",sep="",header=TRUE) #錯的
x

x <- read.table("x.txt",sep="/t",header=TRUE)
x

x <- read.table("x.txt",header=TRUE)
x

x <- scan("x.txt")
x

write.table(x,"c:/x_file.csv",row.names=FALSE,
            col.name=FALSE,sep=",")

x <- scan("x1.csv",sep=",",what=list(id=integer(0),
          age=integer(0),pay=integer(0)))
x

write.table(x,"c:/x_file.csv",row.names=FALSE,
            col.name=TRUE,sep=",")

#data()內建資料庫
data()

data(iris)
iris
str(iris)
sunmary(iris)

save(iris,file="c:/iris.rdata")
load("c:/iris.rdata", .globalenv)
iris

#第三章流程控制
a <- c(1,2,3)
x <- a + 2
x

#()直接顯示結果
(x <- a+2)

#{}結合命令
{a <- c(1,2,3);x <- a+2}
x
({a <- c(1,2,3);x <- a+2})

#if else
x <- 6
if(x>5) y=2 else y=4
y

x <- 3
if(x<5) y=10
y

x <- 3
y <- 1
if (x<5 && y<5){y <- 10;z <- 5}
y
z

x <- 20
y <- ifelse(x>5,2,3)
y

if(x>5) y <- 2 else y <- 3
