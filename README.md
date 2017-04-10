Codebook of tidy (condensed) data of Samsung portable movement Data
===================================================================

(This data set is based on the data set distributed in relation to the Coursera class "Getting & Cleaning data". The orignal dataset has been distributed under http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

This Codebook document focuses on the contained variables and transformations applied to the original source dat. For more information on the source data please refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Variables
---------

The data set "tidy_dataset.txt" contains the following variables.

1. Subject
2.	Activity
3.	Mean_tBodyAcc-mean()-X
4.	Mean_tBodyAcc-mean()-Y
5.	Mean_tBodyAcc-mean()-Z
6.	Mean_tBodyAcc-std()-X
7.	Mean_tBodyAcc-std()-Y
8.	Mean_tBodyAcc-std()-Z
9.	Mean_tGravityAcc-mean()-X
10.	Mean_tGravityAcc-mean()-Y
11.	Mean_tGravityAcc-mean()-Z
12.	Mean_tGravityAcc-std()-X
13.	Mean_tGravityAcc-std()-Y
14.	Mean_tGravityAcc-std()-Z
15.	Mean_tBodyAccJerk-mean()-X
16.	Mean_tBodyAccJerk-mean()-Y
17.	Mean_tBodyAccJerk-mean()-Z
18.	Mean_tBodyAccJerk-std()-X
19.	Mean_tBodyAccJerk-std()-Y
20.	Mean_tBodyAccJerk-std()-Z
21.	Mean_tBodyGyro-mean()-X
22.	Mean_tBodyGyro-mean()-Y
23.	Mean_tBodyGyro-mean()-Z
24.	Mean_tBodyGyro-std()-X
25.	Mean_tBodyGyro-std()-Y
26.	Mean_tBodyGyro-std()-Z
27.	Mean_tBodyGyroJerk-mean()-X
28.	Mean_tBodyGyroJerk-mean()-Y
29.	Mean_tBodyGyroJerk-mean()-Z
30.	Mean_tBodyGyroJerk-std()-X
31.	Mean_tBodyGyroJerk-std()-Y
32.	Mean_tBodyGyroJerk-std()-Z
33.	Mean_tBodyAccMag-mean()
34.	Mean_tBodyAccMag-std()
35.	Mean_tGravityAccMag-mean()
36.	Mean_tGravityAccMag-std()
37.	Mean_tBodyAccJerkMag-mean()
38.	Mean_tBodyAccJerkMag-std()
39.	Mean_tBodyGyroMag-mean()
40.	Mean_tBodyGyroMag-std()
41.	Mean_tBodyGyroJerkMag-mean()
42.	Mean_tBodyGyroJerkMag-std()
43.	Mean_fBodyAcc-mean()-X
44.	Mean_fBodyAcc-mean()-Y
45.	Mean_fBodyAcc-mean()-Z
46.	Mean_fBodyAcc-std()-X
47.	Mean_fBodyAcc-std()-Y
48.	Mean_fBodyAcc-std()-Z
49.	Mean_fBodyAccJerk-mean()-X
50.	Mean_fBodyAccJerk-mean()-Y
51.	Mean_fBodyAccJerk-mean()-Z
52.	Mean_fBodyAccJerk-std()-X
53.	Mean_fBodyAccJerk-std()-Y
54.	Mean_fBodyAccJerk-std()-Z
55.	Mean_fBodyGyro-mean()-X
56.	Mean_fBodyGyro-mean()-Y
57.	Mean_fBodyGyro-mean()-Z
58.	Mean_fBodyGyro-std()-X
59.	Mean_fBodyGyro-std()-Y
60.	Mean_fBodyGyro-std()-Z
61.	Mean_fBodyAccMag-mean()
62.	Mean_fBodyAccMag-std()
63.	Mean_fBodyBodyAccJerkMag-mean()
64.	Mean_fBodyBodyAccJerkMag-std()
65.	Mean_fBodyBodyGyroMag-mean()
66.	Mean_fBodyBodyGyroMag-std()
67.	Mean_fBodyBodyGyroJerkMag-mean()
68.	Mean_fBodyBodyGyroJerkMag-std()

For each original column xxx_std() or xxx_mean() a corresponding variable Mean_xxx_std() and Mean_xxx_mean() have been included in the current dataset.

Data
====
This data set is based on the data set distributed in relation to the Coursera class "Getting & Cleaning data". The orignal dataset has been distributed under http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

Each line in the data corresponds shows the mean of all observations per subject and activity for all variables.


Transformations
=================

The data contains mean values of the original data for each subject and activity.

In particular for the creation of this data set the following transformations have been applied:

1. Training and Test sets have been merged into one data set
2. Only the measurements on the mean and standard deviation for each measurement have been isolated.
3. Numeric activity names in the data set have been replaced by their corresponding textual representation
4. The dataset has been amended with with descriptive variable names
5. For each Activity and Subject a mean values has been calculated. For each original column xxx_std() or xxx_mean() a corresponding variable Mean_xxx_std() and Mean_xxx_mean() have been included in the current dataset.
