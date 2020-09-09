## A pair of functions that compute and cache the inverse
## of a matrix to save processing power on already
## calculated values

## Caches a matrix in a matrix-like list

makeCacheMatrix <- function(x = matrix()) {
    mat <- NULL                     #Initialize matrix variable
    set <- function(y) {            #Set the value of the matrix
        x <<- y
        mat <-- NULL
    }
    get <- function() x                          #Get the value of the matrix
    setinv <- function(inverse) mat <<- inverse  #Set value of inverse
    getinv <- function() mat                     #Get value of inverse
    list(set = set, get = get,                   #Return the list of values
         setinv = setinv, getinv = getinv)
}


## Computes the inverse above function, if already calculated, 
## retrieves from cache

cacheSolve <- function(x, ...) {

}
