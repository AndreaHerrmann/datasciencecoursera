Code book
=========

The run_analysis.R produces two tidy data sets: data_4 and data_aggregated.
The variables used in these data sets are these:

data_4:
It contains mean values and standard deviations of the following measurement values, for a list of measurements:

 [1] "activity_label"             The activity during which these data were produced, an integer number 1-5.     
 [2] "activity"                   The name of this activity.
 [3] "subject"                    The number (1-30) of the experiment subject who produced these data. 
 [4] "tBodyAcc-mean()-X"          body acceleration in x direction
 [5] "tBodyAcc-mean()-Y"          body acceleration in y direction
 [6] "tBodyAcc-mean()-Z"          body acceleration in z direction
 [7] "tGravityAcc-mean()-X"       gravity acceleration in x direction
 [8] "tGravityAcc-mean()-Y"       gravity acceleration in y direction
 [9] "tGravityAcc-mean()-Z"       gravity acceleration in z direction
[10] "tBodyAccJerk-mean()-X"      Jerk signals from linear acceleration in x direction
[11] "tBodyAccJerk-mean()-Y"      Jerk signals from linear acceleration in y direction
[12] "tBodyAccJerk-mean()-Z"      Jerk signals from linear acceleration in z direction
[13] "tBodyGyro-mean()-X"         angular velocity in x direction 
[14] "tBodyGyro-mean()-Y"         angular velocity in y direction
[15] "tBodyGyro-mean()-Z"         angular velocity in z direction
[16] "tBodyGyroJerk-mean()-X"     Jerk signals from angular velocity in x direction
[17] "tBodyGyroJerk-mean()-Y"     Jerk signals from angular velocity in y direction
[18] "tBodyGyroJerk-mean()-Z"     Jerk signals from angular velocity in z direction
[19] "tBodyAccMag-mean()"         linear body acceleration
[20] "tGravityAccMag-mean()"      linear gravity acceleration
[21] "tBodyAccJerkMag-mean()"     Jerk value from linear acceleration
[22] "tBodyGyroMag-mean()"        angular velocity 
[23] "tBodyGyroJerkMag-mean()"    Jerk value from angular velocity
[24] "fBodyAcc-mean()-X"          Fast Fourier Transformation of linear acceleration in x direction
[25] "fBodyAcc-mean()-Y"          Fast Fourier Transformation of linear acceleration in y direction
[26] "fBodyAcc-mean()-Z"          Fast Fourier Transformation of linear acceleration in z direction
[27] "fBodyAccJerk-mean()-X"      FFT of Jerk signals from linear acceleration in x direction
[28] "fBodyAccJerk-mean()-Y"      FFT of Jerk signals from linear acceleration in y direction
[29] "fBodyAccJerk-mean()-Z"      FFT of Jerk signals from linear acceleration in z direction 
[30] "fBodyGyro-mean()-X"         FFT of Jerk signals from angular velocity in x direction
[31] "fBodyGyro-mean()-Y"         FFT of Jerk signals from angular velocity in y direction 
[32] "fBodyGyro-mean()-Z"         FFT of Jerk signals from angular velocity in z direction
[33] "fBodyAccMag-mean()"          
[34] "fBodyBodyAccJerkMag-mean()" 
[35] "fBodyBodyGyroMag-mean()"     
[36] "fBodyBodyGyroJerkMag-mean()"
[37] "tBodyAcc-std()-X"            
[38] "tBodyAcc-std()-Y"           
[39] "tBodyAcc-std()-Z"            
[40] "tGravityAcc-std()-X"        
[41] "tGravityAcc-std()-Y"        
[42] "tGravityAcc-std()-Z"        
[43] "tBodyAccJerk-std()-X"        
[44] "tBodyAccJerk-std()-Y"       
[45] "tBodyAccJerk-std()-Z"        
[46] "tBodyGyro-std()-X"          
[47] "tBodyGyro-std()-Y"           
[48] "tBodyGyro-std()-Z"          
[49] "tBodyGyroJerk-std()-X"       
[50] "tBodyGyroJerk-std()-Y"      
[51] "tBodyGyroJerk-std()-Z"       
[52] "tBodyAccMag-std()"          
[53] "tGravityAccMag-std()"        
[54] "tBodyAccJerkMag-std()"      
[55] "tBodyGyroMag-std()"          
[56] "tBodyGyroJerkMag-std()"     
[57] "fBodyAcc-std()-X"            
[58] "fBodyAcc-std()-Y"           
[59] "fBodyAcc-std()-Z"            
[60] "fBodyAccJerk-std()-X"       
[61] "fBodyAccJerk-std()-Y"        
[62] "fBodyAccJerk-std()-Z"       
[63] "fBodyGyro-std()-X"           
[64] "fBodyGyro-std()-Y"          
[65] "fBodyGyro-std()-Z"           
[66] "fBodyAccMag-std()"          
[67] "fBodyBodyAccJerkMag-std()"   
[68] "fBodyBodyGyroMag-std()"     
[69] "fBodyBodyGyroJerkMag-std()" 

mean() means the average and std() the standard deviation.
These values are normalized and take continuous values between -1 and +1, except for the first 3 variables.


The other file, data_aggregated, contains the averages of these mean and standard deviation values for several measurements. 

