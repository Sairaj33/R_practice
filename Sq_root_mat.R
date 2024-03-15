n = 3

# setting matrix input
mat_in = c(6,4,0,4,8,0,0,0,4)

# defining matrix
A = matrix(mat_in, nrow=n, ncol=n)

# computing eigen values and eigen vectors
eigen_data = eigen(A)

# getting squareroot of eigen values for lambda^-1
sqrt_eigvals = sqrt(eigen_data$values)

# constructing lambda (diagonal matrix)
Lambda = diag(sqrt_eigvals)
print("The Lambda matrix is:")
print(Lambda)

# calculating square root matrix
sqrt_A = eigen_data$vectors %*% Lambda %*% solve(eigen_data$vectors)

print("Square root of A:")
print(sqrt_A)
