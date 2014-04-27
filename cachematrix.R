## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
