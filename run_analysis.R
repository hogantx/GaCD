library(plyr)

download_data = function() {
	### Create directory
	if(!file.exists("GaCD")) {
	dir.create("GaCD")
	}

	setwd("./GaCD")

	### Download and unzip data
	fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	message("Downloading data")
	download.file(fileUrl, destfile = "UCI_HAR_data.zip")
	unzip("UCI_HAR_data.zip")
	
	### Note date file downloaded
	dateDownloaded = date()
}

download_data()

merge_data = function() {
	### Read files
	message("Begin reading text files")
	x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
	y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
	subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
	x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
	y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
	subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
	message("Completed reading text files")

	### Merge files
	message("Merge files")
	train <- cbind(x_train, y_train, subject_train)
	summary(train[, 562])	
	summary(train[, 563])	

	test <- cbind(x_test, y_test, subject_test)
	summary(test[, 562])	
	summary(test[, 563])	

	merged <- rbind(train, test)
	summary(merged[, 562])	
	summary(merged[, 563])	

	message("File 'merged' completed")

	### Create column names for merged 
	features <<- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
	head(features$V2)
	str(features$V2)
	names(merged) <- c(features$V2, "y", "subject")
	merged <<- merged
}

merge_data()

reduce_data = function() {
	### Reduce data set to those only including mean or std
	### These are the columns to include:
	mean_col <- grep("mean", features$V2)
	std_col <- grep("std", features$V2)
	Mean_col <- grep("Mean", features$V2)
	reduced_col <- unique(c(mean_col, std_col, Mean_col, 562, 563))
	reduced_merged <- merged[, (reduced_col)]
	reduced_merged <- reduced_merged[, -(84:86)]
	reduced_merged <<- reduced_merged
}

reduce_data()
class(reduced_merged$y)


add_activity = function () {
	### Adds descriptive activity name to reduced table
	### based on column 'reduced_merged$y'
	activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
	reduced_merged$activity <<- activity_labels$V2[reduced_merged$y]
}

add_activity()


descriptive_variables = function () {
	temp <- names(reduced_merged)
	temp <- tolower(temp)
	temp <- gsub("-", "_", temp)
	temp <- sub("\\(", "", temp)
	temp <- sub("\\)", "", temp)
	names(reduced_merged) <- temp
	reduced_merged <<- reduced_merged
}

tidy <- ddply(reduced_merged, .(subject, activity), function(x) colMeans(x[,1:83]))

write.table(tidy, "tidy.txt", row.names = FALSE)

