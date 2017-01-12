#1
setwd("c:/cert/")
x <- read.csv("A-1.csv", header=FALSE)#header排頭
x
str(x)#型態觀看(data.frame無法計算)
x <- as.matrix(x)#轉換型態
str(x)
mean(x)#平均值
summary(x)#摘要(平均值,最大值,最小值......)

#2
setwd("c:/cert/")
x <- read.csv("A-3.csv", header=FALSE)
x
str(x)
x <- as.matrix(x)
max(x)#最大值
summary(x)

#3
setwd("c:/cert/")
x <- read.csv("A-4.csv", header=FALSE)
x
str(x)
x <- as.matrix(x)
quantile(x,0.25)#四分衛數 0.25=q1 0.75=3
summary(x)

#4
setwd("c:/cert/")
x <- read.csv("A-5.csv", header=TRUE)
x
str(x)
x <- as.matrix(x)
max(x)-min(x)#全距

#5
setwd("c:/cert/")
x <- read.csv("A-6.csv", header=TRUE)
x
str(x)
x <- as.matrix(x)
var(x)#變異數

#6
setwd("c:/cert/")
x <- read.csv("c-1.csv", header=TRUE)
x
hour <- x[2]
grade <- x[3]
cor(hour, grade)#相關係數
cor(grade, hour)

#7 list彈性最大

#8 R的迴圈指令 for while repeat

#9
x <- 2
if (x-3) y=NA else y=5
print(y)

#10階層涵式
exec <- function(x){
  if (x==0) x_sum = 1
  else
    x_sum = x*exec(x-1)
    return(x_sum)
}
exec(4)

#11 na.rm = true (忽略na 函數)

#12
a <- matrix(1:12, nrow=3, byrow=TRUE)
a
apply(a,1,sum)
apply(a,2,sum)

#13
x <- c(1,1,1,3,2,2,3)
table(x)

#14 何者非高階會圖 identity hist plot pairs 
# identity(互動式)

#15
x <- c(1,2,5)
y <- c(3,5,10)
(rbind(x,y))

#16
x <- c(1,2,3)
summary(x)

#17 註解符號為? #

#18 變數宣告 第一個字母須為英文字母或句點.

#19
ifelse(2>=3,2,3)

#20
x1 <- 9%%5  #餘數
x2 <- 9%/%2 #商
x1
x2
