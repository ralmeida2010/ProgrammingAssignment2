
myMatrix <- makeCacheMatrix(matrix(c(1,2,3,4,5,6,7,8, 9,10,11,12, 13, 14, 15, 16), nrow = 4, ncol=4)) #inicializa
myMatrix$set(matrix(c(2,3,1,4,  1,0,5,3,  1,1,3,2,  3,3,2,1), nrow = 4, ncol=4)) #cria a matriz

print(myMatrix$get()) #imprime a matriz
print(solve(myMatrix$get())) #imprime o inverso da matriz


inverseMatrix <- solve(myMatrix$get()) # guarda o inverso da matriz
myMatrix$setInverse(inverseMatrix) # calcula o inverso 
print(myMatrix$getInverse())  #imprime o invero da matriz






