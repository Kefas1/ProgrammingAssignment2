## These couple functions create an inversible matrix and cache it

## Create the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function (y) {
    x <<- y
    m <<- NULL
  }
  get <- function () x
  setmatrix <- function (solve) m <<- solve
  getmatrix <- function () m
  list (set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
  
}


## and invert it.

cacheSolve <- function(x, ...) {
  m <- x$getmatrix ()
  if (!is.null (m)) {
    message ("getting cached data")
    return (m)
  }
  matrix <- x$get ()
  m <-solve (matrix, ...)
  x$setmatrix (m)
  m
}
