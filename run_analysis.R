## Step 1
### Read test files
xtest <- read.table("./test/X_test.txt", colClasses="numeric")
subjecttest <- read.table("./test/subject_test.txt", colClasses="numeric")
ytest <- read.table("./test/y_test.txt")

### Read train files
xtrain <- read.table("./train/X_train.txt", colClasses="numeric")
subjecttrain <- read.table("./train/subject_train.txt", colClasses="numeric")
ytrain <- read.table("./train/y_train.txt")

### Combine rows of test and train data and renames subject data column
testtrain <- rbind(xtest,xtrain)
testtrainsubject <- rbind(subjecttest,subjecttrain)
testtrainy <- rbind(ytest,ytrain)


## Step 2
### Get Features to select
features <- read.table("./features.txt")
meanstdmeasures<-grepl("mean|std", features$V2)
featuresselected <- features[meanstdmeasures, 2]
testtrainselected<-testtrain[,meanstdmeasures,drop=FALSE]

## Step 3
### Get descriptive name for combined ytest and ytrain

for(i in 1:length(testtrainy[[1]])){
	if(testtrainy[i,1]==1){
		testtrainy[i,2]="walking"
	}
	else if(testtrainy[i,1]==2){
		testtrainy[i,2]="walking_upstairs"
	}
	else if(testtrainy[i,1]==3){
		testtrainy[i,2]="walking_downstairs"
	}
	else if(testtrainy[i,1]==4){
		testtrainy[i,2]="sitting"
	}
	else if(testtrainy[i,1]==5){
		testtrainy[i,2]="standing"
	}
	else if(testtrainy[i,1]==6){
		testtrainy[i,2]="laying"
	}
}

## Step 4
### Set descriptive variable names
names(testtrainselected) <- featuresselected

### Add activity column to data set
names(testtrainy) <- c("activityno","activity")
activity <- testtrainy[,-1]
testtrainwactivity <- cbind(activity,testtrainselected)

### Rename subject column and combine with data set
names(testtrainsubject) <- c("subject")
combinedset <- cbind(testtrainsubject,testtrainwactivity)

### Update descriptive variable names
names(combinedset) <- gsub("\\-", "", names(combinedset),)
names(combinedset) <- gsub("\\(\\)", "", names(combinedset),)

## Step 5 -- Get tidy data as aggregate over subject and activity
### Group by subject and activity, get means and set column names
tidydata<-aggregate(combinedset[,3:length(combinedset)], list(combinedset$subject,combinedset$activity), mean)
tidydata <- rename(tidydata,c("Group.1"="subject","Group.2"="activity"))

## Step 6 -- Write the tidy data to a textfile
write.table(tidydata,"tidydata.txt",row.name=FALSE)
