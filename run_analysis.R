## set working directory
setwd("c:/Coursera/Getting and Cleaning Data/Project")
## Check/install required packages
if (!require("data.table")) {install.packages("data.table")}
if (!require("plyr")) {install.packages("plyr")}
require("data.table")
require(plyr)

## Get activity_labels and features
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Get only mean and standard deviation for each measurement status.
extract_features <- grepl("mean|std", features)

## Read test and train data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
names(X_test) = features

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train   <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(X_train)  <- features

# Extract the fields with mean and standard deviation measurement only.
X_test  <- X_test[,extract_features]
X_train <-X_train[,extract_features]

# Load activity and Subject labels
y_test[,2]      <- activity_labels[y_test[,1]]
names(y_test)   <- c("Activity_ID", "Activity_Label")
names(subject_test) <- "subject"

y_train[,2]     <- activity_labels[y_train[,1]]
names(y_train)  <- c("Activity_ID", "Activity_Label")
names(subject_train) <- "subject"

# Bind data
test_data  <- cbind(as.data.table(subject_test), y_test, X_test)
train_data <- cbind(as.data.table(subject_train), y_train, X_train)


# Merge test and train data (row merge)
data = rbind(test_data, train_data)
tidy_data <- ddply(data, .(subject,Activity_ID,Activity_Label), colwise(mean))
write.table(tidy_data, file = "./tidy_data.txt")