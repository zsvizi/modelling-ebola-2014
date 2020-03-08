#Legrand model
setwd("C:/Users/User/Google Drive/EPIDELAY/Ebola/PRCC/PRCC_final")
setwd("F:/Google Drive/EPIDELAY/Ebola/PRCC")

library(lhs)
library(xlsx)

table<-randomLHS(5,10000)
table
write.xlsx(table,"samplep5.xlsx",sheetName="Sheet1")

library(sensitivity)
par<-read.table("final_size_T40.csv",sep=",",header=TRUE)
input<-par[1:5]
output<-par[6]
x<-pcc(input,output,rank=TRUE,nboot=200)
x
plot(x)

library(sensitivity)
par<-read.table("R0tp10.csv",sep=",",header=TRUE)
input<-par[1:10]
output<-par[11]
x<-pcc(input,output,rank=TRUE,nboot=200)
x
plot(x)