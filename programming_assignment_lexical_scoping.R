
# using makeCacheMatrix function I am assigning k as a matrix
# and instead of using mean function I am replacing the values for solve
# and using <<- operator will give me the value of Y and null from different environments


makeCacheMatrix <- function(k = matrix()) {   
    inv <- NULL
    set <- function(y) {
        k <<- y
        inv <<- NULL
    }
    get <- function() k
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2)) # here I am testing the  function
my_matrix$get()



#now this is the function for the inverse of the same matrix that we just made:

#using the inv function and also the if statement and also the return function
#we have structure this code to obtain such inverse, and is the following:

 

cacheSolve <- function(k, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- k$getInverse() #this is what we want the function to do
    if (!is.null(inv)) {
        message("getting cached data") # here is where if the values have not change, then bring the mean
        return(inv) # already stored in cache.
    }
    mat <- k$get()
    inv <- solve(mat, ...)
    k$setInverse(inv)
    inv
}


# then I test the inverse function too:
 my_matrix$getInverse()
 NULL



















