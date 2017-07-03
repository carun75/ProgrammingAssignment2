## Put comments here that give an overall description of what your
## functions do

## Creating the inverse of a matrix
## The first function below create a special matrix that will store data
## further more the second function creates the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
set<- function(y){
                     x<<- y
                     inv<<- NULL
                 }
             get <- function()x
                     setInverse <- function(inverse) inv <<- inverse
                     getInverse <- function() inv
                     list(set = set, get = get, setInverse = setInverse,
             getInverse = getInverse)

}


## this function is used to calculate the inverse of special matrix
## that was calculated in first function 
## If the inverse has already been calcultaed this function will fetch
## the same from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
