# The purpose of this project is to demonstrate your ability to collect, 
# work with, and clean a data set. The goal is to prepare tidy data that
# can be used for later analysis. 
#
# Output: 
#
#   1) a tidy data set as described below, 
#   2) a link to a Github repository with your script for performing the analysis, and 
#   3) a code book that describes the variables, the data, and any transformations
#      or work that you performed to clean up the data called CodeBook.md. 
#   4) You should also include a README.md in the repo with your scripts. 
#      This document explains how all of the scripts work and how they are connected.  
# 
# One of the most exciting areas in all of data science right now is wearable computing
# - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are 
# racing to develop the most advanced algorithms to attract new users. The data linked
# to from the course website represent data collected from the accelerometers from the 
# Samsung Galaxy S smartphone. A full description is available at the site where the 
# data was obtained: 
#     
#     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# 
# Here are the data for the project: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 
# You should create one R script called run_analysis.R that does the following. 
#   * Merges the training and the test sets to create one data set.
#   * Extracts only the measurements on the mean and standard deviation for each measurement. 
#   * Uses descriptive activity names to name the activities in the data set
#   * Appropriately labels the data set with descriptive variable names. 
#   * Creates a second, independent tidy data set with the average of each variable for each
#     activity and each subject. 
#


## 1. Load the data

## Define the Data Folder
datafolder <- "UCI HAR Dataset/"

## 'features.txt': List of all features.
features <- read.table(paste(datafolder,"features.txt",sep=""))
colnames(features) <- c("Column","Name")

## 'activity_labels.txt': Links the class labels with their activity name.
activity_labels <- read.table(paste(datafolder,"activity_labels.txt",sep=""))
colnames(activity_labels) <- c("Activity","Name")

## 'train/X_train.txt': Training set.
train.X <- read.table(paste(datafolder,"train/X_train.txt",sep=""))
colnames(train.X) <- features$Name

## 'train/y_train.txt': Training labels.
train.y <- read.table(paste(datafolder,"train/y_train.txt",sep=""))
colnames(train.y) <- "Activity"

## 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. 
train.subject <- read.table(paste(datafolder,"train/subject_train.txt",sep=""))
colnames(train.subject) <- "Subject"

## Join train data
train <- cbind(train.y, train.subject, train.X)

## 'test/X_test.txt': Test set.
test.X <- read.table(paste(datafolder,"test/X_test.txt",sep=""))
colnames(test.X) <- features$Name

## 'test/y_test.txt': Test labels.
test.y <- read.table(paste(datafolder,"test/y_test.txt",sep=""))
colnames(test.y) <- "Activity"

## 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. 
test.subject <- read.table(paste(datafolder,"test/subject_test.txt",sep=""))
colnames(test.subject) <- "Subject"

## Join test data
test <- cbind(test.y, test.subject, test.X)

## Create single data.frame with all the data provided
rawdata <- rbind(train,test)

filter <- features$Name[grep("(mean|std|angle)", features$Name, perl=T)]
filter <- c("Activity", "Subject", as.character(filter))
filter <- filter[-grep("meanFreq", filter, perl=T)]

library(plyr)
tidydata <- ddply(rawdata[,filter], .(Activity, Subject), numcolwise(mean))
tidydata <- merge(x = activity_labels, y = tidydata, by = "Activity", all.y=TRUE)
tidydata <- tidydata[,-1]
colnames(tidydata)[1] <- "Activity"

## Write the clean data to file
write.table(tidydata, "tidydata.txt", row.names=FALSE)


