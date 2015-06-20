## Course Project for Coursera Getting and Cleaning Data
## Project requirements
## 1 Merges the training and the test sets to create one data set.
## 2 Extracts only the measurements on the mean and standard deviation for each measurement.
## 3 Uses descriptive activity names to name the activities in the data set
## 4 Appropriately labels the data set with descriptive variable names.
## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)

## 0 Getting data

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", dest="accdata.zip", mode="wb")
unzip("accdata.zip", exdir=".")
setwd("UCI HAR Dataset")

## 1 Merge the training and the test sets to create one data set

# read train data
x_train<-read.table("train\\X_train.txt")
y_train<-read.table("train\\Y_train.txt")
subject_train<-read.table("train\\subject_train.txt")

# read test data
x_test<-read.table("test\\X_test.txt")
y_test<-read.table("test\\Y_test.txt")
subject_test<-read.table("test\\subject_test.txt")

# merge train and test data
x_data<-rbind(x_train, x_test)
y_data<-rbind(y_train, y_test)
subject_data<-rbind(subject_train, subject_test)


## 2 Extracts only the measurements on the mean and standard deviation for each measurement.

# get activity features
features<-read.table("features.txt")

# apply names to data
names(x_data) <- features[,2]

# extract only mean and standard deviation data
x_data_mean_std<-x_data[,grepl("mean\\(|std\\(", names(x_data))]


## 3 Uses descriptive activity names to name the activities in the data set
# read activity labels
activity_labels<-read.table("activity_labels.txt")

# substitue activity code with activity labels
y_data[,1] <- activity_labels[y_data[, 1], 2]

# finally merge activity data with activity and subject columns
activity_data_mean_std<-cbind(x_data_mean_std,y_data,subject_data)


## 4 Appropriately labels the data set with descriptive variable names.

# add column headings to activity and subject columns
names(activity_data_mean_std)[67:68] <- c("Activity","Subject")

# remove brackets from all column headings
names(activity_data_mean_std) <- gsub('\\(|\\)',"",names(activity_data_mean_std), perl = TRUE)

# standardize names and replace special characters
names(activity_data_mean_std) <- make.names(names(activity_data_mean_std))

# change short names to more descriptive names and correct errors (e.g. BodyBody)
names(activity_data_mean_std) <- gsub('Acc',"Acceleration",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('GyroJerk',"AngularAcceleration",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('Gyro',"AngularSpeed",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('Mag',"Magnitude",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('^t',"TimeDomain.",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('^f',"FrequencyDomain.",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('\\.mean',".Mean",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('\\.std',".StandardDeviation",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('Freq\\.',"Frequency.",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('Freq$',"Frequency",names(activity_data_mean_std))
names(activity_data_mean_std) <- gsub('BodyBody',"Body",names(activity_data_mean_std))


## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# create tidy data by computing mean value of selected data grouped by subject and activity
tidy_data <- ddply(activity_data_mean_std, .(Subject, Activity), function(x) colMeans(x[, 1:66]))

# write the table to a text file
write.table(tidy_data, "activity_data_mean.txt", row.name=FALSE)