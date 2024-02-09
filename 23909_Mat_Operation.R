#creating a matrix
A <- matrix(data=c(-3,2,893,0.17),nrow=2,ncol=2)
print(A) #printing a matrix

# Matrix Structure
#byrow=TRUE fills the data in the matrix row wise
A <- matrix(data = c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)
print(A)

#byrow=FALSE fills the data in the matrix Col. wise
A <-matrix(data = c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=FALSE)
print(A)

# Arranging multiple vectors in array
#rbind takes the vales and put in row wise order in the matrix
A <- rbind(10:13,14:17)
print(A)

#cbind takes the vales and put in Col wise order in the matrix
A <- cbind(20:22,54:56)
print(A)

# Dimension of a matrix
mymat <- rbind(c(1,3,4),5:3,c(100,20,90),11:13)
dim(mymat)#gives the dimension of the matrix

nrow(mymat)#shows the number of rows

ncol(mymat)#shows the number of columns in the matrix

dim(mymat)[2] #shows no. of colum; [1]will show no of rows

# Extracting elements of a matrix
A <- matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
print(A)

diag(x=A)#gets the diagonal elements of the matrix

A[3,2] # gets the element in the 3rd row and 2nd col

A[,2] # gets data in the 2nd col

A[2:3,] #2 to 3 rows and all cols

print(A[,c(3,1)]) #all rows of 3rd col and then 1st col

print(A[c(3,1),2:3])#3rd row and then 1st row  element of 2nd and 3rd column.

# Manipulating Matrix
A[,-2] # remove 2nd col and show the remaining part

A[-1,3:2]#delete first row and then show elements of 3rd and then 2nd cols

A[-1,-2]#delete first row and second col

A[-1,-c(2,3)]#delele first row then from 2nd,3rd cols remove 2nd and 3rd elements

B <- A#coping matrix A to B
print(B)

B[2,] <- 1:3 #remove the 2nd row with values from 1:3
print(B)

B[c(1,3),2] <- 900 # replace the (1,2)and(3,2) position with 900
print(B)

B[,3] <- B[3,] #replace 3rd col with values of 3rd row
print(B)

B[c(1,3),c(1,3)] <- c(-7,7) #replace (1,1)(1,3)(3,1)(3,3)with -7 and 7
print(B)                  #replacement is done col wise

B[c(1,3),2:1] <- c(65,-65,88,-88) #(1,2)(3,2)(1,1)(3,1)replace with given values
print(B)

diag(x=B) <- rep(x=0,times=3)#rep()is a repeat func.
#replace diagonal of mat B with 0 (3 times due to 3 by 3 matrix)
print(B)