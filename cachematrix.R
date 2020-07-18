## Put comments here that give an overall description of what your functions do

## Write a short comment describing this function

##makeCacheMatrix: This function creates a special
## "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

        ##Initialized inv value as a NUll,It's going to keep the inverse matrix
        inv <- NULL                                                                             

        ##Define the set function to assign a new value in the parent environment
        set <- function(y) {                                                                    

        ##Define the matrix in the parent environment
                x <<- y
        ##IF there is a new matrix then set inv as a NUll                
                inv <<- NULL                    
        }       
        
        ##Define the get function
        ##The main idea is return the value of the matrix arguments
        get <- function() x                     
        
        ##Set the assign value of inv in parent environment         
        setinverse <- function(inverse) inv <<- inverse
        ##Get the values of inv
        getinverse <- function() inv
        list(set = set, get = get, setinverse = setinverse,
             getinverse = getinverse)        
        
}

## Write a short comment describing this function

##cacheSolve: This function computes the inverse of the special 
##"matrix" returned by makeCacheMatrix above. If the inverse has 
##already been calculated (and the matrix has not changed), then 
##cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        ##Change mean instead solve for vector-matrix solution
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
