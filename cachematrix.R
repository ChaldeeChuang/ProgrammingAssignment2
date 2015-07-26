#ProgrammingAssignment2
# (just simulates what provided example tried to do)

## function 'makeCacheMatrix' is used to creates a list which contains following sub-functions:
# set the value of the input matrix
# get the value of the input matrix
# set the value of the inversed matrix
# get the value of the inversed matrix
makeCacheMatrix = function(x = matrix()) {
	inverse = NULL
	set = function(y) {
		x <<- y
		m <<- NULL
	}
	get = function() x
	
	setinverse = function(inversed_matrix) 
		inverse <<- inversed_matrix
	getinverse = function() 
		inverse
		
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## function 'cacheSolve' caches & calculates the inverted matrix
cacheSolve = function(x, ...) {
	inverse = x$getinverse()
	if(!is.null(inverse)) {
		message("getting cached data")
		return(inverse)
	}
	data = x$get()
	inverse = solve(data)
	x$setinverse(inverse)
	inverse
}