## README file for Getting and Cleaning Data course project.

The files included with this README are:
run_analysis.R
tidyData.txt
codebook.md


======================
run_analysis.R
======================

The included script run_any.R downloads, unzips, and reads in the UCI Machine Learning Repository's data set "Human Activity Recognition Using Smartphones".  It then combines the training and test set data into a single data frame.  It extracts only the variables that are means and standard deviations on each measurement.  It then descriptively labels each activity in accordance with the information in the "activity_labels" key file accompanying the data.  It assigns descriptive names to the variables.  The data frame created is:
 togMeanStd
It also creates and independent data set with the averages of these variables and descriptively labels them.  This data frame is:
 summaryData
Finally, it writes the two data frames to a single text file:
 tidyData.txt

Type source(“run_analysis.R”) into R to run the script.  Further details can be found in the comments in the script.


======================
tidyData.txt
======================

A text file of fixed width columns containing first, the togMeanStd data frame, and second the summaryData data frame, both in fixed-width columns.  The data frames are described about in the run_analysis.R description.


======================
codebook.md
======================

This codebook explains the variables in the data set.



This project makes use of:

The UCI Machine Learning Repository's

Human Activity Recognition Using Smartphones Dataset
Version 1.0

created by:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
at:
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.

found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip