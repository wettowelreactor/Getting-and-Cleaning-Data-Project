Code Book - Tidy_data.csv
=================================
CSV file with 10299 rows of 82 variables

### subject
    * integer
    * Subject ID

### activities
    * character
    * Activity Type

### tBodyAcc-mean()-X
    * numeric
    * See feature description below

### tBodyAcc-mean()-Y
    * numeric
    * See feature description below

### tBodyAcc-mean()-Z
    * numeric
    * See feature description below

### tGravityAcc-mean()-X
    * numeric
    * See feature description below

### tGravityAcc-mean()-Y
    * numeric
    * See feature description below

### tGravityAcc-mean()-Z
    * numeric
    * See feature description below

### tBodyAccJerk-mean()-X
    * numeric
    * See feature description below

### tBodyAccJerk-mean()-Y
    * numeric
    * See feature description below

### tBodyAccJerk-mean()-Z
    * numeric
    * See feature description below

### tBodyGyro-mean()-X
    * numeric
    * See feature description below

### tBodyGyro-mean()-Y
    * numeric
    * See feature description below

### tBodyGyro-mean()-Z
    * numeric
    * See feature description below

### tBodyGyroJerk-mean()-X
    * numeric
    * See feature description below

### tBodyGyroJerk-mean()-Y
    * numeric
    * See feature description below

### tBodyGyroJerk-mean()-Z
    * numeric
    * See feature description below

### tBodyAccMag-mean()
    * numeric
    * See feature description below

### tGravityAccMag-mean()
    * numeric
    * See feature description below

### tBodyAccJerkMag-mean()
    * numeric
    * See feature description below

### tBodyGyroMag-mean()
    * numeric
    * See feature description below

### tBodyGyroJerkMag-mean()
    * numeric
    * See feature description below

### fBodyAcc-mean()-X
    * numeric
    * See feature description below

### fBodyAcc-mean()-Y
    * numeric
    * See feature description below

### fBodyAcc-mean()-Z
    * numeric
    * See feature description below

### fBodyAcc-meanFreq()-X
    * numeric
    * See feature description below

### fBodyAcc-meanFreq()-Y
    * numeric
    * See feature description below

### fBodyAcc-meanFreq()-Z
    * numeric
    * See feature description below

### fBodyAccJerk-mean()-X
    * numeric
    * See feature description below

### fBodyAccJerk-mean()-Y
    * numeric
    * See feature description below

### fBodyAccJerk-mean()-Z
    * numeric
    * See feature description below

### fBodyAccJerk-meanFreq()-X
    * numeric
    * See feature description below

### fBodyAccJerk-meanFreq()-Y
    * numeric
    * See feature description below

### fBodyAccJerk-meanFreq()-Z
    * numeric
    * See feature description below

### fBodyGyro-mean()-X
    * numeric
    * See feature description below

### fBodyGyro-mean()-Y
    * numeric
    * See feature description below

### fBodyGyro-mean()-Z
    * numeric
    * See feature description below

### fBodyGyro-meanFreq()-X
    * numeric
    * See feature description below

### fBodyGyro-meanFreq()-Y
    * numeric
    * See feature description below

### fBodyGyro-meanFreq()-Z
    * numeric
    * See feature description below

### fBodyAccMag-mean()
    * numeric
    * See feature description below

### fBodyAccMag-meanFreq()
    * numeric
    * See feature description below

### fBodyBodyAccJerkMag-mean()
    * numeric
    * See feature description below

### fBodyBodyAccJerkMag-meanFreq()
    * numeric
    * See feature description below

### fBodyBodyGyroMag-mean()
    * numeric
    * See feature description below

### fBodyBodyGyroMag-meanFreq()
    * numeric
    * See feature description below

### fBodyBodyGyroJerkMag-mean()
    * numeric
    * See feature description below

### fBodyBodyGyroJerkMag-meanFreq()
    * numeric
    * See feature description below

### tBodyAcc-std()-X
    * numeric
    * See feature description below

### tBodyAcc-std()-Y
    * numeric
    * See feature description below

### tBodyAcc-std()-Z
    * numeric
    * See feature description below

### tGravityAcc-std()-X
    * numeric
    * See feature description below

### tGravityAcc-std()-Y
    * numeric
    * See feature description below

### tGravityAcc-std()-Z
    * numeric
    * See feature description below

### tBodyAccJerk-std()-X
    * numeric
    * See feature description below

### tBodyAccJerk-std()-Y
    * numeric
    * See feature description below

### tBodyAccJerk-std()-Z
    * numeric
    * See feature description below

### tBodyGyro-std()-X
    * numeric
    * See feature description below

### tBodyGyro-std()-Y
    * numeric
    * See feature description below

### tBodyGyro-std()-Z
    * numeric
    * See feature description below

### tBodyGyroJerk-std()-X
    * numeric
    * See feature description below

### tBodyGyroJerk-std()-Y
    * numeric
    * See feature description below

### tBodyGyroJerk-std()-Z
    * numeric
    * See feature description below

### tBodyAccMag-std()
    * numeric
    * See feature description below

### tGravityAccMag-std()
    * numeric
    * See feature description below

### tBodyAccJerkMag-std()
    * numeric
    * See feature description below

### tBodyGyroMag-std()
    * numeric
    * See feature description below

### tBodyGyroJerkMag-std()
    * numeric
    * See feature description below

### fBodyAcc-std()-X
    * numeric
    * See feature description below

### fBodyAcc-std()-Y
    * numeric
    * See feature description below

### fBodyAcc-std()-Z
    * numeric
    * See feature description below

### fBodyAccJerk-std()-X
    * numeric
    * See feature description below

### fBodyAccJerk-std()-Y
    * numeric
    * See feature description below

### fBodyAccJerk-std()-Z
    * numeric
    * See feature description below

### fBodyGyro-std()-X
    * numeric
    * See feature description below

### fBodyGyro-std()-Y
    * numeric
    * See feature description below

### fBodyGyro-std()-Z
    * numeric
    * See feature description below

### fBodyAccMag-std()
    * numeric
    * See feature description below

### fBodyBodyAccJerkMag-std()
    * numeric
    * See feature description below

### fBodyBodyGyroMag-std()
    * numeric
    * See feature description below

### fBodyBodyGyroJerkMag-std()
    * numeric
    * See feature description below


Feature descriptions
=================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean value
std(): Standard deviation
