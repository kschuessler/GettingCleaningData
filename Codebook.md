---
title: "Codebook for _Getting and Cleaning Data_ Course Project"
author: "Katharina Schüßler"
date: "March 5, 2018"
output:
  html_document:
    keep_md: yes
---

This code book describes the data included in ```tidy_data.txt``` that can be found in this repository.

See the ```README.md``` in this repository for a description of the project as well as the original data.


## Original Data File


## Creating the tidy File

A zip file containing the original data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The following transformations were made to create the tidy data set:

1. The training and test data sets were merged to create one data set.

2. Column names for the activity features were assigned.

3. The measurements on the mean and standard deviation for each feature (that is, those variables containing ```mean()``` or ```sd()```) were extracted. 

4. The activities were coded as factors and labeled using descriptive variable names (see Variables section).

5. The final data set was created by averaging each variable for each subject and each activity, and the result was saved to ```tidy_data.txt```.


## Variables in the tidy data file

### Identifiers

* ```subject```

* ```activities``
