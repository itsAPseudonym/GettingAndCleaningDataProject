# Getting and Cleaning Data, Course Project

# This script downloads, unzips, and reads in the UCI Machine Learning Repository's data
# set "Human Activity Recognition Using Smartphones".  It then combines the training and
# test set data into a single data frame.  It extracts only the variables that are means
# and standard deviations on each measurement.  It then descriptively labels each activity
# in accordance with the information in the "activity_labels" key file accompanying the
# data.  It assigns descriptive names to the variables.  The data frame created is:
# togMeanStd
# It also creates and independent data set with the averages of these variables and
# descriptively labels them.  This data frame is:
# summaryData
# Finally, it writes the two data frames to a single text file:
# tidyData.txt

# To run this code, use setwd() to set the working directory to be the same as the
# directory of this script, and type source("run_analysis.R") in the R interface.

# This script uses the plyr package.  If necessary run install.packages("plyr")
require(plyr)

# The directions do not say either way, so this part of the code will download the data 
# into the working directory and unzip the file into the folder "UCI HAR Dataset".  The
# subsequent code assumes that is where to find the relevant files, so if the data has
# already been downloaded and unzipped, just comment out this section and make sure the
# UCI HAR Dataset folder is in the working directory along with this script.

fileUrl <- paste("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%",
            "20HAR%20Dataset.zip", sep="")
download.file(fileUrl, destfile = "UCI HAR Dataset.zip", method = "curl",
              quiet = TRUE)
dateDownloaded <- date()
unzip("UCI HAR Dataset.zip", exdir = "./")


# This will extract the training set data
subjTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")

# This will extract the test set data
subjTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")


# Bind the training set data together
train <- cbind(subjTrain, yTrain, xTrain)
# The cbind will leave 3 columns called "V1" so to remove ambiguity, give the first 2
# columns temporary names.
colnames(train)[1] <- "Vs"
colnames(train)[2] <- "Va"

# Bind the test set data together
test <- cbind(subjTest, yTest, xTest)
colnames(test)[1] <- "Vs"
colnames(test)[2] <- "Va"

# Combine the training and test sets into a single data frame.
# This is STEP 1 of the assigment
together <- rbind(train, test)

# Extract the 66 columns of mean and std deviation variables.
# This is set by hand, since not all column names containing "mean" correspond to 
# means of other variables.
meanAndStdIndices <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,
                       240:241,253:254,266:271,345:350,424:429,503:504,516:517,
                       529:530,542:543) 

# Indices to keep in the tidy data set.
keepIndices <- c(1,2, 2+meanAndStdIndices)

# Extracts only the mean and std deviation variables.
# This is STEP 2 of the assignment
togMeanStd <- together[,keepIndices]

# Replaces the activity numbers with the corresponding activity names.
# This is STEP 3 of the assignment
togMeanStd$Va <-factor(togMeanStd$Va,levels = c(1:6), labels = c("WALKING", 
                                                                 "WALKING_UPSTAIRS", 
                                                                 "WALKING_DOWNSTAIRS", 
                                                                 "SITTING", 
                                                                 "STANDING", 
                                                                 "LAYING"))

# Sets up a list of tidy data descriptive variable names.
myColVarNames <- c("Time.Mean.BodyAccel.X", "Time.Mean.BodyAccel.Y", 
                   "Time.Mean.BodyAccel.Z", "Time.StdDev.BodyAccel.X",
                   "Time.StdDev.BodyAccel.Y", "Time.StdDev.BodyAccel.Z",
                   "Time.Mean.GravityAccel.X", "Time.Mean.GravityAccel.Y",
                   "Time.Mean.GravityAccel.Z", "Time.StdDev.GravityAccel.X",
                   "Time.StdDev.GravityAccel.Y", "Time.StdDev.GravityAccel.Z",
                   "Time.Mean.BodyAccelJerk.X", "Time.Mean.BodyAccelJerk.Y",
                   "Time.Mean.BodyAccelJerk.Z", "Time.StdDev.BodyAccelJerk.X",
                   "Time.StdDev.BodyAccelJerk.Y", "Time.StdDev.BodyAccelJerk.Z",
                   "Time.Mean.BodyGyro.X", "Time.Mean.BodyGyro.Y",
                   "Time.Mean.BodyGyro.Z", "Time.StdDev.BodyGyro.X",
                   "Time.StdDev.BodyGyro.Y", "Time.StdDev.BodyGyro.Z",
                   "Time.Mean.BodyGyroJerk.X", "Time.Mean.BodyGyroJerk.Y",
                   "Time.Mean.BodyGyroJerk.Z", "Time.StdDev.BodyGyroJerk.X",
                   "Time.StdDev.BodyGyroJerk.Y","Time.StdDev.BodyGyroJerk.Z",
                   "Time.Mean.BodyAccMagnitude","Time.StdDev.BodyAccMagnitude",
                   "Time.Mean.GravityAccMagnitude","Time.StdDev.GravityAccMagnitude",
                   "Time.Mean.BodyAccJerkMagnitude","Time.StdDev.BodyAccJerkMagnitude",
                   "Time.Mean.BodyGyroMagnitude","Time.StdDev.BodyGyroMagnitude",
                   "Time.Mean.BodyGyroJerkMagnitude","Time.StdDev.BodyGyroJerkMagnitude",
                   "Freq.Mean.BodyAccel.X","Freq.Mean.BodyAccel.Y",
                   "Freq.Mean.BodyAccel.Z", "Freq.StdDev.BodyAccel.X",
                   "Freq.StdDev.BodyAccel.Y","Freq.StdDev.BodyAccel.Z",
                   "Freq.Mean.BodyAccelJerk.X","Freq.Mean.BodyAccelJerk.Y",
                   "Freq.Mean.BodyAccelJerk.Z", "Freq.StdDev.BodyAccelJerk.X",
                   "Freq.StdDev.BodyAccelJerk.Y","Freq.StdDev.BodyAccelJerk.Z",
                   "Freq.Mean.BodyGyro.X","Freq.Mean.BodyGyro.Y", 
                   "Freq.Mean.BodyGyro.Z", "Freq.StdDev.BodyGyro.X",
                   "Freq.StdDev.BodyGyro.Y","Freq.StdDev.BodyGyro.Z",        
                   "Freq.Mean.BodyAccMagnitude","Freq.StdDev.BodyAccMagnitude",
                   "Freq.Mean.BodyAccJerkMagnitude","Freq.StdDev.BodyAccJerkMagnitude",
                   "Freq.Mean.BodyGyroMagnitude","Freq.StdDev.BodyGyroMagnitude",
                   "Freq.Mean.BodyGyroJerkMagnitude","Freq.StdDev.BodyGyroJerkMagnitude")

# Labels the columns with descriptive variable names.
# This is STEP 4 of the assignment
colnames(togMeanStd) <- c("Subject", "Activity", myColVarNames)

# The final data frame containing all of the mean and standard deviation variables is
# called "togMeanStd".

# Creates a new independent data frame with only the summary data, that is the average of
# all the variables in togMeanStd for each subject and each activity.
# This STEP 5 of the assigmnent
summaryData <- arrange(togMeanStd,Subject,Activity)
summaryData <- ddply(summaryData, c("Subject","Activity"), numcolwise(mean))

newColVarNames <- paste("Average", myColVarNames,sep=".")

# Labels the variables as the averages of the previous variables.
colnames(summaryData) <- c("Subject", "Activity",newColVarNames)

# The resulting data frames are:
# togMeanStd - the data frame containing all the mean and std deviation variables
# summaryData - the data frame containing only the averages for each subject and each
# activity.
# The first chunk of each can be inspected with the function head().

# Writes the data frames to a file, following a suggestion from
# http://stackoverflow.com/questions/12698946/insert-a-blank-row-writing-a-file-from-a
# -list-using-cat:
#options(max.print = 1000000)
cat(capture.output(summaryData), file = 'tidyData.txt', sep = '\n')
