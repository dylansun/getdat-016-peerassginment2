CodeBook For Data Sets Produced By run_analysis.R
========================
The resulting data sets are derived from [1].

The differences from the original data set:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each   
   measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set 
   with the average of each variable for each activity and each subject.

The tidy set list observations over 81 variables:

subject lists the subjects assigned number in the original experiment[1], range from 1 to 3.
activity indicate the activity type, there are 6 activity type in experiment[1], so as the tidydata set. Namely,
Levels: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS

The rest of the variables(from 3 to 81)are the same as in the original data set[1], with the convert that the data set lists AVERAGES over all observations in a group:

"tBodyAcc.mean...X"     
"tBodyAcc.mean...Y"     
"tBodyAcc.mean...Z"    
"tBodyAcc.std...X"      
"tBodyAcc.std...Y"      
"tBodyAcc.std...Z"     
"tGravityAcc.mean...X"  
"tGravityAcc.mean...Y"  
"tGravityAcc.mean...Z" 
"tGravityAcc.std...X"   
"tGravityAcc.std...Y"   
"tGravityAcc.std...Z"  
"tBodyAccJerk.mean...X" 
"tBodyAccJerk.mean...Y" 
"tBodyAccJerk.mean...Z"
"tBodyAccJerk.std...X"  
"tBodyAccJerk.std...Y"  
"tBodyAccJerk.std...Z" 
"tBodyGyro.mean...X"              
"tBodyGyro.mean...Y"             
"tBodyGyro.mean...Z"              
"tBodyGyro.std...X"              
"tBodyGyro.std...Y"               
"tBodyGyro.std...Z"              
"tBodyGyroJerk.mean...X"          
"tBodyGyroJerk.mean...Y"         
"tBodyGyroJerk.mean...Z"          
"tBodyGyroJerk.std...X"          
"tBodyGyroJerk.std...Y"           
"tBodyGyroJerk.std...Z"          
"tBodyAccMag.mean.."              
"tBodyAccMag.std.."              
"tGravityAccMag.mean.."           
"tGravityAccMag.std.."           
"tBodyAccJerkMag.mean.."          
"tBodyAccJerkMag.std.."          
"tBodyGyroMag.mean.."             
"tBodyGyroMag.std.."             
"tBodyGyroJerkMag.mean.."         
"tBodyGyroJerkMag.std.."         
"fBodyAcc.mean...X"               
"fBodyAcc.mean...Y"              
"fBodyAcc.mean...Z"               
"fBodyAcc.std...X"               
"fBodyAcc.std...Y"                
"fBodyAcc.std...Z"               
"fBodyAcc.meanFreq...X"           
"fBodyAcc.meanFreq...Y"          
"fBodyAcc.meanFreq...Z"           
"fBodyAccJerk.mean...X"          
"fBodyAccJerk.mean...Y"           
"fBodyAccJerk.mean...Z"          
"fBodyAccJerk.std...X"            
"fBodyAccJerk.std...Y"           
"fBodyAccJerk.std...Z"            
"fBodyAccJerk.meanFreq...X"      
"fBodyAccJerk.meanFreq...Y"       
"fBodyAccJerk.meanFreq...Z"      
"fBodyGyro.mean...X"              
"fBodyGyro.mean...Y"             
"fBodyGyro.mean...Z"              
"fBodyGyro.std...X"              
"fBodyGyro.std...Y"               
"fBodyGyro.std...Z"              
"fBodyGyro.meanFreq...X"          
"fBodyGyro.meanFreq...Y"         
"fBodyGyro.meanFreq...Z"          
"fBodyAccMag.mean.."             
"fBodyAccMag.std.."               
"fBodyAccMag.meanFreq.."         
"fBodyBodyAccJerkMag.mean.."      
"fBodyBodyAccJerkMag.std.."      
"fBodyBodyAccJerkMag.meanFreq.."  
"fBodyBodyGyroMag.mean.."        
"fBodyBodyGyroMag.std.."          
"fBodyBodyGyroMag.meanFreq.."    
"fBodyBodyGyroJerkMag.mean.."     
"fBodyBodyGyroJerkMag.std.."     
"fBodyBodyGyroJerkMag.meanFreq.."

Reference:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
