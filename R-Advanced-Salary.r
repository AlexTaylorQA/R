setwd("C:/Users/Administrator/Desktop/QA Work/R")

theData <- read.csv("censusData_train.csv", header = FALSE)

names(theData) <- c(
  "Age", 
  "Workclass", 
  "Finalweight", 
  "Education", 
  "EducationNum", 
  "MaritalStatus", 
  "Occupation", 
  "Relationship", 
  "Race", 
  "Sex", 
  "CapitalGain", 
  "CapitalLoss", 
  "HoursPerWeek", 
  "NativeCountry"
  )

