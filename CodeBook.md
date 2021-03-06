# Code Book

# Overview

This code book indicates all variables of *'tidy.txt'*.
Variables of *'tidy.txt'* are derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made available here: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data is collected from the accelerometers of the smartphone Samsung Galaxy S II. It is based on experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. The data was captured while each person performed six activities wearing a smartphone on the waist. 


# Identifier variables

There are two identifier variables in the data set *'tidy.txt'*:

* subject - The ID of each subject: Integer values: 1:30
* activity - The type of activity performed when the corresponding measurements were taken: Factor values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING


# Measurement variables 

## Derivation of measurement variables

The measurement variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

A large set of variables were estimated from these signals in the original data, but for this project only following were kept: 

* mean(): Mean value
* std(): Standard deviation

We also kept following vectors, obtained by averaging the signals in a signal window sample:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The resulting measurement variable names differ somewhat from the original form in order to use appropriate labels. Measurement variables now have the following form: tBodyAccmeanX, which means the mean value of tBodyAcc-XYZ.

Compared to the original data, all variables now represent mean values of multiple measurements of the original variables aggregated across the variables 'subject' as well as 'activity'. 

Note: features are normalized and bounded within [-1,1].

## Measurement variables

Following the system described above, there are 72 measurement variables in the data set *'tidy.txt'*:

tBodyAccmeanX
tBodyAccmeanY
tBodyAccmeanZ
tBodyAccstdX
tBodyAccstdY
tBodyAccstdZ
tGravityAccmeanX
tGravityAccmeanY
tGravityAccmeanZ
tGravityAccstdX
tGravityAccstdY
tGravityAccstdZ
tBodyAccJerkmeanX
tBodyAccJerkmeanY
tBodyAccJerkmeanZ
tBodyAccJerkstdX
tBodyAccJerkstdY
tBodyAccJerkstdZ
tBodyGyromeanX
tBodyGyromeanY
tBodyGyromeanZ
tBodyGyrostdX
tBodyGyrostdY
tBodyGyrostdZ
tBodyGyroJerkmeanX
tBodyGyroJerkmeanY
tBodyGyroJerkmeanZ
tBodyGyroJerkstdX
tBodyGyroJerkstdY
tBodyGyroJerkstdZ
tBodyAccMagmean
tBodyAccMagstd
tGravityAccMagmean
tGravityAccMagstd
tBodyAccJerkMagmean
tBodyAccJerkMagstd
tBodyGyroMagmean
tBodyGyroMagstd
tBodyGyroJerkMagmean
tBodyGyroJerkMagstd
fBodyAccmeanX
fBodyAccmeanY
fBodyAccmeanZ
fBodyAccstdX
fBodyAccstdY
fBodyAccstdZ
fBodyAccJerkmeanX
fBodyAccJerkmeanY
fBodyAccJerkmeanZ
fBodyAccJerkstdX
fBodyAccJerkstdY
fBodyAccJerkstdZ
fBodyGyromeanX
fBodyGyromeanY
fBodyGyromeanZ
fBodyGyrostdX
fBodyGyrostdY
fBodyGyrostdZ
fBodyAccMagmean
fBodyAccMagstd
fBodyBodyAccJerkMagmean
fBodyBodyAccJerkMagstd
fBodyBodyGyroMagmean
fBodyBodyGyroMagstd
fBodyBodyGyroJerkMagmean
fBodyBodyGyroJerkMagstd
angletBodyAccJerkMean,gravityMean
angletBodyGyroMean,gravityMean
angletBodyGyroJerkMean,gravityMean
angleX,gravityMean
angleY,gravityMean
angleZ,gravityMean
