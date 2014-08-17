### CodeBook

#### Overview

The features selected in this tidy dataset are all **averages per activity type and per subject**

There are 6 types of activity recorded in this set and there are 30 subjects resulting in a tidy dataset containing 180 observations

At a high level, here are the naming rules followed by the dataset
- The time domain signals use the prefix 't' to denote time
- The Acceleration signals are separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ
- The Jerk signals are captured in tBodyAccJerk-XYZ and tBodyGyroJerk-XY
- The magnitude of these three-dimensional signals is captured in tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag 
- The frequency domain signals use the prefix 'f' to denote frequency. 
- These are captured by fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag 
- Mean and Std suffix are used to denote average and standard deviation applied over a set of time windows
- '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
- Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable
  - gravityMean
  - tBodyAccMean
  - tBodyAccJerkMean
  - tBodyGyroMean
  - tBodyGyroJerkMean

#### Complete Features List

- Activity : Descriptive name of the activity undertaken
- Subject : Subject ID
- tBodyAcc-mean()-X : average per activity per subject of tBodyAcc-mean()-X 
- tBodyAcc-mean()-Y : average per activity per subject of tBodyAcc-mean()-Y 
- tBodyAcc-mean()-Z : average per activity per subject of tBodyAcc-mean()-Z 
- tBodyAcc-std()-X : average per activity per subject of tBodyAcc-std()-X
- tBodyAcc-std()-Y : average per activity per subject of tBodyAcc-std()-Y
- tBodyAcc-std()-Z : average per activity per subject of tBodyAcc-std()-Z
- tGravityAcc-mean()-X : average per activity per subject of tGravityAcc-mean()-X
- tGravityAcc-mean()-Y : average per activity per subject of tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z : average per activity per subject of tGravityAcc-mean()-Z
- tGravityAcc-std()-X : average per activity per subject of tGravityAcc-std()-X
- tGravityAcc-std()-Y : average per activity per subject of tGravityAcc-std()-Y
- tGravityAcc-std()-Z : average per activity per subject of tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X : average per activity per subject of tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y : average per activity per subject of tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z : average per activity per subject of tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X : average per activity per subject of tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y : average per activity per subject of tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z : average per activity per subject of tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X : average per activity per subject of tBodyGyro-mean()-X
- tBodyGyro-mean()-Y : average per activity per subject of tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z : average per activity per subject of tBodyGyro-mean()-Z
- tBodyGyro-std()-X : average per activity per subject of tBodyGyro-std()-X
- tBodyGyro-std()-Y : average per activity per subject of tBodyGyro-std()-Y
- tBodyGyro-std()-Z : average per activity per subject of tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X : average per activity per subject of tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y : average per activity per subject of tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z : average per activity per subject of tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X : average per activity per subject of tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y : average per activity per subject of tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z : average per activity per subject of tBodyGyroJerk-std()-Z
- tBodyAccMag-mean() : average per activity per subject of tBodyAccMag-mean()
- tBodyAccMag-std() : average per activity per subject of tBodyAccMag-std()
- tGravityAccMag-mean() : average per activity per subject of tGravityAccMag-mean() 
- tGravityAccMag-std() : average per activity per subject of tGravityAccMag-std()
- tBodyAccJerkMag-mean() : average per activity per subject of tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std() : average per activity per subject of tBodyAccJerkMag-std()
- tBodyGyroMag-mean() : average per activity per subject of tBodyGyroMag-mean()
- tBodyGyroMag-std() : average per activity per subject of tBodyGyroMag-std()
- tBodyGyroJerkMag-mean() : average per activity per subject of tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std() : average per activity per subject of tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X : average per activity per subject of fBodyAcc-mean()-X
- fBodyAcc-mean()-Y : average per activity per subject of fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z : average per activity per subject of fBodyAcc-mean()-Z
- fBodyAcc-std()-X : average per activity per subject of fBodyAcc-std()-X
- fBodyAcc-std()-Y : average per activity per subject of fBodyAcc-std()-Y
- fBodyAcc-std()-Z : average per activity per subject of fBodyAcc-std()-Z
- fBodyAcc-meanFreq()-X : average per activity per subject of fBodyAcc-meanFreq()-X
- fBodyAcc-meanFreq()-Y : average per activity per subject of fBodyAcc-meanFreq()-Y
- fBodyAcc-meanFreq()-Z : average per activity per subject of fBodyAcc-meanFreq()-Z
- fBodyAccJerk-mean()-X : average per activity per subject of fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y : average per activity per subject of fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z : average per activity per subject of fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X : average per activity per subject of fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y : average per activity per subject of fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z : average per activity per subject of fBodyAccJerk-std()-Z
- fBodyAccJerk-meanFreq()-X : average per activity per subject of fBodyAccJerk-meanFreq()-X
- fBodyAccJerk-meanFreq()-Y : average per activity per subject of fBodyAccJerk-meanFreq()-Y
- fBodyAccJerk-meanFreq()-Z : average per activity per subject of fBodyAccJerk-meanFreq()-Z
- fBodyGyro-mean()-X : average per activity per subject of fBodyGyro-mean()-X
- fBodyGyro-mean()-Y : average per activity per subject of fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z : average per activity per subject of fBodyGyro-mean()-Z
- fBodyGyro-std()-X : average per activity per subject of fBodyGyro-std()-X
- fBodyGyro-std()-Y : average per activity per subject of fBodyGyro-std()-Y
- fBodyGyro-std()-Z : average per activity per subject of fBodyGyro-std()-Z
- fBodyGyro-meanFreq()-X : average per activity per subject of fBodyGyro-meanFreq()-X
- fBodyGyro-meanFreq()-Y : average per activity per subject of fBodyGyro-meanFreq()-Y
- fBodyGyro-meanFreq()-Z : average per activity per subject of fBodyGyro-meanFreq()-Z
- fBodyAccMag-mean() : average per activity per subject of fBodyAccMag-mean()
- fBodyAccMag-std() : average per activity per subject of fBodyAccMag-std()
- fBodyAccMag-meanFreq() : average per activity per subject of fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean() : average per activity per subject of fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std() : average per activity per subject of fBodyBodyAccJerkMag-std()
- fBodyBodyAccJerkMag-meanFreq() : average per activity per subject of fBodyBodyAccJerkMag-meanFreq()
- fBodyBodyGyroMag-mean() : average per activity per subject of fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std() : average per activity per subject of fBodyBodyGyroMag-std()
- fBodyBodyGyroMag-meanFreq() : average per activity per subject of fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroJerkMag-mean() : average per activity per subject of fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std() : average per activity per subject of fBodyBodyGyroJerkMag-std()
- fBodyBodyGyroJerkMag-meanFreq() : average per activity per subject of fBodyBodyGyroJerkMag-meanFreq()
- angle(tBodyAccMean,gravity) : average per activity per subject of angle(tBodyAccMean,gravity)
- angle(tBodyAccJerkMean),gravityMean) : average per activity per subject of angle(tBodyAccJerkMean),gravityMean)
- angle(tBodyGyroMean,gravityMean) : average per activity per subject of angle(tBodyGyroMean,gravityMean)
- angle(tBodyGyroJerkMean,gravityMean) : average per activity per subject of angle(tBodyGyroJerkMean,gravityMean)
- angle(X,gravityMean) : average per activity per subject of angle(X,gravityMean)
- angle(Y,gravityMean) : average per activity per subject of angle(Y,gravityMean)
- angle(Z,gravityMean) : average per activity per subject of angle(Z,gravityMean)