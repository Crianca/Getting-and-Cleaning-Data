# Getting-and-Cleaning-Data
Course Project for Getting and Cleaning Data on Coursera

data used:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

discription:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Assignment:
You should create one R script called run_analysis.R that does the following. 

1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Used files:
    UCI HAR Dataset/test/subject_test.txt 
    UCI HAR Dataset/test/X_test.txt 
    UCI HAR Dataset/test/y_test.txt 

    UCI HAR Dataset/train/subject_train.txt 
    UCI HAR Dataset/train/X_train.txt 
    UCI HAR Dataset/train/y_train.txt 

    UCI HAR Dataset/features.txt 
    UCI HAR Dataset/activity_labels.txt 

## Step by Step guide:

Script: *run_analysis.R* 
Output: *tidy.txt*

Required packages: dplyr, data.table

***Getting ready for tidying data***
Reading in the data, features and activty labels with raed.table()

***Merges the training and the test sets to create one data set***
- creating one training and one test data with cbind
    includes files based on: subject, Y (activity) and X (measurements)
- creating one data file from previous two with rbind

***Appropriately labels the data set with descriptive variable names***
- adding column names based on features.txt

***Extracts only the measurements on the mean and standard deviation for each measurement ***
- subset the big data file, keeping variables thats labels include the term mean or std 
    (using grepl function) 

***Uses descriptive activity names to name the activities in the data set***
- converting the activity variable into a factor based on activity_labels.txt
    using its levels and labels
    
***Creating second, independent tidy data set with the average of each variable for each activity and each subject***
- group by with aggregate function, computing the mean for each subject/activty
- create tidy.txt file 
