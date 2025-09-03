# 1. Check Cholesterol level (using if) 
# Write an If statement to check cholesterol level is greater than 240, 
# if true, it will prints “High Cholesterol”
cholesterol <- 230
if(cholesterol < 240){
  print("High cholesterol")
}
# 2. Blood Pressure Status (using if...else)
# Write an if…else statement to check if blood pressure is normal.
# If it’s less than 120, print: “Blood Pressure is normal”
# If false then print: “Blood Pressure is high”
Systolic_bp <- 130
if(Systolic_bp < 120){
  print("Blood pressure is normal")
} else{
  print("Blood pressure is high")
}

# 3. Automating Data Type Conversion with for loop

# Use patient_info.csv data and metadata.csv
# Perform the following steps separately on each dataset (patient_info.csv data and metadata.csv)
# Create a copy of the dataset to work on.
# Identify all columns that should be converted to factor type.
# Store their names in a variable (factor_cols).

# Example: factor_cols <- c("gender", "smoking_status")

# Use a for loop to convert all the columns in factor_cols to factor type.
# Pass factor_cols to the loop as a vector.

# Hint:
# for (col in factor_cols) {
#   data[[col]] <- as.factor(data[[col]])  # Replace 'data' with the name of your dataset
# }

patient_data <- read.csv(file.choose())

str(patient_data)
#gender, diagnosis and smoker columns will be converted to factor data type

clean_data <- patient_data
str(clean_data)

factor_cols <- c("gender", "diagnosis", "smoker")

for (col in factor_cols) {
  clean_data[[col]] <- as.factor(clean_data[[col]])
}
str(clean_data)

str(patient_data)

metadata <- read.csv(file.choose())

str(metadata)
# height and gender will be converted to factor data

clean_metadata <- metadata

factor_columns <- c("height", "gender")
for (col in factor_columns) {
  clean_metadata[[col]] <- as.factor(clean_metadata[[col]])
}
str(clean_metadata)

# 4. Converting Factors to Numeric Codes

# Choose one or more factor columns (e.g., smoker).
# Convert "Yes" to 1 and "No" to 0 using a for loop.

# Hint:
# store column names in a vector
binary_cols <- c("smoker", "gender", "diagnosis")  

# use ifelse() condition inside the loop to replace Yes with 1 and No with 0

for (col in binary_cols) {
 Patient_copy[[col]] <- ifelse(Patient_copy[[col]] == levels(Patient_copy[[col]])[1], 1, 0)
}
str(Patient_copy)
