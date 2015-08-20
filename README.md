# GettingCleaningData_project
Project for the Coursera Getting and Cleaning Data course.

## What is contained in the GettingCleaningData_project repository?

* UCI HAR Dataset: This directory contains all the raw data files, as downloaded from the course project page. Within the UCI HAR Dataset directory a README and other documents describing the features and labels, as well as two necessary folders called "train" and "test".
    - "train" contains X_train.txt, y_train.txt, and subject_train.txt, the training dataset.
    - "test" contains X_test.txt, y_test.txt, and subject_test.txt, the testing dataset.  

* run_analysis.R: The R script used to read in the raw data from UCI HAR Dataset, and process into a tidy dataset. A description of what this script does and what the resulting tidy dataset is will follow later in this document.

* tidy_data.txt: The resulting tidy dataset as output from run_analysis.R.

* Codebook.md: The codebook for the resulting tidy dataset.

* README.md: The readme for this project (this document).

## How does the run_analysis.R script work?

1. The script assumes that the user is running the code from a directory that contains the UCI HAR Dataset folder, inside of which are the "test" folder and "train" folder.

2. The script first reads in the data from the individual training and test files, and stores them in separate data frames.

3. The feature names are then read in from the features.txt file, stored in a vector, and regular expressions are used construct an index vector for the features of interest based on the feature names.

    - The features of interest are the mean and standard deviation of each measurement. 
    
        The measurements are listed in the features_info.txt file as [tBodyAcc-XYZ; tGravityAcc-XYZ; tBodyAccJerk-XYZ; tBodyGyro-XYZ; tBodyGyroJerk-XYZ; tBodyAccMag; tGravityAccMag; tBodyAccJerkMag; tBodyGyroMag; tBodyGyroJerkMag; fBodyAcc-XYZ; fBodyAccJerk-XYZ; fBodyGyro-XYZ; fBodyAccMag; fBodyAccJerkMag; fBodyGyroMag; fBodyGyroJerkMag]. 
    
        Therefore, only the feature names with the above measurements followed by either "mean()" or "std()" are retained as the variables that represent the mean and standard deviations of each measurement.

4. The index vector resulting from step 3 is used to subset the X data (for both train and test), which is the measurement data.

5. The train and test data is then bound together, along with the corresponding subjectID and activity data, in order to create a large merged data frame.

6. The activity labels (which are numbers in the raw dataset) are renamed with the corresponding descriptive activity name as per the activity_labels.txt file, and the column headers for the large dataset are renamed with descriptive variable names for each of the measurements.

7. In order to creat the tidy dataset, the large dataset is grouped by subjectID and then by activity, and the average of each measurement for the grouped dataset is found. The result is a dataframe, called tidy_data, that summarizes the average for each measurement for each activity and subject. 

## What is contained in the final tidy dataset?

As mentioned above, the final tidy dataset, called tidy_data, contains the average of each measurement variable fore each activity and subject. An example of the resulting output when the tidy_data dataframe is printed is shown here:

```
> tidy_data
Source: local data frame [180 x 68]
Groups: SubjectID

   SubjectID           Activity mean.time.BodyAccelerometer.mean.X mean.time.BodyAccelerometer.mean.Y mean.time.BodyAccelerometer.mean.Z
1          1             LAYING                          0.2215982                       -0.040513953                         -0.1132036
2          1            SITTING                          0.2612376                       -0.001308288                         -0.1045442
3          1           STANDING                          0.2789176                       -0.016137590                         -0.1106018
4          1            WALKING                          0.2773308                       -0.017383819                         -0.1111481
5          1 WALKING_DOWNSTAIRS                          0.2891883                       -0.009918505                         -0.1075662
6          1   WALKING_UPSTAIRS                          0.2554617                       -0.023953149                         -0.0973020
7          2             LAYING                          0.2813734                       -0.018158740                         -0.1072456
8          2            SITTING                          0.2770874                       -0.015687994                         -0.1092183
9          2           STANDING                          0.2779115                       -0.018420827                         -0.1059085
10         2            WALKING                          0.2764266                       -0.018594920                         -0.1055004
..       ...                ...                                ...                                ...                                ...
Variables not shown: mean.time.BodyAccelerometer.std.X (dbl), mean.time.BodyAccelerometer.std.Y (dbl), mean.time.BodyAccelerometer.std.Z (dbl),
  mean.time.GravityAccelerometer.mean.X (dbl), mean.time.GravityAccelerometer.mean.Y (dbl), mean.time.GravityAccelerometer.mean.Z (dbl),
  mean.time.GravityAccelerometer.std.X (dbl), mean.time.GravityAccelerometer.std.Y (dbl), mean.time.GravityAccelerometer.std.Z (dbl),
  mean.time.BodyAccelerometerJerk.mean.X (dbl), mean.time.BodyAccelerometerJerk.mean.Y (dbl), mean.time.BodyAccelerometerJerk.mean.Z (dbl),
  mean.time.BodyAccelerometerJerk.std.X (dbl), mean.time.BodyAccelerometerJerk.std.Y (dbl), mean.time.BodyAccelerometerJerk.std.Z (dbl),
  mean.time.BodyGyroscope.mean.X (dbl), mean.time.BodyGyroscope.mean.Y (dbl), mean.time.BodyGyroscope.mean.Z (dbl),
  mean.time.BodyGyroscope.std.X (dbl), mean.time.BodyGyroscope.std.Y (dbl), mean.time.BodyGyroscope.std.Z (dbl),
  mean.time.BodyGyroscopeJerk.mean.X (dbl), mean.time.BodyGyroscopeJerk.mean.Y (dbl), mean.time.BodyGyroscopeJerk.mean.Z (dbl),
  mean.time.BodyGyroscopeJerk.std.X (dbl), mean.time.BodyGyroscopeJerk.std.Y (dbl), mean.time.BodyGyroscopeJerk.std.Z (dbl),
  mean.time.BodyAccelerometerMagnitude.mean (dbl), mean.time.BodyAccelerometerMagnitude.std (dbl), mean.time.GravityAccelerometerMagnitude.mean
  (dbl), mean.time.GravityAccelerometerMagnitude.std (dbl), mean.time.BodyAccelerometerJerkMagnitude.mean (dbl),
  mean.time.BodyAccelerometerJerkMagnitude.std (dbl), mean.time.BodyGyroscopeMagnitude.mean (dbl), mean.time.BodyGyroscopeMagnitude.std (dbl),
  mean.time.BodyGyroscopeJerkMagnitude.mean (dbl), mean.time.BodyGyroscopeJerkMagnitude.std (dbl), mean.freq.BodyAccelerometer.mean.X (dbl),
  mean.freq.BodyAccelerometer.mean.Y (dbl), mean.freq.BodyAccelerometer.mean.Z (dbl), mean.freq.BodyAccelerometer.std.X (dbl),
  mean.freq.BodyAccelerometer.std.Y (dbl), mean.freq.BodyAccelerometer.std.Z (dbl), mean.freq.BodyAccelerometerJerk.mean.X (dbl),
  mean.freq.BodyAccelerometerJerk.mean.Y (dbl), mean.freq.BodyAccelerometerJerk.mean.Z (dbl), mean.freq.BodyAccelerometerJerk.std.X (dbl),
  mean.freq.BodyAccelerometerJerk.std.Y (dbl), mean.freq.BodyAccelerometerJerk.std.Z (dbl), mean.freq.BodyGyroscope.mean.X (dbl),
  mean.freq.BodyGyroscope.mean.Y (dbl), mean.freq.BodyGyroscope.mean.Z (dbl), mean.freq.BodyGyroscope.std.X (dbl),
  mean.freq.BodyGyroscope.std.Y (dbl), mean.freq.BodyGyroscope.std.Z (dbl), mean.freq.BodyAccelerometerMagnitude.mean (dbl),
  mean.freq.BodyAccelerometerMagnitude.std (dbl), mean.freq.BodyAccelerometerJerkMagnitude.mean (dbl),
  mean.freq.BodyAccelerometerJerkMagnitude.std (dbl), mean.freq.BodyGyroscopeMagnitude.mean (dbl), mean.freq.BodyGyroscopeMagnitude.std (dbl),
  mean.freq.BodyGyroscopeJerkMagnitude.mean (dbl), mean.freq.BodyGyroscopeJerkMagnitude.std (dbl)
```

