## Put comments here that give an overall description of what your
## functions do create matrix

## this function is to set and get the matrix
makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
	x<<-y
	m<<-NULL
}
get<-function() x
setMatrix<-function(matrix) m<<-matrix
getMatrix<-function() m
list(set=set, get=get, setMatrix=setMatrix, getMatrix=getMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       m<-x$getMatrix()
       if(!is.null(m)){
       	message("getting cached data")
       	return(m)
       	}
       	data<-x$get()
       	m<-solve(data,...)
       	x$setMatrix(m)
       	m
}
