#CODEBOOK

#Raw Data Set Information

The data are extracted from: .

“The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.”

#Output

The end output is a tidy data set that contains mean and standard deviation measurements of features by subject and activity.

#Data Processing

##STEP 1: merge the data set.

- “x_train.txt”: all measurements of subjects in the train group
- “y_train.txt”: activities conducted for each observation in the train group
- “subject_train.txt”: subjects’ IDs in the train group
We merge the three data sets above to get one list of all observations from the train group, named “mergedTrain”.

- “x_test.txt”: all measurements of subjects in the test group
- “y_test.txt”: activities conducted for each observation in the test group
- “subject_test.txt”: subjects’ IDs in the test group
We merge the three data sets above to get one list of all observations from the test group, named “mergedTest”.

We then joint the two newly created data sets into one master list named “merged”.

##STEP 2: select mean and standard deviation measurements of all features.

- “features.txt”: the names of all measurements applied to each observation
We use “features.txt” to name the columns of all observations. Note that this starts from column 3, as column 1 represents subject ID and column 2 represents activity type.

Then we select from column 3 – length(names(merged)) if they contain:
-  “mean()”, which represents mean measurement
- “std()”, which represents standard deviation measurement

The new data set is named “mergedSelect” that contains variables below:
- subject
- activity
- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAcc-meanFreq()-X
- fBodyAcc-meanFreq()-Y
- fBodyAcc-meanFreq()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyAccJerk-meanFreq()-X
- fBodyAccJerk-meanFreq()-Y
- fBodyAccJerk-meanFreq()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyGyro-meanFreq()-X
- fBodyGyro-meanFreq()-Y
- fBodyGyro-meanFreq()-Z
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyAccJerkMag-meanFreq()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()
- fBodyBodyGyroJerkMag-meanFreq()

##STEP 3: adding descriptive activity labels.

We replace column 2 “activity” with descriptive labels.
- “1”: WALKING
- “2”: WALKING_UPSTAIRS
- “3”: WALKING_DOWNSTAIRS
- “4”: “SITTING”
- “5”: “STANDING”
- “6”: “LAYING”

##STEP 4: clean the variable names

We remove all “-“ and “()” in the variable names.  And we switch “mean” to “Mean”, and “std” to “StdDev”.
We also remove duplicates (“BodyBody” is changed to “Body”).

From column 3 and on, if the variable's initial is "t", it is a time measurement; if the variable's initial is "f", it is a frequency measurement.

The new variable names are:
- subject
- activity
- tBodyAccMeanX
- tBodyAccMeanY
- tBodyAccMeanZ
- tBodyAccStdDevX
- tBodyAccStdDevY
- tBodyAccStdDevZ
- tGravityAccMeanX
- tGravityAccMeanY
- tGravityAccMeanZ
- tGravityAccStdDevX
- tGravityAccStdDevY
- tGravityAccStdDevZ
- tBodyAccJerkMeanX
- tBodyAccJerkMeanY
- tBodyAccJerkMeanZ
- tBodyAccJerkStdDevX
- tBodyAccJerkStdDevY
- tBodyAccJerkStdDevZ
- tBodyGyroMeanX
- tBodyGyroMeanY
- tBodyGyroMeanZ
- tBodyGyroStdDevX
- tBodyGyroStdDevY
- tBodyGyroStdDevZ
- tBodyGyroJerkMeanX
- tBodyGyroJerkMeanY
- tBodyGyroJerkMeanZ
- tBodyGyroJerkStdDevX
- tBodyGyroJerkStdDevY
- tBodyGyroJerkStdDevZ
- tBodyAccMagMean
- tBodyAccMagStdDev
- tGravityAccMagMean
- tGravityAccMagStdDev
- tBodyAccJerkMagMean
- tBodyAccJerkMagStdDev
- tBodyGyroMagMean
- tBodyGyroMagStdDev
- tBodyGyroJerkMagMean
- tBodyGyroJerkMagStdDev
- fBodyAccMeanX
- fBodyAccMeanY
- fBodyAccMeanZ
- fBodyAccStdDevX
- fBodyAccStdDevY
- fBodyAccStdDevZ
- fBodyAccMeanFreqX
- fBodyAccMeanFreqY
- fBodyAccMeanFreqZ
- fBodyAccJerkMeanX
- fBodyAccJerkMeanY
- fBodyAccJerkMeanZ
- fBodyAccJerkStdDevX
- fBodyAccJerkStdDevY
- fBodyAccJerkStdDevZ
- fBodyAccJerkMeanFreqX
- fBodyAccJerkMeanFreqY
- fBodyAccJerkMeanFreqZ
- fBodyGyroMeanX
- fBodyGyroMeanY
- fBodyGyroMeanZ
- fBodyGyroStdDevX
- fBodyGyroStdDevY
- fBodyGyroStdDevZ
- fBodyGyroMeanFreqX
- fBodyGyroMeanFreqY
- fBodyGyroMeanFreqZ
- fBodyAccMagMean
- fBodyAccMagStdDev
- fBodyAccMagMeanFreq
- fBodyAccJerkMagMean
- fBodyAccJerkMagStdDev
- fBodyAccJerkMagMeanFreq
- fBodyGyroMagMean
- fBodyGyroMagStdDev
- fBodyGyroMagMeanFreq
- fBodyGyroJerkMagMean
- fBodyGyroJerkMagStdDev
- fBodyGyroJerkMagMeanFreq

##STEP 5: write a table with mean on all selected measurements by subject and activity
The table is written in “tidyOutput.txt”
