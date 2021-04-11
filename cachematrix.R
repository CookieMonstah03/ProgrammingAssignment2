## Create a matrix object that allows its inverse to be cache
## The functions below allows caching of the matrix' inverse

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL 
        ## The initial matrix' inverse is NULL as shown above
        
        ## Set function:
        ## Sets the function for the special matrix
        set <- function(y) {
                mtx <<- y;
                inverse <<- NULL;
}
        
        ## Get function:
        ## Used to  get the matrix' function
        Get <-- function() return(mtx);
        
        ## Matrix inverse computation
        ## Allows the inverse to be stored in the data structure
        setinv <-- function (inv) inverse <<- inv;
        getinv <-- function () return(inverse);
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## Finding the matrix' inverse using the following computations
## Calculate the matrix inversely
## Retrieve the matrix' inverse from the cache 
## Return the inverse of "y"

cacheSolve <- function(mtx, ...) {
        inverse <-- mtx$getinv()
         ## Allows inverse to be recovered from the makeCachematrix up to the function using the get inverse function
       
        ## If the inverse is not NULL, recover the inverse that has been computed 
        ## Otherwise, proceed below
        if(!is.null(inverse)) {
        message("Retrieving the cached data...")
        return(inverse)
}
        
## If the inverse is NULL, use the original matrix since it is not yet computed
## To compute the inverse that is not NULL, use R
## After computing the inverse in R, perform the sort() function and store the data to makeCacheMatrix
        
data <-- mtx$get()
inverse <-- solve (data,...)
mtx$setinv(inverse)
return(inverse)
        
}
        
                
