# Install and load aplpack package
if (!requireNamespace("aplpack", quietly = TRUE)) {
  install.packages("aplpack")
}
library(aplpack)


# Assuming your data is in a CSV file named "your_data.csv"
file_path <- "C:/Users/Aanisha/Desktop/CHERNOFF FACE1.csv"

# Read the CSV file
selected_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE)

# Check the structure of your data
str(selected_data)

# Remove rows with NAs
selected_data <- na.omit(selected_data)

# Convert the data to numeric
selected_data <- as.data.frame(sapply(selected_data[, -1], as.numeric))

# Create Chernoff faces with adjusted plot margins and size
par(mar = c(1, 1, 1, 1))  
windows()

faces(selected_data)





