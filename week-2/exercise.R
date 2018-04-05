## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# You can't add strings together

install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# the "stringr" library was not loaded into this script 

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# the variable "initial" was not initialized to anything, so the 
# program doesn't know how to paste the arguments together.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
a_vector <- c(1, 2, 3)
typeof(a_vector)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2){
  difference <- length(vector1) - length(vector2)
  sentence <- paste("The difference in lengths is", difference)
  return(sentence)
}

# Pass two vectors of different length to your `CompareLength` function
vector_a <- c(1, 2, 3, 4, 5)
vector_b <- c(6, 7)
diff_of_vectors <- CompareLength(vector_a, vector_b)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2){
  longer_vector <- length(vector1) > length(vector2)
  if(longer_vector){
    difference <- length(vector1) - length(vector2)
    answer <- paste("Your first vector is longer by", difference, "elements")
    return(answer)
  }
  else{
    difference <- length(vector2) - length(vector1)
    answer <- paste("Your second vector is longer by", difference, "elements")
    return(answer)
  }
}
# Pass two vectors to your `DescribeDifference` function
describe_diff_vectors <- DescribeDifference(vector_a, vector_b)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vector1, vector2, vector3){
  combined_vectors <- c(vector1, vector2, vector3)
  return(combined_vectors)
}
# Send 3 vectors to your function to test it.
vector_c <- c(8, 9, 0)
all_vectors <- CombineVectors(vector_a, vector_b, vector_c)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
library(stringr)
CapsTime <- function(courses){
 split_courses <- str_split(courses, "")
 new_courses <- c(split_courses[split_courses != toupper(split_courses)])
 return(new_courses)
}
my_classes <- c("Info 201", "CSE 154", "Math 307")
classes_2 <- CapsTime(my_classes)

