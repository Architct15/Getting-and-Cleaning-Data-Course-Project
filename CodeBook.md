# Code Book for Variables and Summaries 
## Overview of summaries computed

The tidy data set is contained in the file "activity_data_mean.txt". It has a header row with descriptive names. Each row contains a summary which are the average values for 66 variables. The 66 variables are selected from the original 560 feature variables and they represent the mean and standard deviation values of the various measurements. It is grouped by 30 subjects and for each subject by 6 activities into a total of 180 rows. The source data set contains 10299 rows.

##Variables in the tidy data set 

There are 68 columns in the tidy data set. The first two columns, Subject and Activity, are used to factor the mean values of the rest of the 66 variables.

1. Subject - An integer assigned to the test subject. There are 30 subjects participating in the test.
2. Activity - A string describing the activity (e.g. Sitting, Walking)

The following 66 variables have been translated such that they are self-descriptive. They are selected from the original 560 feature variables and they contain the mean and standard deviation values of the various measurements.

3. TimeDomain.BodyAcceleration.Mean.X
4. TimeDomain.BodyAcceleration.Mean.Y
5. TimeDomain.BodyAcceleration.Mean.Z
6. TimeDomain.BodyAcceleration.StandardDeviation.X
7. TimeDomain.BodyAcceleration.StandardDeviation.Y
8. TimeDomain.BodyAcceleration.StandardDeviation.Z
9. TimeDomain.GravityAcceleration.Mean.X
10. TimeDomain.GravityAcceleration.Mean.Y
11. TimeDomain.GravityAcceleration.Mean.Z
12. TimeDomain.GravityAcceleration.StandardDeviation.X
13. TimeDomain.GravityAcceleration.StandardDeviation.Y
14. TimeDomain.GravityAcceleration.StandardDeviation.Z
15. TimeDomain.BodyAccelerationJerk.Mean.X
16. TimeDomain.BodyAccelerationJerk.Mean.Y
17. TimeDomain.BodyAccelerationJerk.Mean.Z
18. TimeDomain.BodyAccelerationJerk.StandardDeviation.X
19. TimeDomain.BodyAccelerationJerk.StandardDeviation.Y
20. TimeDomain.BodyAccelerationJerk.StandardDeviation.Z
21. TimeDomain.BodyAngularSpeed.Mean.X
22. TimeDomain.BodyAngularSpeed.Mean.Y
23. TimeDomain.BodyAngularSpeed.Mean.Z
24. TimeDomain.BodyAngularSpeed.StandardDeviation.X
25. TimeDomain.BodyAngularSpeed.StandardDeviation.Y
26. TimeDomain.BodyAngularSpeed.StandardDeviation.Z
27. TimeDomain.BodyAngularAcceleration.Mean.X
28. TimeDomain.BodyAngularAcceleration.Mean.Y
29. TimeDomain.BodyAngularAcceleration.Mean.Z
30. TimeDomain.BodyAngularAcceleration.StandardDeviation.X
31. TimeDomain.BodyAngularAcceleration.StandardDeviation.Y
32. TimeDomain.BodyAngularAcceleration.StandardDeviation.Z
33. TimeDomain.BodyAccelerationMagnitude.Mean
34. TimeDomain.BodyAccelerationMagnitude.StandardDeviation
35. TimeDomain.GravityAccelerationMagnitude.Mean
36. TimeDomain.GravityAccelerationMagnitude.StandardDeviation
37. TimeDomain.BodyAccelerationJerkMagnitude.Mean
38. TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation
39. TimeDomain.BodyAngularSpeedMagnitude.Mean
40. TimeDomain.BodyAngularSpeedMagnitude.StandardDeviation
41. TimeDomain.BodyAngularAccelerationMagnitude.Mean
42. TimeDomain.BodyAngularAccelerationMagnitude.StandardDeviation
43. FrequencyDomain.BodyAcceleration.Mean.X
44. FrequencyDomain.BodyAcceleration.Mean.Y
45. FrequencyDomain.BodyAcceleration.Mean.Z
46. FrequencyDomain.BodyAcceleration.StandardDeviation.X
47. FrequencyDomain.BodyAcceleration.StandardDeviation.Y
48. FrequencyDomain.BodyAcceleration.StandardDeviation.Z
49. FrequencyDomain.BodyAccelerationJerk.Mean.X
50. FrequencyDomain.BodyAccelerationJerk.Mean.Y
51. FrequencyDomain.BodyAccelerationJerk.Mean.Z
52. FrequencyDomain.BodyAccelerationJerk.StandardDeviation.X
53. FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Y
54. FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Z
55. FrequencyDomain.BodyAngularSpeed.Mean.X
56. FrequencyDomain.BodyAngularSpeed.Mean.Y
57. FrequencyDomain.BodyAngularSpeed.Mean.Z
58. FrequencyDomain.BodyAngularSpeed.StandardDeviation.X
59. FrequencyDomain.BodyAngularSpeed.StandardDeviation.Y
60. FrequencyDomain.BodyAngularSpeed.StandardDeviation.Z
61. FrequencyDomain.BodyAccelerationMagnitude.Mean
62. FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation
63. FrequencyDomain.BodyAccelerationJerkMagnitude.Mean
64. FrequencyDomain.BodyAccelerationJerkMagnitude.StandardDeviation
65. FrequencyDomain.BodyAngularSpeedMagnitude.Mean
66. FrequencyDomain.BodyAngularSpeedMagnitude.StandardDeviation
67. FrequencyDomain.BodyAngularAccelerationMagnitude.Mean
68. FrequencyDomain.BodyAngularAccelerationMagnitude.StandardDeviation



##Data source
The source data files contains the motion sensor data (e.g. rotation, accleration) from 30 test subjects collected using Samsung Galaxy S2 and compute their average for 6 different activities(e.g. sitting, walking, etc).

The sensor data is contained in a zip file which will unzip to a folder "UCI HAR Dataset"

The root folder contains the following files:

* activity_labels.txt: activity label 
* features.txt: measured feature names 

There are two subfolders, "train" and "test", each containing 3 files: 
* X_train/test: sensor readings
* y_train/test: activity code
* subject_train/test: subject code

This dataset is generated from the "Human Activity Recognition Using Smartphones Data Set" available from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


#  Feature variable names for the data source

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
