## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL                             ##Initialized inv value as a NUll,
                                                ##It's going to keep the inverse matrix
        
        set <- function(y) {                    ##Define the set function to assign a new
                ##value in the parent environment
                x <<- y                         ##Define the matrix in the parent environment
                inv <<- NULL                    ##IF there is a new matrix then set inv as a NUll
         
        }       
        
        get <- function() x                     ##This returns the value of the matrix arguments
                
        setinverse <- function(inverse) inv <<- inverse
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)        
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
