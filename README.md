## Getting  and Cleaning Data Course Project
The analysis in this project was carried out using the given data collected from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Details about the original experiment and dataset can be found in the Old_README.txt file of this repository. The CodeBook describes the variables and analysis carried out to generate the tidy data.

## Files Used
The following files in the given folder were mostly used to generate the tidy data. A description of the information contained in them is below.
* ./test/X_test.txt: contains 2947 rows of 561 columns (which corresponds to the features in features.txt file)
* ./test/y_test.txt: contains the list of specific activity that each row of X_test.txt corresponds to, respectively.
* ./test/subject_test.txt: contains a list of the corresponding subject to which the rows in X_test.txt belongs.
* ./train/X_train.txt: contains 7352 rows of 561 columns (which corresponds to the features in features.txt file)
* ./train/y_train.txt: contains the list of specific activity that each row of X_train.txt corresponds to, respectively.
* ./train/subject_train.txt: contains a list of the corresponding subject to which the rows in X_train.txt belongs.
* ./activity_labels.txt: Contains a definition of the activities labelled  1...6 in the y_test.txt and y_train.txt files.
* ./features.txt: contains a list of the 561 variables, respectively.

## File generated
Additional files created to complete this project include:
* run_analysis.R: which contains the script for generating the tidy data
* README.txt: this file, describing the project and files used.
* CodeBook: which describes the analysis carried out and the variables.
* Old_README.txt: The original README file with given data.



