# Blackjack
doBlackjack <- function(inFirst, inSecond){
  if(inFirst <= 0 && inSecond <= 0){
    cat("Please enter valid scores.")
  }
  else if(inFirst > 21 && inSecond > 21){
    cat("Both players lost: their scores were over 21.")
  }
  else if(inFirst > 21 && inSecond <= 21){
    cat("Player 2 wins with ", inSecond, "!")
  }
  else if(inFirst <= 21 && inSecond > 21){
    cat("Player 1 wins with ", inFirst, "!")
  }
  else if(inFirst == inSecond){
    cat("It's a tie! Both players scored ", inFirst, "!")
  }
  else{
    x <- c(inFirst, inSecond)
    cat("Player", which.max(x), "wins with", max(x), "!")
  }

}

doBlackjack(18,21)
doBlackjack(20,18)
doBlackjack(22,22)

# Unique Sum
doUniqueSum <- function(inOne, inTwo, inThree){
  x <- c(inOne,inTwo,inThree)
  y <- x[!(duplicated(x) | duplicated(x, fromLast = TRUE))]
  return (sum(y))
}

print(doUniqueSum(1,2,3))
print(doUniqueSum(3,3,3))
print(doUniqueSum(1,1,2))

# Too Hot?
doTooHot <- function(temperature, isSummer){
  theMax = 0
  if(isSummer){
    theMax = 100
  }
  else{
    theMax = 90
  }
  if(temperature >= 60 && temperature <= theMax){
    TRUE
  }
  else{
    FALSE
  }
}

print(doTooHot(95, TRUE))
print(doTooHot(95, FALSE))

# Leap Year?
leapYear <- function(theYear){
  if(theYear %% 4 == 0 && (theYear %% 400 == 0 || theYear %% 100 != 0)){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
}

print(leapYear(1995))
print(leapYear(1996))
print(leapYear(1997))
print(leapYear(1998))
print(leapYear(1999))
print(leapYear(2000))
print(leapYear(2001))

# Working with Files
setwd("C:/Users/Administrator/Desktop/QA Work/R")

evens <- c(2,4,6,8,10)
write.csv(evens, "evens.csv")


odds <- read.csv("evens.csv")
print(odds) # Even numbers

odds <- odds[2]
names(odds) <-"Odd Numbers"

odds$`Odd Numbers` <- odds$`Odd Numbers` + 1

write.csv(odds, "odds.csv")

print(odds) # Odd numbers (incremented evens)

# Plotting
boxplot(iris$Sepal.Width ~ iris$Species)
plot(iris$Petal.Width ~ iris$Petal.Length)

# CO2 Data
print(class(CO2$Plant))

mean_uptake <- (sum(CO2$uptake) / length(CO2$uptake))

print(mean_uptake)

boxplot(CO2$uptake ~ CO2$Type)

quebec_CO2 <- subset.data.frame(CO2, CO2$Type == "Quebec")
mississippi_CO2 <- subset.data.frame(CO2, CO2$Type == "Mississippi")

mean_checker <- function(theFirst, theSecond){
  firstMean = sum(theFirst$uptake) / length(theFirst$uptake)
  secondMean = sum(theSecond$uptake) / length(theSecond$uptake)
  
  if(firstMean > secondMean){
    return("Quebec has higher uptake")
  }
  else if (secondMean > firstMean){
    return("Mississippi has higher uptake")
  }
  else{
    return("Both have equal uptake.")
  }
}

print(mean_checker(quebec_CO2, mississippi_CO2))

# Orchard Sprays Data
dataframe <- OrchardSprays
theTreatment <- ""

max_decrease <- max(dataframe$decrease)

for(i in 1: length(dataframe$decrease)){
  if(max_decrease == dataframe$decrease[i]){
    theTreatment <- dataframe$treatment[i]
  }
}

print(theTreatment)

boxplot(OrchardSprays$decrease ~ OrchardSprays$treatment)

# Chick Data
ggplot(ChickWeight, aes(x=Time, y=weight, group=Chick, colour=Diet)) + geom_line()

  #same output, different aesthetic
ggplot(ChickWeight, aes(x=Diet, y=weight)) + geom_boxplot()
boxplot(ChickWeight$weight ~ ChickWeight$Diet)
