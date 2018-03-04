# Codebook for _Getting and Cleaning Data_ Course Project"


This code book describes the data included in ```tidy_data.txt``` that can be found in this repository.

See the ```README.md``` in this repository for a description of the project as well as the original data.


## Creating the tidy File

The file was created using the `run_analysis.R` script that can be found in this repository.

A zip file containing the original data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The following transformations were made to create the tidy data set:

1. The training and test data sets were merged to create one data set.

2. Column names for the activity features were assigned.

3. The measurements on the mean and standard deviation for each feature (that is, those variables containing ```mean()``` or ```sd()```) were extracted. 

4. The activities were coded as factors and labeled using descriptive variable names (see Variables section).

5. The final data set was created by averaging each variable for each subject and each activity, and the result was saved to ```tidy_data.txt```.


## Data File

```tidy_data.txt``` is a text file containing variables separated by spaces.

In total, it consists of 180 observations of 68 variables (2 identifiers and 66 measurements).


## Variables in the tidy data file

### Identifiers


Variable name       | Description
--------------------|------------
`subject`           | Subject identifier; integer; ranges from 1 to 30.
`activities`     | Activity identifier; factor with six possible values


### Measurements

All the measurements are numeric and normalized to a range from -1 to 1. Measurements fall into one of two domains: **Time** and **Frequency**.

#### Time Domain

Variable name       | Description
--------------------|------------
`tBodyAcc-mean()-X`   | Average time-domain body acceleration in the X direction
`tBodyAcc-mean()-Y`   | Average time-domain body acceleration in the Y direction
`tBodyAcc-mean()-Z`   | Average time-domain body acceleration in the Z direction
`tBodyAcc-std()-X`   | Standard deviation of time-domain body acceleration in the X direction
`tBodyAcc-std()-Y`   | Standard deviation of time-domain body acceleration in the Y direction
`tBodyAcc-std()-Z`   | Standard deviation of time-domain body acceleration in the Z direction
`tGravityAcc-mean()-X`   | Average time-domain gravity acceleration in the X direction
`tGravityAcc-mean()-Y`   | Average time-domain gravity acceleration in the Y direction
`tGravityAcc-mean()-Z`   | Average time-domain gravity acceleration in the Z direction
`tGravityAcc-std()-X`   | Standard deviation of time-domain gravity acceleration in the X direction
`tGravityAcc-std()-Y`   | Standard deviation of time-domain gravity acceleration in the Y direction
`tGravityAcc-std()-Z`   | Standard deviation of time-domain gravity acceleration in the Z direction
`tBodyAccJerk-mean()-X`   | Average time-domain body acceleration jerk in the X direction
`tBodyAccJerk-mean()-Y`   | Average time-domain body acceleration jerk in the Y direction
`tBodyAccJerk-mean()-Z`   | Average time-domain body acceleration jerk in the Z direction
`tBodyAccJerk-std()-X`   | Standard deviation of time-domain body acceleration jerk in the X direction
`tBodyAccJerk-std()-Y`   | Standard deviation of time-domain body acceleration jerk in the Y direction
`tBodyAccJerk-std()-Z`   | Standard deviation of time-domain body acceleration jerk in the Z direction
`tBodyGyro-mean()-X`   | Average time-domain body angular velocity in the X direction
`tBodyGyro-mean()-Y`   | Average time-domain body angular velocity in the Y direction
`tBodyGyro-mean()-Z`   | Average time-domain body angular velocity in the Z direction
`tBodyGyro-std()-X`   | Standard deviation of time-domain body angular velocity in the X direction
`tBodyGyro-std()-Y`   | Standard deviation of time-domain body angular velocity in the Y direction
`tBodyGyro-std()-Z`   | Standard deviation of time-domain body angular velocity in the Z direction
`tBodyGyroJerk-mean()-X`   | Average time-domain body angular velocity jerk in the X direction
`tBodyGyroJerk-mean()-Y`   | Average time-domain body angular velocity jerk in the Y direction
`tBodyGyroJerk-mean()-Z`   | Average time-domain body angular velocity jerk in the Z direction
`tBodyGyroJerk-std()-X`   | Standard deviation of time-domain body angular velocity jerk in the X direction
`tBodyGyroJerk-std()-Y`   | Standard deviation of time-domain body angular velocity jerk in the Y direction
`tBodyGyroJerk-std()-Z`   | Standard deviation of time-domain body angular velocity jerk in the Z direction
`tBodyAccMag-mean()`   | Average time-domain magnitude of body acceleration
`tBodyAccMag-std()`   | Standard deviation of time-domain magnitude of body acceleration
`tGravityAccMag-mean()`   | Average time-domain magnitude of gravity acceleration
`tGravityAccMag-std()`   | Standard deviation of time-domain magnitude of gravity acceleration
`tBodyAccJerkMag-mean()`   | Average time-domain magnitude of body acceleration jerk
`tBodyAccJerkMag-std()`   | Standard deviation of time-domain magnitude of body acceleration jerk
`tBodyGyroMag-mean()`   | Average time-domain magnitude of body angular velocity
`tBodyGyroMag-std()`   | Standard deviation of time-domain magnitude of body angular velocity
`tBodyGyroJerkMag-mean()`   | Average time-domain magnitude of body angular velocity jerk
`tBodyGyroJerkMag-std()`   | Standard deviation of time-domain magnitude of body angular velocity jerk

#### Frequency Domain

Variable name       | Description
--------------------|------------
`fBodyAcc-mean()-X`   | Average frequency-domain body acceleration in the X direction
`fBodyAcc-mean()-Y`   | Average frequency-domain body acceleration in the Y direction
`fBodyAcc-mean()-Z`   | Average frequency-domain body acceleration in the Z direction
`fBodyAcc-std()-X`   | Standard deviation of frequency-domain body acceleration in the X direction
`fBodyAcc-std()-Y`   | Standard deviation of frequency-domain body acceleration in the Y direction
`fBodyAcc-std()-Z`   | Standard deviation of frequency-domain body acceleration in the Z direction
`fBodyAccJerk-mean()-X`   | Average frequency-domain body acceleration jerk in the X direction
`fBodyAccJerk-mean()-Y`   | Average frequency-domain body acceleration jerk in the Y direction
`fBodyAccJerk-mean()-Z`   | Average frequency-domain body acceleration jerk in the Z direction
`fBodyAccJerk-std()-X`   | Standard deviation of frequency-domain body acceleration jerk in the X direction
`fBodyAccJerk-std()-Y`   | Standard deviation of frequency-domain body acceleration jerk in the Y direction
`fBodyAccJerk-std()-Z`   | Standard deviation of frequency-domain body acceleration jerk in the Z direction
`fBodyGyro-mean()-X`   | Average frequency-domain body angular velocity in the X direction
`fBodyGyro-mean()-Y`   | Average frequency-domain body angular velocity in the Y direction
`fBodyGyro-mean()-Z`   | Average frequency-domain body angular velocity in the Z direction
`fBodyGyro-std()-X`   | Standard deviation of frequency-domain body angular velocity in the X direction
`fBodyGyro-std()-Y`   | Standard deviation of frequency-domain body angular velocity in the Y direction
`fBodyGyro-std()-Z`   | Standard deviation of frequency-domain body angular velocity in the Z direction
`fBodyAccMag-mean()`   | Average frequency-domain magnitude of body acceleration
`fBodyAccMag-std()`   | Standard deviation of frequency-domain magnitude of body acceleration
`fBodyBodyAccJerkMag-mean()`   | Average frequency-domain magnitude of body acceleration jerk
`fBodyBodyAccJerkMag-std()`   | Standard deviation of frequency-domain magnitude of body acceleration jerk
`fBodyBodyGyroMag-mean()`   | Average frequency-domain magnitude of body angular velocity
`fBodyBodyGyroMag-std()`   | Standard deviation of frequency-domain magnitude of body angular velocity
`fBodyBodyGyroJerkMag-mean()`   | Average frequency-domain magnitude of body angular velocity jerk
`fBodyBodyGyroJerkMag-std()`   | Standard deviation of time-domain magnitude of body angular velocity jerk
