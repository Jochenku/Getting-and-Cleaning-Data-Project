# setwd("E:/JOCHENEK")
library(dplyr)



# Download and unzip files ------------------------------------------------

file <- file.path(getwd(), "acc.zip")
if (!file.exists(file)){
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, file)
}
if (!file.exists("UCI HAR Dataset")) { 
  unzip(file)
}



# Read in training and test data sets -------------------------------------

X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", colClasses = "factor")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(subject_train, y_train, X_train)

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", colClasses = "factor")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(subject_test, y_test, X_test)



# Merges the training and the test sets to create one data set ------------

accdata <- rbind(train, test)



# Extracts only measurements on mean/std for each measurement -------------
# Appropriately labels the data set with descriptive variable names -------

features <- read.table("UCI HAR Dataset/features.txt")
names(accdata) <- c("subject", "activity", as.character(features[, 2]))
accdata <- accdata[, c(1 : 2, grep("[Mm]ean[()]|[Ss]td", names(accdata)))]
names(accdata) <- gsub('[-()]', '', names(accdata))



# Uses descriptive activity names to name the activities in the data ------

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
levels(accdata$activity) <- activity_labels[, 2]



# create tidy data set with av. of each var. for each activity/subject ----

accdata <- tbl_df(accdata)
accdata <- group_by(accdata, subject, activity)
accdata
accdataAgg <- summarize_each(accdata, funs(mean))

write.table(accdataAgg, "tidy.txt", row.names = FALSE, quote = FALSE)









