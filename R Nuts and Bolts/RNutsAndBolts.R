x<-1
x
x<-1:20
x

x<-c(0.5,0.6) ##numeric
x<-c(TRUE, FALSE) ##logical
x<-c(T,F) ##logical
x<-c("a","b","c") ##character
x<-9:29 ##integer
x<-c(1+0i,2+4i) ##complex

x<-c(1,2,NA,10,3) 
is.na(x)
is.nan(x)
x<-c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

##data frames
x<-data.frame(foo = 1:4, bar = c(T,T,F,F))
x
nrow(x)
ncol(x)

##NAMES
X<-1:3
names(x)
names(x)<-c("foo","bar","norf")
x
names(x)

##LIST
x<-list(a=1,b=2,c=3)
x

#MATRICES
m<-matrix(1:4,nrow=2,ncol=2)
dimnames(m)<-list(c("a","b",))

#DPUTTING
y<- data.frame(a=1,b="a")
dput(y)
dput (y,file = "y.R")
new.y<-dget("y.R")
new.y

#DUMPING
x<- "foo"
y<-data.frame(a=1,b="a")
dump(c("x","y"), file = "data.R")
rm(x,y)
source("data.R")
y
x

#FILE CONNECTIONS
str(file)

#READING LINES OF A TEXT
con<-gzfile("words.gz")
x<- readlines(con,10)
x

#SUBSETTING
x<-c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u<-x>"a"
x[u]

#SUBSETTING LISTS
x<-list(foo=1:4, bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x[["bar"]]
x<-list(foo=1:4, bar=0.6,baz="hello")
x[c(1,3)]
x<-list(foo=1:4, bar=0.6,baz="hello")
name<-"foo"
x[[name]]
x$name
x$foo

#SUBSETTING NESTED ELEMENTS
x<-list(a=list (10,12,14), b=c(3.14,2.81))
  x[[c(1,3)]]
  x[[1]][[3]]
  x[[c(2,1)]]
  
#SUBSETTING A MATRIX
  x<- matrix(1:6,2,3)
  x[1,2]
  x[2,1]
  
  x<- matrix(1:6,2,3)
  x[1,2]
  x[1,2, drop=FALSE]
  
  x<- matrix(1:6,2,3)
  x[1,]
  x[1,, drop=FALSE]
  
#PARTIAL MATCHING
  x<- list (aardvark=1:5)
  x$a
  x[["a"]]
  x[["a",exact=FALSE]]
  
#REMOVING NA VALUES
  x<- c(1,2,NA,4,NA,5)
  bad<-is.na(x)
  x[!bad]
  x<- c(1,2,NA,4,NA,5)
  y<- c("a","b",NA,"d",NA,"f")
  good<- complete.cases(x,y)
  good
  x[good]
  y[good]
  
  airquality[1:6,]
  good<-complete.cases(airquality)
  airquality[good,][1:6]
  
  #VECTORIZED OPERATIONS
  x<-1:4; y<-6:9
  x+y
  x>2
  x>=2
  y==8
  x*y
  x/y
  
  #VECTORIZED MATRIX OPERATIONS
  x<-matrix(1:4,2,2); y<-matrix(rep(10,4),2,2)
  x*y
  x/y
  x%*%y
  
  
         
