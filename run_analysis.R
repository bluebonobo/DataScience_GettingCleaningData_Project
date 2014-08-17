
# TO DO before submitting
# 
# remove setdir specific
# ensure that directory is setup as per instructions


# run this script from /UCI HAR Dataset
# set working directory to current folder
setwd(".")


############################################################################################### 
# Read the files
###############################################################################################

X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")
features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")

# I validate the dimensions of each dataframe
dim_X_test <- dim(X_test) 
dim_y_test <- dim(y_test)
dim_subject_test <- dim(subject_test)
dim_X_train <- dim(X_train)
dim_y_train <- dim(y_train)
dim_subject_train <- dim(subject_train)
dim_features <- dim(features)
dim_activity_labels <- dim(activity_labels)

############################################################################################### 
# Merge the training and the test sets to create one data set.  
############################################################################################### 

# Build the merged test set by adding columns (cbind) subject and y as first and second columns
# measurment columns follow (third column onwards) 
# dimension : 2947x563
test_all <- cbind(subject_test, y_test, X_test)
dim_test_all <- dim(test_all)

# Build the merged train set by adding columns (cbind) subject and y as first and second columns
# measurment columns follow (third column onwards)
# dimension : 7352x563
train_all <- cbind(subject_train, y_train, X_train)
dim_train_all <- dim(train_all)

# Build the merged set by adding test set rows (rbind) to train set 
# dimension : 10299x563
all <- rbind(train_all, test_all)
dim_all <- dim(all)

# I test the resulting dataset for NA values by using the na.fail(all) method call 
# As there were no errors returned by na.fail(all), I conclude are no NA in the dataframe
# na.fail(all)

###############################################################################################
# Appropriately labels the data set with descriptive variable names.  
###############################################################################################

# build vectory of features names
features <- features[,2]
# assign column names
names(all) <- c("subject", "activity", as.character(features))


###############################################################################################
# Uses descriptive activity names to name the activities in the data set.
###############################################################################################

# I overwrite $activity which is of int type with a descriptive activity name by looking up its name in activty labels
# Subsetting is used to perform this action on each activity 
all[all$activity==1,]$activity <- as.character(activity_labels[activity_labels$V1==1,]$V2)
all[all$activity==2,]$activity <- as.character(activity_labels[activity_labels$V1==2,]$V2)
all[all$activity==3,]$activity <- as.character(activity_labels[activity_labels$V1==3,]$V2)
all[all$activity==4,]$activity <- as.character(activity_labels[activity_labels$V1==4,]$V2)
all[all$activity==5,]$activity <- as.character(activity_labels[activity_labels$V1==5,]$V2)
all[all$activity==6,]$activity <- as.character(activity_labels[activity_labels$V1==6,]$V2)



###############################################################################################
# Extracts only the measurements on the mean and standard deviation for each measurement. 
###############################################################################################

# After reviewing the features names, I decided to include all features containing mean or std in their name.
# The matchcols method of the gdata package returns vectors of column names matching the terms provided
# Matching is case sensitive so we pass "Mean" and "mean". "std" only occurs in lower case form.
# Matchcols function help >> http://svitsrv25.epfl.ch/R-doc/library/gdata/html/matchcols.html
# Once columns are identified, I use subsetting to build the extract named allsub
# dimension : 10299x88

install.packages("gdata")
library("gdata")
colsubset<-matchcols(all, with=c("Mean", "mean", "std"), method="or")
allsub <- all[,names(all)%in% c("subject", "activity", colsubset$mean, colsubset$Mean, colsubset$std)]

dim_allsub <- dim(allsub)

###############################################################################################
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
###############################################################################################

# I use the aggregare method to group rows by Activity and Subject. 
# In this call, the method applies a the mean function to all variables in each group. 

aggdata <-aggregate(allsub, by=list(Activity = allsub$activity, Subject = allsub$subject), mean)
aggdata$subject <- NULL
aggdata$activity <- NULL

# Write the second data set to tidayset.txt file using row.names = FALSE 
write.table(aggdata,"./tidyset.txt", row.names = FALSE)

