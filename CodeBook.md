# Code Book - Getting and Cleaning Data Course Project
This code book provides a data dictionary describing the variables, data, and any transformations or work that have been performed  on the data contained in the tidyData.txt output file generated by run_analysis.R.

***

SubjectId:                               Element 1    Max Length: 2
  Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
  The value is extracted from the subject_test.txt and subject_train.txt files

ActivityName:                            Element 2    Max Length: 18
  The name of the activity being performed by the subject for which the sample measurements were taken.
  The value is derived using the 'class label' held in the activity_labels.txt file to map to the value held in the y_train.txt and y_test.txt files (which in turn is mapped to the observations held in the x_test.txt and x_train.txt files)
  
  
Average tBodyAcc-mean()-X                Element 3     Max Length: 18
  The average (mean) of each mean value of the body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAcc-mean()-Y                Element 4     Max Length: 18
  The average (mean) of each mean value of the body acceleration signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAcc-mean()-Z                Element 5     Max Length: 18
  The average (mean) of each mean value of the body acceleration signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAcc-std()-X                 Element 6     Max Length: 18
  The average (mean) of each standard deviation value of the body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAcc-std()-Y                 Element 7     Max Length: 18
  The average (mean) of each standard deviation value of the body acceleration signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAcc-std()-Z                 Element 8     Max Length: 18   
  The average (mean) of each standard deviation value of the body acceleration signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tGravityAcc-mean()-X             Element 9     Max Length: 18
  The average (mean) of each mean value of the gravity acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]
  
Average tGravityAcc-mean()-Y             Element 10    Max Length: 18
  The average (mean) of each mean value of the gravity acceleration signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tGravityAcc-mean()-Z             Element 11    Max Length: 18
  The average (mean) of each mean value of the gravity acceleration signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tGravityAcc-std()-X              Element 12    Max Length: 18
  The average (mean) of each standard deviation value of the body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tGravityAcc-std()-Y              Element 13    Max Length: 18
  The average (mean) of each standard deviation value of the body acceleration signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tGravityAcc-std()-Z              Element 14    Max Length: 18      
  The average (mean) of each standard deviation value of the body acceleration signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAccJerk-mean()-X            Element 15    Max Length: 18
  The average (mean) of each mean value of the jerk signal for the body linear acceleration  on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAccJerk-mean()-Y            Element 16    Max Length: 18 
  The average (mean) of each mean value of the jerk signal for the body linear acceleration  on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAccJerk-mean()-Z            Element 17    Max Length: 18
  The average (mean) of each mean value of the jerk signal for the body linear acceleration  on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAccJerk-std()-X             Element 18    Max Length: 18 
  The average (mean) of each standard deviation value of the jerk signal for the body linear acceleration  on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAccJerk-std()-Y             Element 19    Max Length: 18
  The average (mean) of each standard deviation value of the jerk signal for the body linear acceleration  on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAccJerk-std()-Z             Element 20    Max Length: 18 
  The average (mean) of each standard deviation value of the jerk signal for the body linear acceleration  on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyro-mean()-X               Element 21    Max Length: 18
  The average (mean) of each mean value of the angular velocity  on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyro-mean()-Y               Element 22    Max Length: 18   
  The average (mean) of each mean value of the angular velocity  on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyro-mean()-Z               Element 23    Max Length: 18
  The average (mean) of each mean value of the angular velocity  on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyro-std()-X                Element 24    Max Length: 18  
  The average (mean) of each standard deviation value of the angular velocity  on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyro-std()-Y                Element 25    Max Length: 18
  The average (mean) of each standard deviation value of the angular velocity  on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyro-std()-Z                Element 26    Max Length: 18    
  The average (mean) of each standard deviation value of the angular velocity  on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyroJerk-mean()-X           Element 27    Max Length: 18
  The average (mean) of each mean value of the jerk signal for the angular velocity  on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyroJerk-mean()-Y           Element 28    Max Length: 18    
  The average (mean) of each mean value of the jerk signal for the angular velocity  on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]  

Average tBodyGyroJerk-mean()-Z           Element 29    Max Length: 18
  The average (mean) of each mean value of the jerk signal for the angular velocity  on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]
  
Average tBodyGyroJerk-std()-X            Element 30    Max Length: 18     
  The average (mean) of each standard deviation value of the jerk signal for the angular velocity  on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]
  
Average tBodyGyroJerk-std()-Y            Element 31    Max Length: 18
  The average (mean) of each standard deviation value of the jerk signal for the angular velocity  on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]
  
Average tBodyGyroJerk-std()-Z            Element 32    Max Length: 18     
  The average (mean) of each standard deviation value of the jerk signal for the angular velocity  on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAccMag-mean()               Element 33    Max Length: 18
  The average (mean) of each mean value of the magnitude of the 3 signals recorded for body acceleration recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyAccMag-std()                Element 34    Max Length: 18      
  The average (mean) of each standard deviation value of the magnitude of the 3 signals recorded for body acceleration recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tGravityAccMag-mean()            Element 35    Max Length: 18
  The average (mean) of each mean value of the magnitude of the 3 signals recorded for gravity acceleration recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tGravityAccMag-std()             Element 36    Max Length: 18      
  The average (mean) of each standard deviation value of the magnitude of the 3 signals recorded for gravity acceleration recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]
  
Average tBodyAccJerkMag-mean()           Element 37    Max Length: 18
  The average (mean) of each mean value of the magnitude of the 3 jerk signals recorded for body acceleration recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]
  
Average tBodyAccJerkMag-std()            Element 38    Max Length: 18   
  The average (mean) of each standard deviation value of the magnitude of the 3 jerk signals recorded for body acceleration recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyroMag-mean()              Element 39    Max Length: 18
    The average (mean) of each mean value of the magnitude of the 3 angular velocity  signals recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyroMag-std()               Element 40    Max Length: 18   
    The average (mean) of each standard deviation value of the magnitude of the 3 angular velocity  signals recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyroJerkMag-mean()          Element 41    Max Length: 18
    The average (mean) of each mean value of the magnitude of the 3 jerk signals recorded for angular velocity  signals recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average tBodyGyroJerkMag-std()           Element 42    Max Length: 18
    The average (mean) of each standard deviation value of the magnitude of the 3 jerk signals recorded for angular velocity  signals recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAcc-mean()-X                Element 43    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAcc-mean()-Y                Element 44    Max Length: 18  
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the body acceleration signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAcc-mean()-Z                Element 45    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the body acceleration signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAcc-std()-X                 Element 46    Max Length: 18  
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAcc-std()-Y                 Element 47    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the body acceleration signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]  

Average fBodyAcc-std()-Z                 Element 48    Max Length: 18   
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the body acceleration signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAcc-meanFreq()-X            Element 49    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAcc-meanFreq()-Y            Element 50    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAcc-meanFreq()-Z            Element 51    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccJerk-mean()-X            Element 52    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the jerk signals for body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccJerk-mean()-Y            Element 53    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the jerk signals for body acceleration signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccJerk-mean()-Z            Element 54    Max Length: 18 
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the jerk signals for body acceleration signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccJerk-std()-X             Element 55    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the jerk signals for body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccJerk-std()-Y             Element 56    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the jerk signals for body acceleration signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccJerk-std()-Z             Element 57    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the jerk signals for body acceleration signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccJerk-meanFreq()-X        Element 58    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the jerk signals for body acceleration signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccJerk-meanFreq()-Y        Element 59    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the jerk signals for body acceleration signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccJerk-meanFreq()-Z        Element 60    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the jerk signals for body acceleration signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyGyro-mean()-X               Element 61    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the angular velocity signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyGyro-mean()-Y               Element 62    Max Length: 18  
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the angular velocity signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyGyro-mean()-Z               Element 63    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the angular velocity signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyGyro-std()-X                Element 64    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the angular velocity signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyGyro-std()-Y                Element 65    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the angular velocity signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyGyro-std()-Z                Element 66    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the angular velocity signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyGyro-meanFreq()-X           Element 67    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the angular velocity signal on the x axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyGyro-meanFreq()-Y           Element 68    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the angular velocity signal on the y axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyGyro-meanFreq()-Z           Element 69    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the angular velocity signal on the z axis recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccMag-mean()               Element 70    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the magnitude of the body linear acceleration signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccMag-std()                Element 71    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the magnitude of the body linear acceleration signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyAccMag-meanFreq()           Element 72    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the magnitude of the body linear acceleration signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyBodyAccJerkMag-mean()       Element 73    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the magnitude of the jerk signals for the body linear acceleration signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyBodyAccJerkMag-std()        Element 74    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the magnitude of the jerk signals for the body linear acceleration signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyBodyAccJerkMag-meanFreq()   Element 75    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the magnitude of the jerk signals for the body linear acceleration signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyBodyGyroMag-mean()          Element 76    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the magnitude of the body gyro signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyBodyGyroMag-std()           Element 77    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the magnitude of the body gyro signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyBodyGyroMag-meanFreq()      Element 78    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the magnitude of the body gyro signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyBodyGyroJerkMag-mean()      Element 79    Max Length: 18
  The average (mean) of each mean value of the Fast Fourier Transform (FFT) applied to the magnitude of the jerk signals for the body gyro signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]

Average fBodyBodyGyroJerkMag-std()       Element 80    Max Length: 18
  The average (mean) of each standard deviation value of the Fast Fourier Transform (FFT) applied to the magnitude of the jerk signals for the body gyro signal recorded for a specific combination of activity and subject.
  Decimal value normalized and bounded within [-1,1]

Average fBodyBodyGyroJerkMag-meanFreq()  Element 81    Max Length: 18
  The average (mean) of each meanFreq value of the Fast Fourier Transform (FFT) applied to the magnitude of the jerk signals for the body gyro signal recorded for a specific combination of activity and subject.
Decimal value normalized and bounded within [-1,1]