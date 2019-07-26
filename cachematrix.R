## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## storing the matrix
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
## writing function to invert the matrix 
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

#additional
##testing the function, looks like it works
my_matrix<-matrix(c(1,5,3,4),2,2)

my_matrix_1<-makeCacheMatrix(my_matrix)
cacheSolve(my_matrix_1)
cacheSolve(makeCacheMatrix(my_matrix))

