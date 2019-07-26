## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## setting up the matrix x
makeCacheMatrix <- function(x = matrix()) {
invrs <- NULL
  set <- function(y){
    x <<- y
    invrs <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) invrs <<- solveMatrix
  getInverse <- function() invrs
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)        
}


## Write a short comment describing this function
## inverting the matrix x
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invrs <- x$getInverse()
  if(!is.null(invrs)){
    message("getting_cached_data")
    return(invrs)
  }
  data <- x$get()
  invrs <- solve(data)
  x$setInverse(invrs)
  invrs      
}
