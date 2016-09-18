# Getting-and-Cleaning-Data-Project

This is the course project for the Coursera 'Getting and Cleaning Data' course. The project aims to demonstrate the collection and cleaning of a data set in order to create tidy data that can be used for further analysis.

A full description of the data used in this project can be found at "The UCI Machine Learning Repository":
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The source data as well as a description of this data can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# The project consists of following files
- 'README.md'
- 'run_analysis.R': R script (cp. below for details)
- 'tidy.txt': contains the end results of the R script.
- 'CodeBook.md': Codebook indicating all variables and summaries of 'tidy.txt'.

The R script 'run_analysis.R' creates a tidy data set from the source data. Following steps are conducted:
- The dataset is downloaded and unzipped if it does not already exist in the working directory
- Training and test data sets are read into R together with information regarding subjects and activities
- Training and test data sets are merged to create one data set 
- Only variables that represent a mean or standard deviation for each measurement are kept in the data set
- The data set is relabeled with appropriate variable names
- Descriptive activity names are assigned to the activities in the data 
- A tidy data set is created with the average of each variable for each activity and each subject
