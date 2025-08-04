#check working directory after making it
getwd()

#create subfolders in the folder Module_1

dir.create("script")
dir.create("Results")
dir.create("Plots")

#import csv file

data <- read.csv(file.choose())

#structure of data set

View(data)
head(data)

str(data)

#conversion of gender to factor

data$gender_fac <- as.factor(data$gender)
str(data)

#convert factor into numeric factor

data$gender_num <- ifelse(data$gender_fac == "Female", 1, 0)
str(data)
class(data$gender_num)

data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)

#Create a new variable for smoking status as a binary factor:

data$smoker_fac <- as.factor(data$smoker)
str(data)

data$smoker_fac <- ifelse(data$smoker_fac == "Yes", 1, 0)
str(data)

data$smoker_fac <- as.factor(data$smoker_fac)
str(data)
class(data$smoker_fac)

data$diagnosis_fac <- as.factor(data$diagnosis)
class(data$diagnosis_fac)
data$diagnosis_fac

