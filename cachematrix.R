## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv_x <- NULL
set <- function(y) {
x <<- y
inv_x <<- NULL
}
get <- function() x
setInverse<- function(inverse) inv_x <<-inverse
getInverse <- function() inv_x
list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv_x <- x$getInverse()
if (!is.null(inv_x)) {
message("getting cached inverse matrix")
return(inv_x)
} else {
inv_x <- solve(x$get())
x$setInverse(inv_x)
return(inv_x)
}
}
