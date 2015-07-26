#Getting and Cleaning Data Course Project

##Project Contents:
1. README.md - This read me file, providing an explanation of what the script does
2. CodeBook.md - A code book containing a data dictionary of the resulting tidy File
3. run_analysis.R - The R script that should be executed to perform the analysis

##Prerequisistes
* Machine running R
* Your computed must have internet access to be able to download the source files
* R must have the following additional packages installed:
--* plyr
--* reshape2
--Note the script will load these packages when it runs, but you must have previsouly installed them.

##Project Overview
The script is called run_analysis.R and does that does the following: 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Note: the actual order of may differ in the implementation see below for full details of the implementation


## Explanation of R script implementation
* Starts by seeting up a directory (CourseraData) under the working directory under which it will store data files.
* It then downloads the zip file from the internet, and stores it on the local filesystem
* It checks the zip file was downloaded and exists on the filesystem before proceeding with the analysis
* It extracts the contents of the Zip File to the local filesystem
* The data from the following 8 files are then read into the environment as data frames:
--*x_test.txt
--*y_test.txt
--*subject_test.txt
--*x_train.txt
--*y_train.txt
--*subject_train.txt
--*features.txt
--*activity_labels.txt

* Sets column names for the data frame that the activity_labels.txt is loaded into, to provide understandable descriptions of teh data that they contain. Part of the tidy data criteria. This relates to step 4 in the project overview.

* The script then combines the two data sets contained in x_test.txt and x_train.txt which hold the measurement variable data.  This is combined by adding them in as rows.  This relates to step 1 in the project overview.

* It then sets the column headings on the data set that has been created containing the measurement variables.  This is done by loading them in from the features.txt file. This relates to step 4 in the project overview, providing descriptive variable names.  The source data set does not provide a full data dictionary for the data and therfore the best names for the variables are those contained in the features file.  Trying to assign alternative headings that are more descriptive than these would lead to potentially incorrect understanding.

*  The script then combines the data from the two files subject_test.txt and subject_train.txt, adding them together as rows in the same order as the x data was combined. (This relates to step 1 in the project overview)

* It then assigns a descriptive column heading to the data set holding the subjects.  This relates to step 4  in the project overview.

*  The script then combines the data from the two files y_test.txt and y_train.txt, adding them together as rows in the same order as the x data was combined. These two files hold the activity id that the measurements were taken for. (This relates to step 1 in the project overview)  

* It then assigns a descriptive column heading to the data set holding the measurement activity ids. This relates to step 4 in the project overview.

* It then merges the activity names to the y Data, mapping on the Activity Id (which is an integer between 1 & 6)
and then combine into the main data set.  This relates to step 3 in the project overview.

* It then combines the following 3 data frames using(cbind):
--* data frame holding the Subject data
--* data frame holding the activities data
--* data frame holding the measurement variables
This relates to steps 1 and 3 in the project overview.

* The script then extracts the subset of all standard deviation and mean measurements from the full combined data set (and includes the Subject and Activity Name columns).
It is deemed that any column that contains std() or mean() meets this requirement.  This relates to step 2 in the project overview.

* It then store the names of the columns containing the standard deviation and mean measurements (i.e. variables) in a vector.

* The scriprt then reshapes the dataset by melting it to make it a tall and thin data frame, where the ids in the melted data are set to be Subject and Activity, and each different variable (i.e. standard deviation and mean measurement)forms a new row.  This relates to step 5 in the project overview.

* The script then reCasts the melted dataset, so that we can see for each combination of Subject & Activity the average value of each variable.
This forms a tidy data set as:
--* Each variable measured is in its own column
--* Each different observation (combination of Subject & Activty) is in a seperate row with the value of each of the variables listed against it
--* There is a single table for the measurement data
This relates to step 5 in the project overview.

* The column names for those columns holding the measurements are then amended to provide a descriptive explanation that they now hold the average value.
This relates to step 5 in the project overview.

* It then outputs this final tidy data set as a text file to the local filesystem.  The default options are used for the write.table() function, except for setting row.name=FALSE.
