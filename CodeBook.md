## Generating the tidy data
A description of the steps taken is included as comments in the run_analysis.R script file. 
* The given zip file was downloaded and unzip to retrieve the files.
* The script reads the files in the test folder and those in the train folder and combines the data appropriately using the rbind function.
* A logical vector corresponding to features with "mean" and "std" is generated and used to select the desired columns from the combined data.
* Descriptive names for the activities in the combined data are generated as a data frame usinf a for loop and if/else statements
* Features selected based on the logical vector in step 3 above is used to set the names of the variable in the combined data. The names were updated to remove "-" and "()" characters using the gsub function. The subject and the activity columns were also added using the cbind function.
* The aggregate function is used to group the resulting dataframe on the subjects and on the activity and the mean of the column is calculated for the resulting groups.
* The tidy data set generated in the script is written into the file tidydata.txt using the write.table function.

## Fields in the data set
A list of the variables in the tidy data generated is given below. The first two columns contains a unique subject/activity while the other columns show the average of the measurements taken for that subject. A detailed description of the columns is given in Old_README.txt and the features_info.txt files. The third through the last column also corresponds to the list in the features.txt files (having "mean" and "std" in the name) with the "-" and "()" characters removed from the field for easy reading and better names.
|*Field*|*Description*|
|subject|Subject identification in the range (1:30)|
|activity|Activity label in (walking, walking_upstairs, walking_downstairs, sitting, standing, laying)|
|tBodyAccmeanX| mean of field for subject and activity - real number
|tBodyAccmeanY| mean of field for subject and activity - real number
|tBodyAccmeanZ| mean of field for subject and activity - real number
|tBodyAccstdX| mean of field for subject and activity - real number
|tBodyAccstdY| mean of field for subject and activity - real number
|tBodyAccstdZ| mean of field for subject and activity - real number
|tGravityAccmeanX| mean of field for subject and activity - real number
|tGravityAccmeanY| mean of field for subject and activity - real number
|tGravityAccmeanZ| mean of field for subject and activity - real number
|tGravityAccstdX| mean of field for subject and activity - real number 
|tGravityAccstdY| mean of field for subject and activity - real number 
|tGravityAccstdZ| mean of field for subject and activity - real number 
|tBodyAccJerkmeanX| mean of field for subject and activity - real number 
|tBodyAccJerkmeanY| mean of field for subject and activity - real number 
|tBodyAccJerkmeanZ| mean of field for subject and activity - real number 
|tBodyAccJerkstdX| mean of field for subject and activity - real number 
|tBodyAccJerkstdY| mean of field for subject and activity - real number 
|tBodyAccJerkstdZ| mean of field for subject and activity - real number 
|tBodyGyromeanX| mean of field for subject and activity - real number
|tBodyGyromeanY| mean of field for subject and activity - real number
|tBodyGyromeanZ| mean of field for subject and activity - real number
|tBodyGyrostdX| mean of field for subject and activity - real number
|tBodyGyrostdY| mean of field for subject and activity - real number
|tBodyGyrostdZ| mean of field for subject and activity - real number
|tBodyGyroJerkmeanX| mean of field for subject and activity - real number 
|tBodyGyroJerkmeanY| mean of field for subject and activity - real number 
|tBodyGyroJerkmeanZ| mean of field for subject and activity - real number 
|tBodyGyroJerkstdX| mean of field for subject and activity - real number 
|tBodyGyroJerkstdY| mean of field for subject and activity - real number 
|tBodyGyroJerkstdZ| mean of field for subject and activity - real number 
|tBodyAccMagmean| mean of field for subject and activity - real number 
|tBodyAccMagstd| mean of field for subject and activity - real number 
|tGravityAccMagmean| mean of field for subject and activity - real number
|tGravityAccMagstd| mean of field for subject and activity - real number 
|tBodyAccJerkMagmean| mean of field for subject and activity - real number 
|tBodyAccJerkMagstd| mean of field for subject and activity - real number 
|tBodyGyroMagmean| mean of field for subject and activity - real number 
|tBodyGyroMagstd| mean of field for subject and activity - real number 
|tBodyGyroJerkMagmean| mean of field for subject and activity - real number 
|tBodyGyroJerkMagstd| mean of field for subject and activity - real number 
|fBodyAccmeanX| mean of field for subject and activity - real number 
|fBodyAccmeanY| mean of field for subject and activity - real number 
|fBodyAccmeanZ| mean of field for subject and activity - real number 
|fBodyAccstdX| mean of field for subject and activity - real number 
|fBodyAccstdY| mean of field for subject and activity - real number 
|fBodyAccstdZ| mean of field for subject and activity - real number 
|fBodyAccmeanFreqX| mean of field for subject and activity - real number 
|fBodyAccmeanFreqY| mean of field for subject and activity - real number 
|fBodyAccmeanFreqZ| mean of field for subject and activity - real number 
|fBodyAccJerkmeanX| mean of field for subject and activity - real number 
|fBodyAccJerkmeanY| mean of field for subject and activity - real number 
|fBodyAccJerkmeanZ| mean of field for subject and activity - real number 
|fBodyAccJerkstdX| mean of field for subject and activity - real number 
|fBodyAccJerkstdY| mean of field for subject and activity - real number 
|fBodyAccJerkstdZ| mean of field for subject and activity - real number 
|fBodyAccJerkmeanFreqX| mean of field for subject and activity - real number 
|fBodyAccJerkmeanFreqY| mean of field for subject and activity - real number 
|fBodyAccJerkmeanFreqZ| mean of field for subject and activity - real number 
|fBodyGyromeanX| mean of field for subject and activity - real number 
|fBodyGyromeanY| mean of field for subject and activity - real number 
|fBodyGyromeanZ| mean of field for subject and activity - real number 
|fBodyGyrostdX| mean of field for subject and activity - real number 
|fBodyGyrostdY| mean of field for subject and activity - real number 
|fBodyGyrostdZ| mean of field for subject and activity - real number 
|fBodyGyromeanFreqX| mean of field for subject and activity - real number 
|fBodyGyromeanFreqY| mean of field for subject and activity - real number 
|fBodyGyromeanFreqZ| mean of field for subject and activity - real number 
|fBodyAccMagmean| mean of field for subject and activity - real number 
|fBodyAccMagstd| mean of field for subject and activity - real number 
|fBodyAccMagmeanFreq| mean of field for subject and activity - real number 
|fBodyBodyAccJerkMagmean| mean of field for subject and activity - real number 
|fBodyBodyAccJerkMagstd| mean of field for subject and activity - real number 
|fBodyBodyAccJerkMagmeanFreq| mean of field for subject and activity - real number 
|fBodyBodyGyroMagmean| mean of field for subject and activity - real number 
|fBodyBodyGyroMagstd| mean of field for subject and activity - real number 
|fBodyBodyGyroMagmeanFreq| mean of field for subject and activity - real number 
|fBodyBodyGyroJerkMagmean| mean of field for subject and activity - real number 
|fBodyBodyGyroJerkMagstd| mean of field for subject and activity - real number 
|fBodyBodyGyroJerkMagmeanFreq| mean of field for subject and activity - real number

