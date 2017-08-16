# Hello World
print("Hello World!")

# Assignment
myVariable <- "Hello from a variable!"
print(myVariable)

# Parameters
myFunction <- function(inString){
  print(inString)
}

myFunction("Hello from the function!")

# Parameters / Operators
sumFunction <- function(inOne, inTwo){
  return (inOne + inTwo)
}

print(sumFunction(1,2))

# Conditionals
ifFunction <- function(inOne, inTwo, theBool){
  if(theBool == TRUE){
    return (inOne + inTwo)  
  }
  else{
    return (inOne * inTwo)
  }
  
}

print(ifFunction(2,3,TRUE))
print(ifFunction(2,3,FALSE))

# Conditionals 2
ifZeroFunction <- function(inOne, inTwo, theBool){
  if(inOne == 0){
    return (inTwo)
  }
  else if(inTwo == 0){
    return (inOne)
  }
  else if(theBool == TRUE){
    return (inOne + inTwo)  
  }
  else{
    return (inOne * inTwo)
  }
  
}

print(ifZeroFunction(1,0,TRUE))
print(ifZeroFunction(1,2,TRUE))

# Recursion
for(i in 0:9){
  print(ifZeroFunction(i,3,FALSE))
}

# Anonymous Functions
anonFunction <- function(func, data){
  func(data)
}

print(anonFunction(function(x){x+1}, 6))

