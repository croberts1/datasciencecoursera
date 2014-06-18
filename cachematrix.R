## This function will create an object that can cache the inverse of matrix X

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<-y
m<<-NULL}
        get <-function()x       
        setinverse <-function(solve) 
        m<<-solve
        getinverse <-function()m
                list (set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}

## This function will either compute or cache the inverse drawn from the MakeCacheMatrix function

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
        message ("getting cached data")
        return(m)}
        out<-x$get()
                m<-solve(data, ...)
                x$setinverse(m)
                m
}
