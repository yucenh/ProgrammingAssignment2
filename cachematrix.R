## create a cacheable matrix
## initialize inverse of matrix to NULL
makeCacheMatrix <- function(x = matrix()) {
    Inversion <- NULL
    setMatrix <- function(initMatrix){
        Inversion <<- NULL
        x <<- initMatrix
    }
    getMatrix <- function(){
        x
    }
    setInversion <- function(inv){
        Inversion <<- inv
    }
    getInversion <- function(){
        Inversion
    }
    list(setMatrix = setMatrix, getMatrix = getMatrix, 
         setInversion = setInversion, getInversion = getInversion)
}


## compute the inverse of matrix
## if the inverse of matrix have already be caculated, return the cached value
## else caculate the inverse of matrix and return the value.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    Inversion = x$getInversion()
    if (!is.null(Inversion)){
        print("Return cached Inversion")
        Inversion
    }
    mtx <- x$getMatrix()
    Inversion <- solve(mtx)
    x$setInversion(Inversion)
    Inversion   
}
