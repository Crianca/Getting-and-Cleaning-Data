##loading packages
library(dplyr)
library(data.table)

##reading in files and basic informations
testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
testX <- read.table("UCI HAR Dataset/test/X_test.txt")
testY <- read.table("UCI HAR Dataset/test/y_test.txt")

trainsubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainX <- read.table("UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("UCI HAR Dataset/train/y_train.txt")

##creating one test data
test <- cbind(testsubject, testY, testX)

##creating one training data
train <- cbind(trainsubject, trainY, trainX)

##creating one big data
data <- rbind(test, train)

##creating column labels
features <- read.table("UCI HAR Dataset/features.txt")
featLabel <- as.vector(features[,2])

cLabels <- c("subject", "activity", featLabel)
names(data) = cLabels

##getting the information we need - std and mean, keeping subject and activity
ext <- grepl("subject|activity|mean|std", colnames(data))
extData <- data[,ext]

##using descriptive activity name - creating factors
activity <- read.table("UCI HAR Dataset/activity_labels.txt")
extData$activity <- factor(extData$activity, levels = activity[,1], labels = activity[,2])

##new data with the average of each variable for each activity and each subject
Data2 <- aggregate(extData, by = list(extData$subject, extData$activity), mean)
write.table(Data2, file = "tidy.txt", row.name=FALSE)
