## Caching an inverse of matrix

## Function that creates a special "matrix" object and cache its inverse 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL                           #sets the inverse variable
        setmat <- function(y) {               #function to create data matrix
                x <<- y                       
                inv <<- NULL
        }
        get <- function() x               
        setinverse <- function(solve) inv <<- solve  #function to calculate the inverse
        getinverse <- function() inv
        list(setmat = setmat, get = get,  
             setinverse = setinverse,
             getinverse = getinverse)
}

## function that computes/or retrieves the inverse of the above matrix and 
cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(inv)) {                         #return the value of inverse if available
                message("getting cached matrix")
                return(inv)
        }
        data <- x$get()                           #calculate the value of inverse(where is null)
        inv<- solve(data, ...)
        x$setinverse(inv)
        inv
}
