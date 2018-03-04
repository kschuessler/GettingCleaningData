## Coursera: Getting and Cleaning Data
## Programming Assignment
## Katharina Schüßler



## (0) Preparation 

# Create directory if it does not exist already:
if(!file.exists("./data")){dir.create("./data")}

# Download data:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip data:
unzip(zipfile="./data/Dataset.zip",exdir="./data")



## (1) Merge the training and the test sets to create one data set.

# Read the needed files into R - training tables:
features_train <- read.table("./data/UCI HAR dataset/train/X_train.txt", header = FALSE)
activity_train <- read.table("./data/UCI HAR dataset/train/Y_train.txt", header = FALSE)
subject_train <- read.table("./data/UCI HAR dataset/train/subject_train.txt", header = FALSE)

# Read the needed files into R - test tables:
features_test <- read.table("./data/UCI HAR dataset/test/X_test.txt", header = FALSE)
activity_test <- read.table("./data/UCI HAR dataset/test/Y_test.txt", header = FALSE)
subject_test <- read.table("./data/UCI HAR dataset/test/subject_test.txt", header = FALSE)

# Combine test and training data:
features <- rbind(features_train, features_test)
subject <- rbind(subject_train, subject_test)
activity <- rbind(activity_train, activity_test)

# Assign column names:
features_names <- read.table("./data/UCI HAR dataset/features.txt", header = FALSE)
names(features) <- features_names[,2]
names(subject) <- c("subject")
names(activity) <- c("activity")

# Merge subject, activity, and features:
data <- cbind(subject, activity, features)

# Check if the result looks as desired:
str(data)



## (2) Extract only the measurements on the mean and standard deviation for each
## measurement

# identify column names that contain mean or sd:
col_names <- colnames(data)
relevant_cols <- ( grepl("subject", col_names) | grepl("activity", col_names) 
                  | grepl("mean\\(", col_names) | grepl("std\\(", col_names) )

# Subset data based on relevant columns:
data <- data[, relevant_cols == TRUE]



## (3) Use descriptive activity names to name the activities in the data set

# Extract activity labels from the text file:
activity_labels <- read.table("./data/UCI HAR dataset/activity_labels.txt", header = FALSE)

# Encode "activity" as factor and label it:
data$activity <- factor(data$activity, levels = activity_labels$V1, labels = activity_labels$V2)



## (4) Appropriately label the data set with descriptive variable names

# This has been achieved right in the beginning when column names were assigned



## (5) From the data set in step 4, create a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

# Compute mean over subject/activity combinations and store in new data set:
data2 <- aggregate(. ~ subject + activity, data, mean)

# Order the data by subject and activity:
data2 <- data2[order(data2$subject, data2$activity),]

# Export the new data set:
write.table(data2, file = "tidy_data.txt", row.names = FALSE)

