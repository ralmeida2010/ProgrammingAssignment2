## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



# Creates  a matrix and its inverse.
makeCacheMatrix <- function(x = matrix()) {
  # Initialize the inverse matrix as NULL
  m <- NULL
  
  # set function
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  # get function: Gets the current matrix 'x'.
  get <- function() x
  
  # setInverse function: Sets the cached inverse 'm'.
  setInverse <- function(solve) m <<- solve
  
  # getInverse function: Gets the cached inverse matrix 'm'.
  getInverse <- function() m
  
  # Return the list of functions 
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

# cacheSolve function:

# If not found, calculates the inverse, caches it, and returns the result.

cacheSolve <- function(x, ...) {
  # Try to get the cached inverse 'm' from the makeCacheMatrix object 'x'.
  m <- x$getInverse()
  
  # If the cached inverse is found, return it with a message indicating the use of cached data.
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  # If the cached inverse is not found, calculate the inverse using the solve function.
  data <- x$get()
  m <- solve(data, ...)
  
  # Set the calculated inverse as the cached inverse in the makeCacheMatrix object.
  x$setInverse(m)
  
  # Return 
  m
}
