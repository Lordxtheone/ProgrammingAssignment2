makeCacheMatrix <- function(x = matrix ()) {
  # r wil store the cashed inverse matrix
  r <- NULL
  set <- function (y){
    x <<-y
    r <<- NULL
    
  }
  
 get <- function()x
 setmean <- function(solve) r <<- solve
 getmean <- function() r

 list( set = set, get = get,
       setmean = setmean ,
       getmean = getmean)
}


cacheSolve <- function(x = matrix(),...) {
        
    r <- x$getmean()
    # if r is calculated return the value
    if(!is.null(r)) {
      message("getting cached data")
      return(r)
    }
  
    matrix <- x$get()
    r <- solve(matrix, ...)
    x$setmean(r)
   
    r
  }

