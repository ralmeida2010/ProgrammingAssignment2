# Create a cacheable matrix
myMatrix <- makeCacheMatrix(matrix(c(1, 2, 3, 4), nrow = 2))

# Set the matrix
myMatrix$set(matrix(c(2, 3, 1,4), nrow = 2))

# Get the matrix
print(myMatrix$get())  # Output: 
#      [,1] [,2]
# [1,]    2    1
# [2,]    3    4

# Calculate and set the inverse
inverseMatrix <- solve(myMatrix$get())
myMatrix$setInverse(inverseMatrix)

# Get the inverse
print(myMatrix$getInverse())  # Output:
#      [,1] [,2]
# [1,]  0.8 -0.2
# [2,] -0.6  0.4
