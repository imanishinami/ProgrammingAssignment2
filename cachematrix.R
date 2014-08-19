## makeCacheMatrix creates a special matrix to contain a function to
## - set the value of the matrix
## - get the value of the matrix
## - set the value of the inverse of matrix
## - set the value of the inverse of matrix


makeCacheMatrix <- function(x = matrix()) {
    
    ## - set the value of the matrix
    inv <- NULL
    set <- function(matrix) {
        x <<- matrix
        inv <<- NULL
    }
    ## - get the value of the matrix
    get <- function() {
        x 
    }
    ## - set the value of the inverse of matrix
    setInverse <- function(inverse) {
        inv <<- inverse
    }
    ## - set the value of the inverse of matrix
    getInverse <- function() {
        inv
    }
    list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse
    }        
}


## cacheSolve function calculates the inverse of the special "matrix" created with makeCacheMatrix function.
## find out from following link about how to get the correct inverse.
## http://stackoverflow.com/questions/11995832/inverse-of-matrix-in-r

cacheSolve <- function(x, ...) {

    ## it first check ti see if the inverse has already been produced.
    ## if so, it gets the inverse from the cache and skips the computation.
    m <- x$getInverse()
    if(!is.null(m)) {
       message("getting cached data")
       return(m)
    } 
    data <- x$get()
    ## Return a matrix that is the inverse of 'x'
    m <- solve(data)   %*% data
    x$SetInverse(m)
    m
}
        
        

