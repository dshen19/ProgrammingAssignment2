## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        getorigin <- function() x
        setorigin <- function(y) {
                x <<- y
                m <<- NULL
        }
        getinverse <- function() m
        setinverse <- function(inv) m <<- inv
        list(getorigin = getorigin,
             setorigin = setorigin,
             getinverse = getinverse,
             setinverse = setinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                m <- x$getinverse()
        if (!is.null(m)) {
                message("get in cache data")
                return (m)
        }
        org <- x$getorigin()
        inv <- solve(org)
        x$setinverse(inv)
        inv
}
