## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  ## Initialize the Inverse property
  i <- NULL
  
  ## Set the value of the matrix
  set <- function(matrix) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Method to get the matrix
  get <- function() {
    
    ## Return the matrix
    m                
  }
  
  ## Set the Inverse of the matrix
  setinverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Get the inverse of the matrix
  getinverse <-function() {
    i
  }
  
  ## List of the methods
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
