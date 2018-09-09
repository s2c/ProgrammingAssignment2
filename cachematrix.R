## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#  Input: Matrix
#  Output: A cachematrix, which is a list containing 4 functions that:
#  set the value of the vector
#  get the value of the vector
#  set the value of the mean
#  get the value of the mean
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL # Initialize inv as null
  set <- function(y) { # Set Matrix function
    x <<- y
    inv <<- NULL
  }
  get <- function() x # Get Matrix function
  setinverse <- function(inverse) inv <<- # set inverse function
  getinverse <- function() inv # get inverse function
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse) # Returns the cachematrix

}


## Write a short comment describing this function
# Input: CacheMatrix
# Output: The inverse of the cachematrix
# Calculates and stores in the cache if not already in the cache
# Otherwise retrieves from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  # if the inverse is null then it computes the inverse and stores it into x
  if (is.null(inv)){
    print("Computing")
    x$setinverse(solve(x$get()))
  }
  # Else just gets the inverse from the cache
  else{ print("getting from cache")}
  return(x$getinverse())
}
