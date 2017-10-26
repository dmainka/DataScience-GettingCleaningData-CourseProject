#setwd("/Users/danielmainka/Documents/Education/Coursera/DataScience/Course3_GettingCleaningData/Week4/Assignment")

run_analysis <- function()
{
    # 1.  Merges the training and the test sets to create one data set. -------
    print("1. Merging the training and the test sets to create one data set...")
    
    subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names="subject")
    y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names="activity")
    X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
    
    subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names="subject")
    y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names="activity")
    X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
    
    # Merge the data.frames
    data <- rbind(cbind(subject_train, y_train, X_train), 
                  cbind(subject_test,  y_test,  X_test))
    
    # Clean up a little so we don't have 2x the amount of data saved; will be done at end of function but
    # decided to do it sooner rather than later
    rm(list=c("subject_train", "y_train", "X_train", 
              "subject_test",  "y_test",  "X_test"))


    # 2.  Extracts only the measurements on the mean and standard deviation for each measurement. --------
    print("2. Extracting only the measurements on the mean and standard deviation for each measurement...")

    features <- read.table("./UCI HAR Dataset/features.txt", col.names=c("id", "name"), as.is=TRUE)
    
    # the grepl returns TRUE for only those columns that contain the text 'mean(' or 'std('.
    # NOTE: not sure if this should have been 'mean' & 'std' as there are some columns with names 
    # like 'meanFreq', 'mean0' and using 'mean' keeps those whereas using 'mean(' does not.  The
    # assignment doesn't give any clear direction here so I've made an arbitrary choice.
    # This is how I could have also done it: is_feature_to_keep <- grepl(".*(mean|std).*", features$name)
    is_feature_to_keep <- grepl(".*(mean\\(|std\\()).*", features$name)
    
    # The first 2 TRUE values are to keep the additional columns added before the features (e.g., subject, activity).
    data <- data[, c(TRUE, TRUE, is_feature_to_keep)]
    
    # Subset the features data.frame too
    features <- features[is_feature_to_keep, ]
    
    
    # 3.  Uses descriptive activity names to name the activities in the data set. --------
    activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("value", "label"), as.is=TRUE)
    
    # convert to a factor keeping the same numeric values as the original data had (to avoid confusion)
    activity_labels$label <- factor(activity_labels$label, c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
    
    data[, "activity"] <- activity_labels$label[data[, "activity"]] # use the label column of activity_labels to lookup factor
    
    
    # 4.  Appropriately labels the data set with descriptive variable names. --------
    features$name <- gsub("()", "", features$name, fixed=TRUE) #remove parentheses
    features$name <- gsub("^f+", "frequency.", features$name) #replace first letter 'f' with 'frequency.'
    features$name <- gsub("^t+", "time.", features$name) #replace first letter 't' with 'time.'
    
    splits <- strsplit(features$name, "-")
    
    colnames(data)[-(1:2)] <- sapply(splits, function(x) { paste(x, collapse=".") })
    
    
    # 5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. --------
    tidy <- aggregate(data[, -(1:2)], by=list(subject=data$subject, activity=data$activity), FUN=mean)

    write.table(x=tidy, file='tidy.txt', row.names=FALSE)
    
    # Checks to ensure the write function gets read in and equals the returned data.frame.  (These have been intentionally commented out)
    #tidy2 <- read.table("./tidy.txt", header=TRUE)
    #tidy2$activity <- factor(tidy2$activity, c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
    #identical(tidy2[,1], tidy[, 1])
    #identical(tidy2[, 2], tidy[, 2])
    #max(abs(tidy2[,3:68]-tidy[,3:68]))

    return(tidy)
}
