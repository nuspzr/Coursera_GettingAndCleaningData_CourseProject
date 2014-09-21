Coursera_GettingAndCleaningData_CourseProject
=============================================
This repository stores the script, the codebook, and final output for the course project.


About the raw data:

The data are extracted from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Script ("run_analysis.R") does the following:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set.

4. Appropriately labels the data set with descriptive activity names.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


About the final output ("tidyOutput.txt")

1. "tidyOutput.txt" is generated from Step 5 of the script "run_analysis.R".

2. Each row of the table stores the mean and the standard deviation measurement of various features (by each subject and each type of activity) from the raw data set, . 


For more about variables and variable transformations, please refer to the codebook.md.
