#Getting and Cleaning Data: Course Project

##Introduction

This repository contains the course project files for the Coursera course "Getting and Cleaning data". The objective of the project is to obtain, cleanse and format the motion sensor data (e.g. rotation, accleration) from 30 test subjects collected using Samsung Galaxy S2 and compute their average for 6 different activities(e.g. sitting, walking, etc).


##About the raw data

The sensor data is contained in a zip file which will unzip to a folder "UCI HAR Dataset"

The root folder contains the following files:

* activity_labels.txt: activity label 
* features.txt: measured feature names 

There are two subfolders, "train" and "test", each containing 3 files: 
* X_train/test: sensor readings
* y_train/test: activity code
* subject_train/test: subject code

About the script and output
---------------------------
All the processing are done via a script called run_analysis.R. 

The run_analysis.R performs the 5 steps required for the project.

1. Read and merges the training and the test data sets to create one data set.
2. Apply the variable names to the data set name and extracts the measurements for mean and standard deviation for each measurement. 
3. Add descriptive activity names to name the activities in the data set by combining the activity and subject columns
4. Appropriately labels the data set with descriptive variable names by removing the brackets and translating special characters as well as translating the short names to longer, more descriptive names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject and write to a text file.

The ouput, a tidy data set, is named "activity_data_mean.txt" which contains a tidy data set with mean values of 66 selected features grouped by each subject and each activity.

##About the Code Book
The CodeBook.md file contains description of the data elements and explains in detail the variables used and the resulting dataset.
