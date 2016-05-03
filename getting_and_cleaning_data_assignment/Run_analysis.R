  run_analysis <- function(){
    # load test data  
    subject_test = read.table("./UCI HAR Dataset/test/subject_test.txt")
    X_test = read.table("./UCI HAR Dataset/test/X_test.txt")
    Y_test = read.table("./UCI HAR Dataset/test/Y_test.txt")
    
    # load training data
    subject_train = read.table("./UCI HAR Dataset/train/subject_train.txt")
    X_train = read.table("./UCI HAR Dataset/train/X_train.txt")
    Y_train = read.table("./UCI HAR Dataset/train/Y_train.txt")
    
    # load lookup information
    features <- read.table("./UCI HAR Dataset/features.txt", col.names=c("featureId", "featureLabel"))
    activities <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activityLabel"))
    activities$activityLabel <- gsub("_", "", as.character(activities$activityLabel))
    includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)
    
    # merge test and training data and then name them
    subject <- rbind(subject_test, subject_train)
    names(subject) <- "subjectId"
    X <- rbind(X_test, X_train)
    X <- X[, includedFeatures]
    names(X) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures])
    Y <- rbind(Y_test, Y_train)
    names(Y) = "activityId"
    activity <- merge(Y, activities, by="activityId")$activityLabel
    
    # merge data frames of different columns to form one data table
    data <- cbind(subject, X, activity)
    write.table(data, "merged_tidy_data.txt")
    
    # create a dataset grouped by subject and activity after applying standard deviation and average calculations
    library(data.table)
    dataDT <- data.table(data)
    
    dataDT$activity <- as.character(dataDT$activity)
    dataDT$activity[dataDT$activity == 1] <- "Walking"
    dataDT$activity[dataDT$activity == 2] <- "Walking Upstairs"
    dataDT$activity[dataDT$activity == 3] <- "Walking Downstairs"
    dataDT$activity[dataDT$activity == 4] <- "Sitting"
    dataDT$activity[dataDT$activity == 5] <- "Standing"
    dataDT$activity[dataDT$activity == 6] <- "Laying"
    dataDT$activity <- as.factor(dataDT$activity)
   
    calculatedData<- dataDT[, lapply(.SD, mean), by=c("subjectId", "activity")]
    write.table(calculatedData, "calculated_tidy_data.txt")

  }