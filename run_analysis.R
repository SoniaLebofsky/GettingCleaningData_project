### This script is used to create the tidy data set for the Getting and Cleaning
### Data Coursera course project.
### It uses the raw data from the UCI HAR Dataset on accelerometer data from 
### Samsung phones, used for tracking user physical activity.

library(dplyr)
## Read in test and train X data and labels
setwd(paste(getwd(),"/UCI HAR Dataset/train/", sep=""))
subject_train <- read.table("subject_train.txt")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
setwd("../")
setwd(paste(getwd(), "/test/", sep=""))
subject_test <- read.table("subject_test.txt")
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
setwd("../")

## Read in names of feature columns 
feature_names <- read.table("features.txt")
feature_names <- feature_names[,2]

## Extract the indices for the features containing only the means and stds of measurements
features <- grep("mean\\(\\)|std\\(\\)", feature_names)

## Extract the only the means and stds of measurements from the X data sets
X_test <- X_test[ ,features]
X_train <- X_train[ ,features]

## Merge all data into a single data frame
test_data <- cbind(subject_test, y_test, X_test)
train_data <- cbind(subject_train, y_train, X_train)
data <- rbind(train_data, test_data)

## Clean up workspace by removing unused data frames
rm(subject_test,subject_train,X_test,X_train,y_test,y_train,test_data,train_data)

## Name the columns of the data frame with the appropriate corresponding measurement 
## and make feature names more descriptive
feature_names <- feature_names[features]
feature_names <- sub("^f","freq.",feature_names)
feature_names <- sub("^t", "time.",feature_names)
feature_names <- sub("Acc", "Accelerometer",feature_names)
feature_names <- sub("Gyro", "Gyroscope",feature_names)
feature_names <- sub("Mag", "Magnitude",feature_names)
feature_names <- sub("BodyBody", "Body",feature_names)
feature_names <- sub("\\(\\)", "",feature_names)
feature_names <- gsub("-", "\\.",feature_names)

## Name the columns of the data frame with the appropriate corresponding measurement
colnames(data) <- c("SubjectID", "Activity", feature_names)

## Relabel Activity with descriptive activity name
activity.names <- c("WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
data$Activity <- activity.names[data$Activity]

## Reorder data frame by subject ID and then by activity type.
data <- arrange(data, SubjectID, Activity)

## Generate tidy data set: average of each measurement, for each subject for each activity.
tidy_data <- data %>% group_by(SubjectID,Activity) %>% summarise_each(funs(mean), -c(SubjectID, Activity))

## Add "mean" to column names to indicate the data is the average of original data
names(tidy_data)[3:length(names(tidy_data))] <- paste("mean", names(tidy_data)[3:length(names(tidy_data))], sep = ".")

## Write out tidy data set to text file
setwd("../")
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)




