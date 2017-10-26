# Week 4 Course Project

## Use the following steps to create the tidy.csv file (and data.frame) from the raw data files supplied in the assignment:
1. Download the data files for the project here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip this to some directory on your computer
3. Set your working directory to the parent directory in 2. above.  This directory will contain the unzipped sub-directory 'UCI HAR Dataset'.  For example: 
`setwd("~/Documents/Education/Coursera/DataScience/Course3_GettingCleaningData/Week4/Assignment")`.  All data files used are relative to this path.
4. Source/run the function `tidy <- run_analysis()` from the file 'run_analysis.R'.

This will create a file 'tidy.txt' in your working directory and also return the tidy'ed up data.frame to be used for your analysis.

You can read in the text file with the following command: `tidy2 <- read.table("./tidy.txt", header=TRUE)`.  The only difference between the files is the factor level ordering in the 'activity' column.  If you want the ordering of the factor to be like the original raw data files you can run this command: `tidy2$activity <- factor(tidy2$activity, c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))`

## Additional references
The CodeBook.md file contains additional details including:
1. A 'CodeBook' section describing the structure of the output dataset.
2. A 'Summary detail' section describing the major steps of the 'run_analysis.R' file as well as the choices made & rationale for the each step.
3. A 'Study design' section describing the raw input files and how they were ultimately used.

Finally the 'run_analysis.R' file has been commented pretty heavily and can be referred to for additional details.