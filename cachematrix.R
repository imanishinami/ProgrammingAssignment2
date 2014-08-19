## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special matrix to contain a function to
## - set the value of the matrix
## - get the value of the matrix
## - set the value of the inverse of matrix
## - set the value of the inverse of matrix


makeCacheMatrix <- function(x = matrix()) {
    
    inv <- NULL
    set <- function(matrix) {
        x <<- matrix
        inv <<- NULL
    }
    get <- function() {
        x 
    }
    setInverse <- function(inverse) {
        inv <<- inverse
    }
    getInverse <- function() {
        inv
    }
    list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse
    }        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        
        
}
