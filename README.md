# Getting-and-Cleaning-Data-Course-Project
Getting and Cleaning Data: Course Project
=========================================

Introduction
------------
This repository contains the course project files for the Coursera course "Getting and Cleaning data". The objective of the project is to obtain, cleanse and format the motion sensor data (e.g. rotation, accleration) from 30 subjects collected from Samsung Galaxy S2 and compute their average for 6 different activities(e.g. sitting, walking, etc).


About the raw data
------------------

The sensor data is contained in a zip file which will unzip to a folder "UCI HAR Dataset"

The root folder contains the following files:
1. activity_labels.txt: activity label 
2. features.txt: measured feature names 

There are two subfolders, "train" and "test", each containing 3 files: 
1. X_train/test: sensor readings
2. y_train/test: activity code
3. subject_train/test: subject code

About the script and output
---------------------------
All the processing are done via a script called run_analysis.R. 

The run_analysis.R performs the 5 steps required for the project.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The ouput, a tidy data set, is named "activity_data_mean.txt" which contains a tidy data set with mean values of 66 selected features grouped by each subject and each activity.

About the Code Book
-------------------
The CodeBook.md file contains description of the data elements and explains in detail the transformations performed, variables used and the resulting dataset.
