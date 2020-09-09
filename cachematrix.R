## A pair of functions that compute and cache the inverse
## of a matrix to save processing power on already
## calculated values. Functions are modeled after mean
## emaple provided by course instructor

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
    mat <- x$getmean()
    if(!is.null(mat)) {                          #Check if value has already 
        message("getting cached data")           #cached and returns mat if so
        return(mat)
    }
    data <- x$get()                              #Get data matrix                                        
    mat <- solve(data)                      #Find inverse of matrix
    x$setinv(mat)                                #Set the inverse in cache
    mat                                         
    
}
