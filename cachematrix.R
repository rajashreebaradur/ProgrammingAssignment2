# makeCacheMatrix is a function that returns a list of functions
# Its puspose is to store a martix and a cached value of the inverse of the matrix
# Contains the following functions:
# * set             set the value of a matrix
# * get             get the value of a matrix
# * setinverse      set the cached value (inverse of the matrix)
# * getinverse      get the cached value (inverse of the matrix)


makeCacheMatrix <- function(x = matrix()) {
  
  ## Initialize the Inverse property
  m <- NULL
  
  ## Set the value of the matrix
  set <- function(matrix) {
    x <<- matrix
    m <<- NULL
  }
  
  ## Method to get the matrix
  get <- function() {
    
    ## Returns the original matrix
    x                
  }
  
  ## Sets the Inverse of the matrix using solve function
  setinverse <- function(solve) {
    m <<- solve
  }
  
  ## Returns the matrix stored in the cache
  getinverse <-function() {
    m
  }
  
  ## List of the methods
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
## cacheSolve function computes, caches and returns matrix inverse

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()              ## Gets the cached value
  
  ## Checks cache for the matrix and returns the same if it exists
  if( !is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  matrix <- x$get()                ## Gets the original matrix
  m <- solve(matrix, ...)          ## Calculate the inverse of the matrix
  x$setinverse(m)                  ## Sets the inverse of the matrix in the cache
  m
}
