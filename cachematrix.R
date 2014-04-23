## Caching an inverse of matrix

## Function that creates a special "matrix" object and cache its inverse 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        setmat <- function(y) {
                x <<- y                       #unsure if it creates matrix
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        list(setmat = setmat, get = get,  #Not sure list effect
             setinverse = setinverse,
             getinverse = getinverse)
}

## function that computes/or retrieves the inverse of the above matrix and 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
