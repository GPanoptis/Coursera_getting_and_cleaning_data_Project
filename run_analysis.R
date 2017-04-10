

# load the libraries
library(reshape2)

filename <- "getdata_dataset.zip"

# get the dataset and unzip it 
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# use descriptive activity names 
activity_labels      <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels[ ,2] <- as.character(activityLabels[ ,2])
features             <- read.table("UCI HAR Dataset/features.txt")
features[ ,2]        <- as.character(features[ ,2])

# extract only the measurements on the mean and standard 
# deviation for each measurement
features_wanted       <- grep(".*mean.*|.*std.*", features[ ,2])
features_wanted.names <- features[featuresWanted, 2]
features_wanted.names <- gsub('-mean', 'Mean', featuresWanted.names)
features_wanted.names <- gsub('-std', 'Std', featuresWanted.names)
features_wanted.names <- gsub('[-()]', '', featuresWanted.names)

### merge the training and the test sets to create one data set
# Load the datasets
train           <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresWanted]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects   <- read.table("UCI HAR Dataset/train/subject_train.txt")
train           <- cbind(trainSubjects, trainActivities, train)

test            <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWanted]
test_activities <- read.table("UCI HAR Dataset/test/Y_test.txt")
test_subjects   <- read.table("UCI HAR Dataset/test/subject_test.txt")
test            <- cbind(testSubjects, testActivities, test)

# merge them and add labels
merged <- rbind(train, test)
colnames(merged) <- c("subject", "activity", features_wanted.names)

# convert into factors the variables activities & subjects 
merged$activity <- factor(merged$activity, levels = activity_labels[,1], labels = activity_labels[,2])
merged$subject  <- as.factor(merged$subject)

merged.melted <- melt(merged, id = c("subject", "activity"))
merged.mean   <- dcast(merged.melted, subject + activity ~ variable, mean)

# export to a flat file
write.table(merged.mean, "tidy_dataset.txt", row.names = FALSE, quote = FALSE)



