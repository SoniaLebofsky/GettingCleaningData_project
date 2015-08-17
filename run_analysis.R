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
setwd("../../")

## Extract the only the means and stds of measurements from the X data sets
X_test <- X_test[ ,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,
                     240:241,253:254,266:271,345:350,424:429,503:504,516:517,
                     529:530,542:543)]

X_train <- X_train[ ,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,
                     240:241,253:254,266:271,345:350,424:429,503:504,516:517,
                     529:530,542:543)]

## Merge all data into a single data frame
test_data <- cbind(subject_test, y_test, X_test)
train_data <- cbind(subject_train, y_train, X_train)
data <- rbind(train_data, test_data)

## Clean up workspace by removing unused data frames
rm(subject_test,subject_train,X_test,X_train,y_test,y_train,test_data,train_data)

## Name the columns of the data frame with the appropriate corresponding measurement
colnames(data) <- c("SubjectID", "Activity", 
                    "time.BodyAccelerometer.X.mean", "time.BodyAccelerometer.Y.mean", "time.BodyAccelerometer.Z.mean",
                    "time.BodyAccelerometer.X.std", "time.BodyAccelerometer.Y.std", "time.BodyAccelerometer.Z.std",
                    "time.GravityAccelerometer.X.mean", "time.GravityAccelerometer.Y.mean", "time.GravityAccelerometer.Z.mean",
                    "time.GravityAccelerometer.X.std", "time.GravityAccelerometer.Y.std", "time.GravityAccelerometer.Z.std",
                    "time.BodyAccelerometerJerk.X.mean", "time.BodyAccelerometerJerk.Y.mean", "time.BodyAccelerometerJerk.Z.mean",
                    "time.BodyAccelerometerJerk.X.std", "time.BodyAccelerometerJerk.Y.std", "time.BodyAccelerometerJerk.Z.std",
                    "time.BodyGyroscope.X.mean", "time.BodyGyroscope.Y.mean", "time.BodyGyroscope.Z.mean",
                    "time.BodyGyroscope.X.std", "time.BodyGyroscope.Y.std", "time.BodyGyroscope.Z.std",
                    "time.BodyGyroscopeJerk.X.mean", "time.BodyGyroscopeJerk.Y.mean", "time.BodyGyroscopeJerk.Z.mean",
                    "time.BodyGyroscopeJerk.X.std", "time.BodyGyroscopeJerk.Y.std", "time.BodyGyroscopeJerk.Z.std",
                    "time.BodyAccelerometerMagnitude.mean", "time.BodyAccelerometerMagnitude.std",
                    "time.GravityAccelerometerMagnitude.mean","time.GravityAccelerometerMagnitude.std",
                    "time.BodyAccelerometerJerkMagnitude.mean", "time.BodyAccelerometerJerkMagnitude.std",
                    "time.BodyGyroscopeMagnitude.mean", "time.BodyGyroscopeMagnitude.std",
                    "time.BodyGyroscopeJerkMagnitude.mean", "time.BodyGyroscopeJerkMagnitude.std",
                    "freq.BodyAccelerometer.X.mean", "freq.BodyAccelerometer.Y.mean", "freq.BodyAccelerometer.Z.mean",
                    "freq.BodyAccelerometer.X.std", "freq.BodyAccelerometer.Y.std", "freq.BodyAccelerometer.Z.std",
                    "freq.BodyAccelerometerJerk.X.mean", "freq.BodyAccelerometerJerk.Y.mean", "freq.BodyAccelerometerJerk.Z.mean",
                    "freq.BodyAccelerometerJerk.X.std", "freq.BodyAccelerometerJerk.Y.std", "freq.BodyAccelerometerJerk.Z.std",
                    "freq.BodyGyroscope.X.mean", "freq.BodyGyroscope.Y.mean", "freq.BodyGyroscope.Z.mean",
                    "freq.BodyGyroscope.X.std", "freq.BodyGyroscope.Y.std", "freq.BodyGyroscope.Z.std",
                    "freq.BodyAccelerometerMagnitude.mean", "freq.BodyAccelerometerMagnitude.std",
                    "freq.BodyAccelerometerJerkMagnitude.mean", "freq.BodyAccelerometerJerkMagnitude.std",
                    "freq.BodyGyroscopeMagnitude.mean", "freq.BodyGyroscopeMagnitude.std",
                    "freq.BodyGyroscopeJerkMagnitude.mean", "freq.BodyGyroscopeJerkMagnitude.std")

## Relabel Activity with descriptive activity name
activity.names <- c("WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
data$Activity <- activity.names[data$Activity]

## Reorder data frame by subject ID and then by activity type.
data <- arrange(data, SubjectID, Activity)

## Generate tidy data set: average of each measurement, for each subject for each activity.
tidy_data <- data %>% group_by(SubjectID,Activity) %>% summarise_each(funs(mean), -c(SubjectID, Activity))

## Write out tidy data set to text file
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)




