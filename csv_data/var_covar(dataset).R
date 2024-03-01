# Read the CSV file
df <- read.csv("Walmart_sales.csv")

df_1 = subset(df, select = -c(Store, Date))

df_2 = df_1[-c(101:6435),]

# Convert the data frame to a matrix
data_matrix <- as.matrix(df_2)

# Number of rows and columns
n <- nrow(data_matrix)
p <- ncol(data_matrix)

# Mean of each column
col_means <- colSums(data_matrix) / n

# Center the data (subtract mean from each element)
centered_data <- data_matrix - matrix(rep(col_means, each = n), nrow = n, byrow = FALSE)

# Variance-covariance matrix
var_covar_matrix <- (t(centered_data) %*% centered_data) / (n - 1)

# Standard deviation of each column
col_std_dev <- sqrt(diag(var_covar_matrix))

# Correlation matrix
correlation_matrix <- var_covar_matrix / (col_std_dev %*% t(col_std_dev))

# Print the matrices
print(var_covar_matrix)
print(correlation_matrix)
