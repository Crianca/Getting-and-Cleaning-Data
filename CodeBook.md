##Getting and Cleaning Data Course Project##

data used:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

discription:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

###Used files:###
*Data files:*
- UCI HAR Dataset/test/subject_test.txt
    test subjects
- UCI HAR Dataset/test/X_test.txt
    test measurments
- UCI HAR Dataset/test/y_test.txt
    test acivity

- UCI HAR Dataset/train/subject_train.txt
    training subjects
- UCI HAR Dataset/train/X_train.txt
    training measurments
- UCI HAR Dataset/train/y_train.txt
    training activity

- UCI HAR Dataset/features.txt
    list of features / different measurments
- UCI HAR Dataset/activity_labels.txt
    list of activties and their code number

*Script:* 
**run_analysis.R**

*Required packages:*
dplyr, data.table

*Output:* **tidy.txt**
The data contains the average (mean) of each variable for each activity and each subject
Group.1/subject - subject 
Group.2/activity - different activities
measurements - the mean of each variables within these subgroups

*Units:*
- The units of the acceleration signals are in standard gravity units 'g'
- The units of the gyroscope measurements are radians/second
