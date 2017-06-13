## Put comments here that give an overall description of what your
## functions do

## Function to cache inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  m = NULL
  set = function(y){
    x<<-y
    m<<-NULL
  }
  get = function(){
    x
  }
  setInverse = function(inverse){
    i <<- inverse
  }
  getinverse = function(){
    m
  }
  list(set = set, get = get, setInverse = setInverse, getinverse = getinverse)
}


## computes the inverse of the matrix returned by makeCacheMatrix (calculated above). 

cacheSolve <- function(x, ...) {
    m <- x$getInverse()
    if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
    data <- x$get()
   m <- solve(data) %*% data
    x$setInverse(m)
    m      
}
       
