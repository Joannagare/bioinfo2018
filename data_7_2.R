##  7_2_2019    r, w files + v operations
setwd("/Users/ioannagarefalaki/Desktop")
## READING
myfile = read.table("resultscopy.txt")#, h=T, colClasses = c("integer", "character"))
matrixx <- matrix(0, ncol=10, nrow = 10)
matrixx[5,1:10] <-1
matrixx
## genetika dedomena ATCG
## 0,1 de me endiaferei h katastash mono metallaksi oi metallaksi
## WRITING
write.table(myfile, file="output.txt", row.names = F, col.names = c("stili1", "stili2"), quote = F)


## vectors
a = 1:10
a
b = c(1,3,5)
b
c = c(a,b,c)
c
d = c(1:10,1,2,3)
d
a = c(c(1,2,3), c("a","b"))
a  # an uparxou char kai no exoun proteraiotita ta char ara ta kanei oooola strings de bgazei la8os se vectors kai matrices
a =seq(1,10, 2) # ena ews 10 me vhma 2---> from -to -by
a
a= seq(1,10, length.out=20) # xarakas se 20 ises apostaseis apo 1 ews 10
a
#pws ftiaxnw label oi 10 prwtoi smokers oi 10 epomenoi oxi ???
labels= c(rep("SMOKERS", 10), rep("NONSMOKERS", 10))
labels
## 8elw 111222......100 100 100 pws?
rep(1:100, each=3) # 1 ews 100 treis fores to ka8ena
a = c(rep(10,10),rep(20,10))
a
barplot(a) # dipla export pdf
## figure margins too large de xwraei o xwros
## th swzw se arxeio ws eksis anoigw rafw kleinw gia emacs 
pdf("myfigure.pdf")
barplot(a)
dev.off()

## 1-3 omoiomorfh katanomi = akra 1-3 : x~U(1,3) me opoiadipote pi8anotita den exw protimisi metaksi 1kai3
## 8elw vector 1000 times pou na anhkoun sthn parapanw katanomi 
## gaus megaluterh sto kentro poisson sta akra
a=runif(1000,1,3)
a
## mesh timh to 2 synasthsh mean(a)
mean(a)
a=runif(10000,1,3)
a
## mesh timh pio konta to 2 synasthsh mean(a)
mean(a)
var(a)
sort(a,decreasing = F)
median(a)
quantile(a,probs=c(0.1,0.95))
hist(a) ## ftiaxnei mia mpara mexri to 500 den einai barplot giati ka8e mpara den apeikonizei mia timi vexctor alla mia perilipsi se perioxes analoga me th syxnothta tous

## operations

c(1,2,3) + c(4,5,6)
## sta matrices an pollsw pinaka a X b 8a einai to apotelesma ginomenou 2 prwtwn
## pws ftiaxnw dianisma i^2 , i=1...10
1:10 * 1:10
##proteraiothta praksewn to 1:10 kai meta *
(1:10)^10 
(1:10)^rep(10,10)
## 1^2 2^4 3^6.....10^20  efarmozei praksi ek8eth bazontas ws ek8eth ton 2 vector 2,4,6,8 ek8etes me 1,2,3,4,...
(1:10)^seq(2,20,2)
(1:20)^seq(2,20,2) # edw ksanapaei apo thn arxh
(1:5)^seq(2,20,2)
#xwris seq na kanw to 2,4,6,8,10
1:10*2
(1:10)^(1:10)*2
#1/1 1/2 1/3.....1/10
1/(1:10)
(1:10)^(-1)
#|1 5 9 |
#|2 6 10 |
#|3 7 11 |
#|4 8 12 |
matrix(1:12, 4, 3)
matrix(1:12, 4, 3, byrow = T)#kata grammes an valw13 error de xwraei ta 6 xwraei
# 8elw ek8eth 1,2,3,4,5...10 kai bash 1,1 1,2 1,5,,,,1,6 ^6 se pinaka
#kanw pinaka me ek8etes kai ypswnw ton enan ston allo
#me to seq
a=matrix(seq(1.1,2, 0.1), 2, 5, byrow = T)
a
b=matrix(1:10, byrow = T, nrow = 2,ncol = 5)
b
a^b

## 12_2_2019

l1 <- list(c(1,2,3,4), c(1,2,3,4))
m1 <- as.matrix((l1))
class(l1)
l1 <- list(first =c(1,2,3), sec=matrix(c(1,2,3)), third="kalimera")
class(l1)
l1$first
## subsetting me double brackets [[]]
## convert lists to vectors and matrices

x <- "abcdefghigklm"
## kanto matrix pou na xei 1 col katheta olo

## prwta list kai meta matrix 
b<- strsplit(x, "") ## to kanei split se lista me "" sto ka8e ena

as.matrix(b, ncol= 1) # lathos prwta vector thn kaneis me to unlist
unlist(b)
unlist(x)
l1 <- list(1:10,4:13,101:110)
l1

matrix(unlist(l1), 3, 10, byrow = TRUE)


## arrays 3D 
vector1<- c(5,9,3)
vector2<- c(10,11,12,13,14,15)
result <- array(c(vector1,vector2), dim = c(3,3,2)) ## prosoxh sto dim---> an htan 3,3,3 8a eixe allo 1 level
result
matrix(c(1,2),2,2) ## pws domountai sto xwro

matrix(c(1,2),2,3) ## pinakas 2X3
matrix(c(1,2),3, 2)

## operator % * % an exw pinaka a kai b----> a%%b grammikos pol/smos pinakwn

## subsetting 

v<-1:8
v
## gia na parw to stoixeio 1
v[0] ### ----> ## !!!!! sth python einai to prwto stoixeio
v[1]
v[-1] ### ole ektos tou 1 sthn python to teleutaio :/
v[1:4]
v(c[1,4:8])
v[-(2:3)]


v = c(1,2,3)
## thelw T/F to 2 index

x<- v[c(F,T,F)]
x1<- c(F,T)
v[x1]
v<- c(1:100)
x<- rep(c(T,T,F,F),25)
v[x]
v<- 2:100
v<-runif(100,1,100)
## gia stoixeia >50
x<- which(v>50)
x ## mono ta index
v[x] ## oi times actually
v>50
v[1]<-40
v>50 | v <30 
v[T]

## subsetting matrices

a<-matrix(1:100,10 ,10)
a[1,1]
a[,1]
a[1,]
a[1:2,1:2]
a[,1:2]
a[,-1]  ## ektos 1hs sthlis prosoxi me python!!!

## 14_2_2019 subsetting(names), lists as associative arrays, bioinfo example

m <- matrix(100,10,10)
m[,3]
m[1:2,]
m[1:2,1:2]
## [[]] mono sthn R
l <- list(c(1,2,3), c(45,6,7))
l[1]  # einai list
l[[1]] # den einai list einai to vector 

## me header = T sthn read table lew oti h prwth grammh einai onomata

v <-c(1:100, runif(100, 1000, 2000))
v   ## subsetting me logikes times an 8elw megaluteres apo 1500 h mikroteres apo 500

v[v< 500 | v >1500]
df <- read.table("~/Desktop/rexample.txt", h=T, sep=",")
df
### sos xwris sep="," tote 8a einai lathos an exw missing data 8a to bgalei keno kai oxi NA

complete.cases(df)
## elegxos grammwn an 8elw th 2 grammi elegxw ta plhrh sth 2 grammh
df[complete.cases(df),]
## an kati den einai NA kai megalutero tou 1
df>1  &! is.na(df)
df[complete.cases(df)]
df[df>1 & !is.na(df)]

subset(df,c1>1 & complete.cases(df))
!is.na(df)
##  lathos apo katw
subset(df,c1>1 & !is.na(df))
#poses fores uparxei to 1,to 2 klp
table(c(1,2,3,3,4,4,4,6,7,1))
dna="ACGTAACCCTACGTA"
v <- strsplit(dna, "")
v
class(v)
s<-matrix(v)
s
table(s)
## ginetai kai me unlist
table(unlist(v))

ok<- factor(unlist(v))
summary(ok)

unlist(strsplit(v,""))

data<- read.table("~/Desktop/dna.txt", h=F, colClasses="character")
summary(as.factor(unlist(strsplit(data[1,],""))))
v1<-table(as.factor(unlist(strsplit(data[1,], ""))))
v1       
data
dna<- c("A","C","G","T","A","T","T","A","A")
DNA
  dna
transcription.table<-c("U","G","C","A")
names(transcription.table)<-c("A","C","G","T")
transcription.table["A"]
## TO APO PANW DINEI U
transcription.table[dna]
# KANE TO PROTEIN
