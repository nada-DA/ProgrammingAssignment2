## In the following, i tried to write a function that would cache the inverse 
## of a matrix rather than computing it repeatedly

## I tried to follow the functions given as examples to write
## the following functions

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(m){
    x <<- m
    i <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## in this first function, i started by assigning a NULL value to variable i
## then I set the value of the matrix using another function
## afterwards, i tried to get the value of the matrix using yet another function
## starting by setting the value of the inverse, then getting the value of the 
##inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat, ...)
  x$setInverse(i)
  i
}

## the second matrix is used to compute the inverse