# Step 1: Merges the training and the test sets to create one data set.
# read in the train and test data
train_label <- read.table("UCI HAR Dataset/train/y_train.txt")
train_fea <- read.table("UCI HAR Dataset/train/x_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
test_label <- read.table("UCI HAR Dataset/test/y_test.txt")
test_fea <- read.table("UCI HAR Dataset/test/X_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
# merge the train data with its label and subject, 
# and the same with test data
train <- cbind(train_subject, train_label, train_fea)
test <- cbind(test_subject, test_label, test_fea)

# merge the train and test
dat <- rbind(train,test)

# Step 2: Extracts only the measurements on the mean and standard deviation 
# for each measurement. 

# read in the measurement data
measurements <- read.table("UCI HAR Dataset/features.txt")
# find the index of the mean and std 
index <- grep("mean|std", measurements[,2])
# extract the subset of the mean and std measurements
measurements_sub <- measurements[index,2]

# add the activity column
index <- c(1,2, index+2)

# extract the subset
datsub <- dat[,index]

# Step 3: Uses descriptive activity names to name the activities in the data set
act_table <- read.table("UCI HAR Dataset/activity_labels.txt")
datsub[,2] <- sub("1",act_table[1,2], datsub[,2])
datsub[,2] <- sub("2",act_table[2,2], datsub[,2])
datsub[,2] <- sub("3",act_table[3,2], datsub[,2])
datsub[,2] <- sub("4",act_table[4,2], datsub[,2])
datsub[,2] <- sub("5",act_table[5,2], datsub[,2])
datsub[,2] <- sub("6",act_table[6,2], datsub[,2])

# Step 4: Appropriately labels the data set with descriptive variable names. 
names(datsub) <- c("subject","activity",as.character(measurements_sub))

# Step 5: From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
names_back <- names(datsub)
res <- aggregate(datsub[,3:dim(datsub)[2]],list(datsub$subject,datsub$activity),mean)
names(res)<-names_back

write.table(x = res, file = "tidydat.txt", row.name = FALSE)
