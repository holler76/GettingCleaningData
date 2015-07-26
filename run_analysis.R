##################################################################
##
##
##
##################################################################

## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##  You should create one R script called run_analysis.R that does the 
##  following. 
##   1. Merges the training and the test sets to create one data set.
##   2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##   3. Uses descriptive activity names to name the activities in the data set
##   4. Appropriately labels the data set with descriptive variable names. 
##   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Tidy Data
## 1.Each variable you measure should be in one column
## 2.Each different observation of that variable should be in a different row
## 3.There should be one table for each "kind" of variable
## 4.If you have multiple tables, they should include a column in the table that allows them to be linked

## Some other important tips
## ·Include a row at the top of each file with variable names. 
## ·Make variable names human readable AgeAtDiagnosis instead of AgeDx
## ·In general data should be saved in one file per table.


library(plyr)
library(reshape2)

## Ensure course working directory exists
if (!file.exists("CourseraData")) {
  dir.create("CourseraData")
}

## Download the zip file from the internet, 
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destFileLoc <- "./CourseraData/HarDataset.zip"

download.file(fileURL,destFileLoc, mode = "wb")

## Check the zip file was downloaded and exists on the filesystem
if (file.exists(destFileLoc))
{
  ## Extract the contents of the Zip File
  unzip(destFileLoc, overwrite=TRUE, exdir="./CourseraData")
  
  xTest <- read.table("./CourseraData//UCI HAR Dataset/test/X_test.txt")
  yTest <- read.table("./CourseraData//UCI HAR Dataset/test/Y_test.txt")
  subjTest <- read.table("./CourseraData//UCI HAR Dataset/test/subject_test.txt")
  
  xTrain <- read.table("./CourseraData//UCI HAR Dataset/train//X_train.txt")
  yTrain <- read.table("./CourseraData//UCI HAR Dataset/train//y_train.txt")
  subjTrain <- read.table("./CourseraData//UCI HAR Dataset/train//subject_train.txt")
  
  features <- read.table("./CourseraData//UCI HAR Dataset/features.txt")
  activity <- read.table("./CourseraData//UCI HAR Dataset/activity_labels.txt")
  names(activity) <- c("ActivityId","ActivityName")
  
  
  ## Combine the two x data sets
  mergedData <- rbind(xTest,xTrain)
  ##Set column names
  names(mergedData) <- features[,2]
  
  ## Combine the 2 data sets holding the subject data
  ## and assign a column heading
  Subject <- rbind(subjTest,subjTrain)
  names(Subject) <- "SubjectId"
  
  ## Combine the two y data sets (using same order as for the x data sets)
  yData <- rbind(yTest,yTrain)
  names(yData) <- "ActivityId"
  
  ## Megre the activity names to the yData and then combine into the main data set
  activityNames <- join(yData,activity, by="ActivityId")
  
  mainDS <- cbind(Subject,activityNames, mergedData)
  
  ## Extract the subset of all standard deviation and mean measurements
  ## this is any column name containing std() or mean()
 selectedMeasures <- mainDS[grepl("std()|mean()|SubjectId|ActivityName", names(mainDS))]

 ## Store the names of the columns containing the measurements (i.e. variables)
 variableNames <- names(selectedMeasures)[grepl("std()|mean()", names(selectedMeasures))] 
 
  ## Reshape the dataset by melting it to make it a tall and thin data frame
  ## where the ids are Subject and Activity, and each different variable forms a new row
  dsMelt <- melt(selectedMeasures, id=c("SubjectId","ActivityName"),measure.vars=variableNames)

  ## ReCast the melted dataset, so that we can see for each combination of Subject & Activity
  ## the average value of each variable.
  ## This forms a tidy data set as:
  ##   - Each variable measured is in its own column
  ##   - Each different observation (combination of Subject & Activty) is in a seperate row with the value of each of the variables listed against it
  ##   - There is a single table for the measurement data
  avgVar <- dcast(dsMelt,SubjectId + ActivityName ~ variable,mean)
 
 ## Change the names of the columns holding the variable measurements
 for(n in 3:81)
 {
    names(avgVar)[n]<-paste("Average", names(avgVar)[n], sep=" ")
 }
 
  ## Output the final tidy dataset to a text file
 outputFile <- "./CourseraData/tidyData.txt"
 write.table(avgVar, file=outputFile, row.name=FALSE)
}