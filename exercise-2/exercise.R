# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  return(paste("The difference in lengths is", abs(length(a) - length(b))))
}

# Pass two vectors of different length to your `CompareLength` function
diff <- CompareLength(c(1, 2, 3), c(1, 2, 3, 4, 5, 6))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  return(paste("Your", if(length(a)>length(b)) "first" else "second", "vector is longer by", abs(length(a) - length(b)), "elements"))
}

# Pass two vectors to your `DescribeDifference` function
v1 <- c(1, 2)
diff2 <- DescribeDifference2(v1, c(1))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference2 <- function(a, b) {
  return(paste(if(length(a)>length(b)) deparse(substitute(a)) else deparse(substitute(b)), "vector is longer by", abs(length(a) - length(b)), "elements"))
}