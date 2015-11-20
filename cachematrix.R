## Create a list of 4 functions in order to cache the inverse of the "special" matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    
    ## To change the matrix to be computed
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    
    ## To see the matrix handled
    get <- function() x
    
    ##To cache the inverse of the "special" matrix
    setsolve <- function(solve) m <<- solve
    
    ##To display the inverse of the "special" matrix
    getsolve <- function() m
    
    
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
  }


## Calculate the inverse of the "special" matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getsolve()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
  
}
