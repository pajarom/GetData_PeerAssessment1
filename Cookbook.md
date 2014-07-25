# Human Activity Recognition Using Smartphones Dataset Cleanup Cookbook

## The Original Data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come originally from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated in the original data set from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

### Notes

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

## The New data generated

The goal of this project is to provide a **single** dataset with the average value on the mean and standard deviation for each measurement provided in the original data set for each activity and each subject. The following features averages are provided in this new data set:

 [1,] "Activity"                             "1" 
 
 [2,] "Subject"                              "2" 

 [3,] "tBodyAcc-mean()-X"                    "3" 

 [4,] "tBodyAcc-mean()-Y"                    "4" 

 [5,] "tBodyAcc-mean()-Z"                    "5" 

 [6,] "tBodyAcc-std()-X"                     "6" 

 [7,] "tBodyAcc-std()-Y"                     "7" 

 [8,] "tBodyAcc-std()-Z"                     "8" 

 [9,] "tGravityAcc-mean()-X"                 "9" 

[10,] "tGravityAcc-mean()-Y"                 "10"

[11,] "tGravityAcc-mean()-Z"                 "11"

[12,] "tGravityAcc-std()-X"                  "12"

[13,] "tGravityAcc-std()-Y"                  "13"

[14,] "tGravityAcc-std()-Z"                  "14"

[15,] "tBodyAccJerk-mean()-X"                "15"

[16,] "tBodyAccJerk-mean()-Y"                "16"

[17,] "tBodyAccJerk-mean()-Z"                "17"

[18,] "tBodyAccJerk-std()-X"                 "18"

[19,] "tBodyAccJerk-std()-Y"                 "19"

[20,] "tBodyAccJerk-std()-Z"                 "20"

[21,] "tBodyGyro-mean()-X"                   "21"

[22,] "tBodyGyro-mean()-Y"                   "22"

[23,] "tBodyGyro-mean()-Z"                   "23"

[24,] "tBodyGyro-std()-X"                    "24"

[25,] "tBodyGyro-std()-Y"                    "25"

[26,] "tBodyGyro-std()-Z"                    "26"

[27,] "tBodyGyroJerk-mean()-X"               "27"

[28,] "tBodyGyroJerk-mean()-Y"               "28"

[29,] "tBodyGyroJerk-mean()-Z"               "29"

[30,] "tBodyGyroJerk-std()-X"                "30"

[31,] "tBodyGyroJerk-std()-Y"                "31"

[32,] "tBodyGyroJerk-std()-Z"                "32"

[33,] "tBodyAccMag-mean()"                   "33"

[34,] "tBodyAccMag-std()"                    "34"

[35,] "tGravityAccMag-mean()"                "35"

[36,] "tGravityAccMag-std()"                 "36"

[37,] "tBodyAccJerkMag-mean()"               "37"

[38,] "tBodyAccJerkMag-std()"                "38"

[39,] "tBodyGyroMag-mean()"                  "39"

[40,] "tBodyGyroMag-std()"                   "40"

[41,] "tBodyGyroJerkMag-mean()"              "41"

[42,] "tBodyGyroJerkMag-std()"               "42"

[43,] "fBodyAcc-mean()-X"                    "43"

[44,] "fBodyAcc-mean()-Y"                    "44"

[45,] "fBodyAcc-mean()-Z"                    "45"

[46,] "fBodyAcc-std()-X"                     "46"

[47,] "fBodyAcc-std()-Y"                     "47"

[48,] "fBodyAcc-std()-Z"                     "48"

[49,] "fBodyAccJerk-mean()-X"                "49"

[50,] "fBodyAccJerk-mean()-Y"                "50"

[51,] "fBodyAccJerk-mean()-Z"                "51"

[52,] "fBodyAccJerk-std()-X"                 "52"

[53,] "fBodyAccJerk-std()-Y"                 "53"

[54,] "fBodyAccJerk-std()-Z"                 "54"

[55,] "fBodyGyro-mean()-X"                   "55"

[56,] "fBodyGyro-mean()-Y"                   "56"

[57,] "fBodyGyro-mean()-Z"                   "57"

[58,] "fBodyGyro-std()-X"                    "58"

[59,] "fBodyGyro-std()-Y"                    "59"

[60,] "fBodyGyro-std()-Z"                    "60"

[61,] "fBodyAccMag-mean()"                   "61"

[62,] "fBodyAccMag-std()"                    "62"

[63,] "fBodyBodyAccJerkMag-mean()"           "63"

[64,] "fBodyBodyAccJerkMag-std()"            "64"

[65,] "fBodyBodyGyroMag-mean()"              "65"

[66,] "fBodyBodyGyroMag-std()"               "66"

[67,] "fBodyBodyGyroJerkMag-mean()"          "67"

[68,] "fBodyBodyGyroJerkMag-std()"           "68"

[69,] "angle(tBodyAccMean,gravity)"          "69"

[70,] "angle(tBodyAccJerkMean),gravityMean)" "70"

[71,] "angle(tBodyGyroMean,gravityMean)"     "71"

[72,] "angle(tBodyGyroJerkMean,gravityMean)" "72"

[73,] "angle(X,gravityMean)"                 "73"

[74,] "angle(Y,gravityMean)"                 "74"

[75,] "angle(Z,gravityMean)"                 "75"

## The Data Processing

1. Load the list of all features from 'UCI HAR Dataset/features.txt'. 
2. Load the activity name from 'UCI HAR Dataset/activity_labels.txt'
3. Load the Training set from 'UCI HAR Dataset/train/X_train.txt'.
4. Load the Training labels from 'UCI HAR Dataset/train/y_train.txt'.
5. Load the subject who performed the train activity from 'UCI HAR Dataset/train/subject_train.txt'. 
6. Load the Test set from 'UCI HAR Dataset/test/X_test.txt'.
7. Load the Test labels from 'UCI HAR Dataset/test/y_test.txt'.
8. Load the subject who performed the train Test activity from 'UCI HAR Dataset/test/subject_test.txt'. 
9. Create single data set binding Test and Training original data sets
10. Subset the original features to the features required.
11. Aggregate the average for the selected features by Activity and Subject.
12. Write new data set to 'tidydata.txt'


## License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.