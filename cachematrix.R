## Programming Assignment 2 
## I'm enjoying this class

## This first function will create a matrix that I am going to try and cache

makeCacheMatrix <- function(x = matrix()) {
  matrix <- NULL
  set <- function(y) { #this function is to initialise and then save the values that are calculated
    x <<- y
    matrix <<- NULL
  }
  get <- function() x # This gets the value of the named object
  calculateInverse <- function(solve) matrix <<- solve     
  getcalculateInverse <- function() matrix #this is to get the value calculated
  matrix 
}


## This will use the value from the matrix that was cached above


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matrix <- x?getcalculateInverse () #This is to access the methods of getcalculateInverse function
  if(!is.null(matrix)) { # if the matrix is not NULL it means it has been calculated before 
    message("getting the cached matrix") # It will hten get the value
    return(matrix)
  }
  data <- x$get() #If the inverse of the matrix was not calculated before then it will calculate it
  matrix <- solve(data, ...) # This is to calculate the inverse of the matrix
  x$set(matrix) # and now x is accessing the methods of set to apply them to the matrix 
  matrix # and finally the matrix is returned to the user
}
