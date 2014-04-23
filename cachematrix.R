## Caching an inverse of matrix

## Function that creates a special "matrix" object and cache its inverse 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL                           #sets the inverse variable
        set <- function(y) {               #function to create data matrix
                x <<- y                       
                inv <<- NULL
        }
        get <- function() x               
        setInverse <- function(solve) inv <<- solve  #function to calculate the inverse
        getInverse <- function() inv
        list(set = set, get = get,  
             setInverse = setInverse,
             getInverse = getInverse)
}

## function that computes/or retrieves the inverse of the above matrix and 
cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(inv)) {                         #return the value of inverse if available
                message("getting cached matrix")
                return(inv)
        }
        data <- x$get()                           #calculate the value of inverse(where is null)
        inv<- solve(data, ...)
        x$setInverse(inv)
        inv
}
