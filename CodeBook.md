# Code book

## Variables in tidy.csv and data.frame returned by run_analysis.R

Each line below has the following format:   '<Column #>. <Variable name> - <data type> - <other details (e.g., units)>'.

The variable name component has the following format: '<Domain>.<Variable>.<Statistic>.<Direction>' where:
- <Domain>: {time, frequency}
- <Variable>: see Study design::X_test.txt & X_train.txt below for additional details
- <Statistic>: {mean, std} representing the mean or standard deviation
- <Direction>: {none, X, Y, Z} representing the measurement direction

---
1. subject - int - Subject identifier
2. activity - factor - Levels: 1=WALKING, 2=WALKING_UPSTAIRS, 3=WALKING_DOWNSTAIRS, 4=SITTING, 5=STANDING, 6=LAYING
3. time.BodyAcc.mean.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
4. time.BodyAcc.mean.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
5. time.BodyAcc.mean.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
6. time.BodyAcc.std.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
7. time.BodyAcc.std.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
8. time.BodyAcc.std.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
9. time.GravityAcc.mean.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
10. time.GravityAcc.mean.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
11. time.GravityAcc.mean.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
12. time.GravityAcc.std.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
13. time.GravityAcc.std.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
14. time.GravityAcc.std.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
15. time.BodyAccJerk.mean.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
16. time.BodyAccJerk.mean.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
17. time.BodyAccJerk.mean.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
18. time.BodyAccJerk.std.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
19. time.BodyAccJerk.std.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
20. time.BodyAccJerk.std.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
21. time.BodyGyro.mean.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
22. time.BodyGyro.mean.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
23. time.BodyGyro.mean.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
24. time.BodyGyro.std.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
25. time.BodyGyro.std.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
26. time.BodyGyro.std.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
27. time.BodyGyroJerk.mean.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
28. time.BodyGyroJerk.mean.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
29. time.BodyGyroJerk.mean.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
30. time.BodyGyroJerk.std.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
31. time.BodyGyroJerk.std.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
32. time.BodyGyroJerk.std.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
33. time.BodyAccMag.mean - num - units (see Study Design - X_test.txt & X_train.txt below for details)
34. time.BodyAccMag.std - num - units (see Study Design - X_test.txt & X_train.txt below for details)
35. time.GravityAccMag.mean - num - units (see Study Design - X_test.txt & X_train.txt below for details)
36. time.GravityAccMag.std - num - units (see Study Design - X_test.txt & X_train.txt below for details)
37. time.BodyAccJerkMag.mean - num - units (see Study Design - X_test.txt & X_train.txt below for details)
38. time.BodyAccJerkMag.std - num - units (see Study Design - X_test.txt & X_train.txt below for details)
39. time.BodyGyroMag.mean - num - units (see Study Design - X_test.txt & X_train.txt below for details)
40. time.BodyGyroMag.std - num - units (see Study Design - X_test.txt & X_train.txt below for details)
41. time.BodyGyroJerkMag.mean - num - units (see Study Design - X_test.txt & X_train.txt below for details)
42. time.BodyGyroJerkMag.std - num - units (see Study Design - X_test.txt & X_train.txt below for details)
43. frequency.BodyAcc.mean.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
44. frequency.BodyAcc.mean.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
45. frequency.BodyAcc.mean.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
46. frequency.BodyAcc.std.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
47. frequency.BodyAcc.std.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
48. frequency.BodyAcc.std.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
49. frequency.BodyAccJerk.mean.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
50. frequency.BodyAccJerk.mean.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
51. frequency.BodyAccJerk.mean.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
52. frequency.BodyAccJerk.std.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
53. frequency.BodyAccJerk.std.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
54. frequency.BodyAccJerk.std.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
55. frequency.BodyGyro.mean.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
56. frequency.BodyGyro.mean.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
57. frequency.BodyGyro.mean.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
58. frequency.BodyGyro.std.X - num - units (see Study Design - X_test.txt & X_train.txt below for details)
59. frequency.BodyGyro.std.Y - num - units (see Study Design - X_test.txt & X_train.txt below for details)
60. frequency.BodyGyro.std.Z - num - units (see Study Design - X_test.txt & X_train.txt below for details)
61. frequency.BodyAccMag.mean - num - units (see Study Design - X_test.txt & X_train.txt below for details)
62. frequency.BodyAccMag.std - num - units (see Study Design - X_test.txt & X_train.txt below for details)
63. frequency.BodyBodyAccJerkMag.mean - num - units (see Study Design - X_test.txt & X_train.txt below for details)
64. frequency.BodyBodyAccJerkMag.std - num - units (see Study Design - X_test.txt & X_train.txt below for details)
65. frequency.BodyBodyGyroMag.mean - num - units (see Study Design - X_test.txt & X_train.txt below for details)
66. frequency.BodyBodyGyroMag.std - num - units (see Study Design - X_test.txt & X_train.txt below for details)
67. frequency.BodyBodyGyroJerkMag.mean - num - units (see Study Design - X_test.txt & X_train.txt below for details)
68. frequency.BodyBodyGyroJerkMag.std - num - units (see Study Design - X_test.txt & X_train.txt below for details)

# Summary detail

For each of the major steps in the assignment I made the following choices in summarize, joining and renaming of variables.
1. Merges the training and the test sets to create one data set.
  * The merging was done by making 'subject' the 1st column, 'activity' the 2nd column and all variables as order in the X_train.txt & X_test.txt datasets as the remaining column.  Training data was put on top of Test data.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
  * Here I removed all variable names that didn't contain either 'mean(' or 'std(' which left a total off 66 of the original 561 variables. 
3. Uses descriptive activity names to name the activities in the data set
  * Used the activity_labels.txt file to map the integers in y_train.txt & y_test.txt to the more descriptive values.  More details can be found below in the Study design section.
4. Appropriately labels the data set with descriptive variable names.
  * I converted the raw variable names to the final varialbe names above by the following steps:
    1. removed all occurrences of '()'
    2. converted 'f' in the beginning of any variable name to 'frequency'
    3. converted 't' in the beginning of any variable name to 'time'
    4. split the name using '-' and rejoined all parts using '.'
    5. I chose to keep the upper case letters in the <Variable> & <Direction> parts of the variable names just because they are easier to read.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  * There were multiple observations for each subject/activity combination after steps 1-4.  These were combined into a single summary statistic by taking the average of all observations in subject/activity combination for variables 3 - 68 above.

# Study design

## Design details for raw data files used

### X_train.txt & X_test.txt
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

### subject_train.txt & subject_test.txt
These files each contain a single column of integers representing subject identifier corresponding to each observation.  No manipulations were performed on these files.

### y_train.txt & y_test.txt
These files each contain a single column of integers representing the 1 of 6 possible activities to be analyzed for each observation.  Ultimately these integer values were mapped to a factor level using the more descriptive names found in activity_labels.txt.

### features.txt
This is a 2 column file with the first being an integer and the second the raw variable name corresponding to the columns of X_train.txt & X_test.txt.  These were ultimately transformed a bit to be more descriptive.

### activity_labels.txt
The file contains 2 columns as follows:

|value    | label   				|
|:-------:|:-----------------------:|
|1	      | WALKING 				|
|2	      | WALKING_UPSTAIRS 		|
|3	      | WALKING_DOWNSTAIRS 	    |
|4	      | SITTING 				|
|5	      | STANDING 				|
|6	      | LAYING 				    |

These were used to map the values in y_train.txt & y_test.txt from integers to the more descriptive labels above.