## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  j <- NULL     ## initialize j as NULL; will hold inverse matrix 
  set <- function(y){  ## define the set function
    x <<- y
    j <<- NULL
  }
  get <- function()x  ## define the get function
  setInverse <- function(inverse) j <<- inverse  ## assign value in parent environment
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("loading data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
  }
