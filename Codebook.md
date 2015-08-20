
# Codebook for tidy_data dataset
This is the codebook for the tidy_data dataset obtained from running run_analysis.R.
The tidy_data dataset is the tidy dataset described in the accomponying README document in this repository.

The codebook describes each variable for the dataset, and the variables are listed in the order of the tidy_data dataset columns. The format of the variable description in this document is as follows:

+ *Name of Variable*

    * Description: A description of the what is represented by the variable, as intepreted from the raw dataset file features_info.txt.
    
    * Based on: The raw dataset name of the variable, for reference.

## Variables


+ *SubjectID*  

    * Description: The assigned ID for the experiment participant, as per the raw data subject_test.txt and subject_train.txt files.
    
    * Based on: N/A
    
+ *Activity*

    * Description: Labels for the activity performed by the experiment participant for which measurements were made, as per the raw data y_test.txt and y_train.txt files.  
    
    * Based on: In raw data set, activities are labeled with numbers. The corresponding activity name is provided in the raw data file activity_labels.txt.
    
+ *mean.time.BodyAccelerometer.mean.X*

    * Description: The mean of the time domain signal of the body linear acceleration, as measured by the accelerometer, in the X direction, averaged for each activity for each subject.    
    
    * Based on: tBodyAcc-mean()-X  

+ *mean.time.BodyAccelerometer.mean.Y*

    * Description: The mean of the time domain signal of the body linear acceleration, as measured by the accelerometer, in the Y direction, averaged for each activity for each subject.    
    
    * Based on: tBodyAcc-mean()-Y 

+ *mean.time.BodyAccelerometer.mean.Z*

    * Description: The mean of the time domain signal of the body linear acceleration, as measured by the accelerometer, in the Z direction, averaged for each activity for each subject.  
    
    * Based on: tBodyAcc-mean()-Z  
    
+ *mean.time.BodyAccelerometer.std.X*

    * Description: The standard deviation of the time domain signal of the body linear acceleration, as measured by the accelerometer, in the X direction, averaged for each activity for each subject.    
    
    * Based on: tBodyAcc-std()-X  

+ *mean.time.BodyAccelerometer.std.Y*

    * Description: The standard deviation of the time domain signal of the body linear acceleration, as measured by the accelerometer, in the Y direction, averaged for each activity for each subject.    
    
    * Based on: tBodyAcc-std()-Y 

+ *mean.time.BodyAccelerometer.std.Z*

    * Description: The standard deviation of the time domain signal of the body linear acceleration, as measured by the accelerometer, in the Z direction, averaged for each activity for each subject.    
    
    * Based on: tBodyAcc-std()-Z
    
+ *mean.time.GravityAccelerometer.mean.X*  

    * Description: The mean of the time domain signal of the gravity linear acceleration, as measured by the accelerometer, in the X direction, averaged for each activty for each subject.
    
    * Based on: tGravityAcc-mean()-X
    
+ *mean.time.GravityAccelerometer.mean.Y*  

    * Description: The mean of the time domain signal of the gravity linear acceleration, as measured by the accelerometer, in the Y direction, averaged for each activty for each subject.
    
    * Based on: tGravityAcc-mean()-Y

+ *mean.time.GravityAccelerometer.mean.Z*  

    * Description: The mean of the time domain signal of the gravity linear acceleration, as measured by the accelerometer, in the Z direction, averaged for each activty for each subject.
    
    * Based on: tGravityAcc-mean()-Z

+ *mean.time.GravityAccelerometer.std.X*  

    * Description: The standard deviation of the time domain signal of the gravity linear acceleration, as measured by the accelerometer, in the X direction, averaged for each activty for each subject.
    
    * Based on: tGravityAcc-std()-X

+ *mean.time.GravityAccelerometer.std.Y*  

    * Description: The standard deviation of the time domain signal of the gravity linear acceleration, as measured by the accelerometer, in the Y direction, averaged for each activty for each subject.
    
    * Based on: tGravityAcc-std()-Y
    
+ *mean.time.GravityAccelerometer.std.Z*  

    * Description: The standard deviation of the time domain signal of the gravity linear acceleration, as measured by the accelerometer, in the Z direction, averaged for each activty for each subject.
    
    * Based on: tGravityAcc-std()-Z

+ *mean.time.BodyAccelerometerJerk.mean.X*

    * Description: The mean of the time domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the X direction, averaged for each activity for each subject.
    
    * Based on: tBodyAccJerk-mean()-X

+ *mean.time.BodyAccelerometerJerk.mean.Y*

    * Description: The mean of the time domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the Y direction, averaged for each activity for each subject.
    
    * Based on: tBodyAccJerk-mean()-Y
    
+ *mean.time.BodyAccelerometerJerk.mean.Z*

    * Description: The mean of the time domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the Z direction, averaged for each activity for each subject.
    
    * Based on: tBodyAccJerk-mean()-Z

+ *mean.time.BodyAccelerometerJerk.std.X*

    * Description: The standard deviation of the time domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the X direction, averaged for each activity for each subject.
    
    * Based on: tBodyAccJerk-std()-X

+ *mean.time.BodyAccelerometerJerk.std.Y*

    * Description: The standard deviation of the time domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the Y direction, averaged for each activity for each subject.
    
    * Based on: tBodyAccJerk-std()-Y

+ *mean.time.BodyAccelerometerJerk.std.Z*

    * Description: The standard deviation of the time domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the Z direction, averaged for each activity for each subject.
    
    * Based on: tBodyAccJerk-std()-Z

+ *mean.time.BodyGyroscope.mean.X*

    * Description: The mean of the time domain signal of the body angular velocity, as measured by the gyroscope, in the X direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyro-mean()-X

+ *mean.time.BodyGyroscope.mean.Y*

    * Description: The mean of the time domain signal of the body angular velocity, as measured by the gyroscope, in the Y direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyro-mean()-Y

+ *mean.time.BodyGyroscope.mean.Z*

    * Description: The mean of the time domain signal of the body angular velocity, as measured by the gyroscope, in the Z direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyro-mean()-Z

+ *mean.time.BodyGyroscope.std.X*

    * Description: The standard deviation of the time domain signal of the body angular velocity, as measured by the gyroscope, in the X direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyro-std()-X

+ *mean.time.BodyGyroscope.std.Y*

    * Description: The standard deviation of the time domain signal of the body angular velocity, as measured by the gyroscope, in the Y direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyro-std()-Y

+ *mean.time.BodyGyroscope.std.Z*

    * Description: The standard deviation of the time domain signal of the body angular velocity, as measured by the gyroscope, in the Z direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyro-std()-Z

+ *mean.time.BodyGyroscopeJerk.mean.X*

    * Description: The mean of the time domain signal of the body angular jerk (derivative of the angular velocity, as measured by the gyroscope), in the X direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyroJerk-mean()-X
    
+ *mean.time.BodyGyroscopeJerk.mean.Y*

    * Description: The mean of the time domain signal of the body angular jerk (derivative of the angular velocity, as measured by the gyroscope), in the Y direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyroJerk-mean()-Y
    
+ *mean.time.BodyGyroscopeJerk.mean.Z*

    * Description: The mean of the time domain signal of the body angular jerk (derivative of the angular velocity, as measured by the gyroscope), in the Z direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyroJerk-mean()-Z
    
+ *mean.time.BodyGyroscopeJerk.std.X*

    * Description: The standard deviation of the time domain signal of the body angular jerk (derivative of the angular velocity, as measured by the gyroscope), in the X direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyroJerk-std()-X

+ *mean.time.BodyGyroscopeJerk.std.Y*

    * Description: The standard deviation of the time domain signal of the body angular jerk (derivative of the angular velocity, as measured by the gyroscope), in the Y direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyroJerk-std()-Y

+ *mean.time.BodyGyroscopeJerk.std.Z*

    * Description: The standard deviation of the time domain signal of the body angular jerk (derivative of the angular velocity, as measured by the gyroscope), in the Z direction, averaged for each activity for each subject.
    
    * Based on: tBodyGyroJerk-std()-Z
    
+ *mean.time.BodyAccelerometerMagnitude.mean*

    * Description: The mean of the magnitude of the three dimensional body linear acceleration time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tBodyAccMag-mean()

+ *mean.time.BodyAccelerometerMagnitude.std*

    * Description: The standard deviation of the magnitude of the three dimensional body linear acceleration time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tBodyAccMag-std()

+ *mean.time.GravityAccelerometerMagnitude.mean*

    * Description: The mean of the magnitude of the three dimensional gravity linear acceleration time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tGravityAccMag-mean()
    
+ *mean.time.GravityAccelerometerMagnitude.std*

    * Description: The standard deviation of the magnitude of the three dimensional gravity linear acceleration time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tGravityAccMag-std()
    
+ *mean.time.BodyAccelerometerJerkMagnitude.mean*

    * Description: The mean of the magnitude of the three dimensional body linear jerk time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tBodyAccJerkMag-mean()
    
+ *mean.time.BodyAccelerometerJerkMagnitude.std*

    * Description: The standard deviation of the magnitude of the three dimensional body linear jerk time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tBodyAccJerkMag-std()

+ *mean.time.BodyGyroscopeMagnitude.mean*

    * Description: The mean of the magnitude of the three dimensional body angular velocity time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tBodyGyroMag-mean()

+ *mean.time.BodyGyroscopeMagnitude.std*

    * Description: The standard devitation of the magnitude of the three dimensional body angular velocity time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tBodyGyroMag-std()
    
+ *mean.time.BodyGyroscopeJerkMagnitude.mean*

    * Description: The mean of the magnitude of the three dimensional body angular jerk time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tBodyGyroJerkMag-mean()

+ *mean.time.BodyGyroscopeJerkMagnitude.std*

    * Description: The standard devitation of the magnitude of the three dimensional body angular jerk time domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: tBodyGyroJerkMag-std()

+ *mean.freq.BodyAccelerometer.mean.X*

    * Description: The mean of the frequency domain signal of the body linear acceleration, as measured by the accelerometer, in the X direction, averaged for each activity for each subject.
    
    * Based on: fBodyAcc-mean()-X
    
+ *mean.freq.BodyAccelerometer.mean.Y*

    * Description: The mean of the frequency domain signal of the body linear acceleration, as measured by the accelerometer, in the Y direction, averaged for each activity for each subject.
    
    * Based on: fBodyAcc-mean()-Y
    
+ *mean.freq.BodyAccelerometer.mean.Z*

    * Description: The mean of the frequency domain signal of the body linear acceleration, as measured by the accelerometer, in the Z direction, averaged for each activity for each subject.
    
    * Based on: fBodyAcc-mean()-Z

+ *mean.freq.BodyAccelerometer.std.X*

    * Description: The standard deviation of the frequency domain signal of the body linear acceleration, as measured by the accelerometer, in the X direction, averaged for each activity for each subject.
    
    * Based on: fBodyAcc-std()-X

+ *mean.freq.BodyAccelerometer.std.Y*

    * Description: The standard deviation of the frequency domain signal of the body linear acceleration, as measured by the accelerometer, in the Y direction, averaged for each activity for each subject.
    
    * Based on: fBodyAcc-std()-Y

+ *mean.freq.BodyAccelerometer.std.Z*

    * Description: The standard deviation of the frequency domain signal of the body linear acceleration, as measured by the accelerometer, in the Z direction, averaged for each activity for each subject.
    
    * Based on: fBodyAcc-std()-Z
    
+ *mean.freq.BodyAccelerometerJerk.mean.X*

    * Description: The mean of the frequency domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the X direction, averaged for each activity for each subject.
    
    * Based on: fBodyAccJerk-mean().X

+ *mean.freq.BodyAccelerometerJerk.mean.Y*

    * Description: The mean of the frequency domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the Y direction, averaged for each activity for each subject.
    
    * Based on: fBodyAccJerk-mean().Y
    
+ *mean.freq.BodyAccelerometerJerk.mean.Z*

    * Description: The mean of the frequency domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the Z direction, averaged for each activity for each subject.
    
    * Based on: fBodyAccJerk-mean().Z

+ *mean.freq.BodyAccelerometerJerk.std.X*

    * Description: The standard deviation of the frequency domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the X direction, averaged for each activity for each subject.
    
    * Based on: fBodyAccJerk-std().X

+ *mean.freq.BodyAccelerometerJerk.std.Y*

    * Description: The standard deviation of the frequency domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the Y direction, averaged for each activity for each subject.
    
    * Based on: fBodyAccJerk-std().Y

+ *mean.freq.BodyAccelerometerJerk.std.Z*

    * Description: The standard deviation of the frequency domain signal of the body linear jerk (derivative of acceleration, as measured by the accelerometer), in the Z direction, averaged for each activity for each subject.
    
    * Based on: fBodyAccJerk-std().Z

+ *mean.freq.BodyGyroscope.mean.X*

    * Description: The mean of the frequency domain signal of the body angular velocity, as measured by the gyroscope, in the X direction, averaged for each activity for each subject.
    
    * Based on: fBodyGyro-mean()-X

+ *mean.freq.BodyGyroscope.mean.Y*

    * Description: The mean of the frequency domain signal of the body angular velocity, as measured by the gyroscope, in the Y direction, averaged for each activity for each subject.
    
    * Based on: fBodyGyro-mean()-Y

+ *mean.freq.BodyGyroscope.mean.Z*

    * Description: The mean of the frequency domain signal of the body angular velocity, as measured by the gyroscope, in the Z direction, averaged for each activity for each subject.
    
    * Based on: fBodyGyro-mean()-Z

+ *mean.freq.BodyGyroscope.std.X*

    * Description: The standard deviation of the frequency domain signal of the body angular velocity, as measured by the gyroscope, in the X direction, averaged for each activity for each subject.
    
    * Based on: fBodyGyro-std()-X

+ *mean.freq.BodyGyroscope.std.Y*

    * Description: The standard deviation of the frequency domain signal of the body angular velocity, as measured by the gyroscope, in the Y direction, averaged for each activity for each subject.
    
    * Based on: fBodyGyro-std()-Y
    
+ *mean.freq.BodyGyroscope.std.Z*

    * Description: The standard deviation of the frequency domain signal of the body angular velocity, as measured by the gyroscope, in the Z direction, averaged for each activity for each subject.
    
    * Based on: fBodyGyro-std()-Z

+ *mean.freq.BodyAccelerometerMagnitude.mean*

    * Description: The mean of the magnitude of the three dimensional body linear acceleration frequency domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.

    * Based on: fBodyAccMag-mean()

+ *mean.freq.BodyAccelerometerMagnitude.std*

    * Description: The standard deviation of the magnitude of the three dimensional body linear acceleration frequency domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.

    * Based on: fBodyAccMag-std()

+ *mean.freq.BodyAccelerometerJerkMagnitude.mean*

    * Description: The mean of the magnitude of the three dimensional body linear jerk frequency domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.

    * Based on: fBodyBodyAccJerkMag-mean()

+ *mean.freq.BodyAccelerometerJerkMagnitude.std*

    * Description: The standard deviation of the magnitude of the three dimensional body linear jerk frequency domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.

    * Based on: fBodyBodyAccJerkMag-std()

+ *mean.freq.BodyGyroscopeMagnitude.mean*

    * Description: The mean of the magnitude of the three dimensional body angular velocity frequency domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: fBodyBodyGyroMag-mean()

+ *mean.freq.BodyGyroscopeMagnitude.std*

    * Description: The standard deviation of the magnitude of the three dimensional body angular velocity frequency domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: fBodyBodyGyroMag-std()

+ *mean.freq.BodyGyroscopeJerkMagnitude.mean*

    * Description: The mean of the magnitude of the three dimensional body angular jerk frequency domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: fBodyBodyGyroJerkMag-mean()

+ *mean.freq.BodyGyroscopeJerkMagnitude.std*

    * Description: The standard deviation of the magnitude of the three dimensional body angular jerk frequency domain signals (calculated using the Euclidean norm), averaged for each activity for each subject.
    
    * Based on: fBodyBodyGyroJerkMag-std()
    