# datasciencecoursera
This readme-file describes my course project I produced for the Data Science course "Getting and Cleaning data" at Coursera.

The Codebook.md describes the variables which appear in the two resulting data sets produced by run_analysis.R.
This readme.md file explains how run_analysis.R works.

run_analysis.R uses the following data:
input file: getdata-projectfiles-UCI HAR Dataset.zip
source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
A Public Domain Dataset for Human Activity Recognition Using Smartphones. 
21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, 
ESANN 2013. Bruges, Belgium 24-26 April 2013.
I downloaded them on June 10th 2015.

With respect to the project description, I changed the order of steps.
I first integrated and labelled all data and then did the extraction.

1.) First, I read in the files into data tables.
2.) So far, activities are labelled by their numbers in the y-data. 
Therefore, I add the corresponding activity name from "activity_labels.txt" and column names.
3.) Then, I merge the training data and test data into one data table, named data_joined
4.) I use the variable names from "features.txt" as column names. I know that there could be better names,
but I kept these because I think they allow a better traceability back to the original data.
5.) Extracts the mean and standard deviation for each measurement.
6.) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This script produces two tidy data sets:
Steps 1.-5.) produces data_4 which is an extract from the original file, with column names.
Step 6.) produces another file, "data_aggregated", which calculates the average of the data in file data_4, averaged for each pair of subject and activity. 




