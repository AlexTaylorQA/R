library(rpart)
#install.packages('rattle')
#install.packages('rpart.plot')
#install.packages('RColorBrewer')
#install.packages('randomForest')
library(rattle)
library(rpart.plot)
library(RColorBrewer)
library(randomForest)

setwd("C:/Users/Administrator/Desktop/QA Work/R")

theData <- read.csv("train.csv", header = TRUE)

test <- read.csv("test.csv", header = TRUE)

theVals <- randomForest(as.factor(theData$SalePrice) ~ theData$Neighborhood + theData$LotArea + theData$MSSubClass + theData$BedroomAbvGr + theData$MSZoning + theData$OverallCond, method='class', importance=TRUE, ntree=2000)
fancyRpartPlot(theVals)

thePredict <- predict(theVals, test, type='class')

write.csv(thePredict, file="myHouseData.csv")