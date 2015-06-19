## input file: getdata-projectfiles-UCI HAR Dataset.zip
## source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
## A Public Domain Dataset for Human Activity Recognition Using Smartphones. 
## 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, 
## ESANN 2013. Bruges, Belgium 24-26 April 2013.

## With respect to the project description, I changed the order of steps.
## I first integrated and labelled all data and then did the extraction.

## 1.) First, I read in the files into data tables:
    act_labels <- read.table("activity_labels.txt", header= FALSE)
    act_vector <- act_labels[,2]
    subject_test <- read.table("test/subject_test.txt", header= FALSE)
    subject_train <- read.table("train/subject_train.txt", header= FALSE)
    features <- read.table("features.txt", header= FALSE)
    features_vector <- features[,2] 
## test data
    data_test <- read.table("test/X_test.txt", colClasses = "numeric", header = FALSE)
    act_test <- read.table("test/y_test.txt", header = FALSE)
## train data
    data_train <- read.table("train/X_train.txt", colClasses = "numeric", header = FALSE)
    act_train <- read.table("train/y_train.txt", header = FALSE)

## 2.) Uses descriptive activity names to name the activities in the data set
## To the y-data, I add the corresponding activity name from "activity_labels.txt".
## So, now for each data set in the training and test data, each row (i.e. data set)
## contains the corresponding activity name. And I add the column names.
    act_test <- mutate(act_test, V1, act_vector[V1])
    colnames(act_test) <- c("activity_label", "activity")
    act_train <- mutate(act_train, V1, act_vector[V1])
    colnames(act_train) <- c("activity_label", "activity")
    

## 3.) Merges the training and the test sets to create one data set.
## The merging includes the measurement data from the x-files, 
## the subject numbers and the activity codes from the y-files
    data_test <- cbind(act_test,subject_test,data_test)
    dim(data_test)  ## 2947   564 -> OK!

    data_train <- cbind(act_train,subject_train,data_train)
    dim(data_train) ## 7352   564 -> OK!

    data_joined <- rbind(data_train, data_test)
    dim(data_joined) ## 10299   564 -> OK!
   
## 4.) Appropriately labels the data set with descriptive variable names. 
## I use the variable names for the 561 variables in the x-files
## in file "features.txt" which I copied into features_vector.
    labels <- c("activity_label", "activity", "subject", as.character(features_vector))
    colnames(data_joined) <- labels

## 5.) Extracts only the mean and standard deviation for each measurement. 
    labels_mean <- grep("mean()", labels, ignore.case=FALSE, fixed=TRUE, value = FALSE)
    labels_std <- grep("std()", labels, ignore.case=FALSE, fixed=TRUE, value = FALSE)
    data_mean <- data_joined[,labels_mean]
    data_std <- data_joined[,labels_std]
    data_4 <- cbind(data_joined[,1:3], data_mean, data_std)
    labels_4 <- c(labels[1:3], labels[labels_mean], labels[labels_std])
    colnames(data_4) <- labels_4
    dim(data_4)  ## 10299   69

## 6.) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    
   data_aggregated <- aggregate(data_4[,4:69], by=list(data_4$activity, data_4$subject), FUN = mean)
   colnames(data_aggregated) <- c("activity","subject", labels_4[4:69])
   dim(data_aggregated)  ## 180   68  one column less, because I dropped act_label
                         ##           180 rows because 6 activities x 30 subjects
   write.table(data_aggregated, file = "data_aggregated.txt", row.name=FALSE, sep = " ", eol = "\n")

