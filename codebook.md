## Code Book for Getting and Cleaning Data course project.

Note that the features taken from the UCI dataset have already bee normalized and bounded within [-1,1], so there are no units for any of these variables.


For the summaryData data frame output in the tidyData.txt file:


The subject variable:

Subject

A variable encoding the test subject individual.  There are 30 test subjects, numbered 1 to 30.


The activity variable:

Activity

A factor variable indicating the activity the individual was engaged in.  The values are:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


The time variables:

These measurements come from the accelerometer and gyroscope 3-axial raw signals for accelerometer and gyroscope in the x,y, and z directinos.  According to the information given with the UCI dataset, the time domain signals “were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.” The acceleration signal was separated into components due to body motion and gravitational acceleration by: “using another low pass Butterworth filter with a corner frequency of 0.3 Hz.”
(Quotes from UCI Dataset “features_info.txt”, see footnote)

Please note:  All of the following variables are *AVERAGES* of the described variables, for each subject and activity.

Average.Time.Mean.BodyAccel.X
Average.Time.Mean.BodyAccel.Y
Average.Time.Mean.BodyAccel.Z

The means of the time domain body acceleration signals in the x, y, and z directions.


Average.Time.StdDev.BodyAccel.X
Average.Time.StdDev.BodyAccel.Y
Average.Time.StdDev.BodyAccel.Z

The standard deviations of the time domain body acceleration signals in the x, y, and z directions


Average.Time.Mean.GravityAccel.X
Average.Time.Mean.GravityAccel.Y
Average.Time.Mean.GravityAccel.Z

The means of the time domain gravitational acceleration signals in the x, y, and z directions.


Average.Time.StdDev.GravityAccel.X
Average.Time.StdDev.GravityAccel.Y
Average.Time.StdDev.GravityAccel.Z

The standard deviations of the time domain gravitational acceleration signals in the x, y, and z directions.


Average.Time.Mean.BodyAccelJerk.X
Average.Time.Mean.BodyAccelJerk.Y
Average.Time.Mean.BodyAccelJerk.Z

The mean of the time domain jerk (derivative) of body acceleration in the x, y, and z directions.


Average.Time.StdDev.BodyAccelJerk.X
Average.Time.StdDev.BodyAccelJerk.Y
Average.Time.StdDev.BodyAccelJerk.Z

The standard deviations of the time domain jerk (derivative) of body acceleration in the x, y, and z directions.


Average.Time.Mean.BodyGyro.X
Average.Time.Mean.BodyGyro.Y
Average.Time.Mean.BodyGyro.Z

The mean body gyroscope measurement in the time domain in the x, y, and z directions.


Average.Time.StdDev.BodyGyro.X
Average.Time.StdDev.BodyGyro.Y
Average.Time.StdDev.BodyGyro.Z

The standard deviation body gyroscope measurement in the time domain in the x, y, and z directions.


Average.Time.Mean.BodyGyroJerk.X
Average.Time.Mean.BodyGyroJerk.Y
Average.Time.Mean.BodyGyroJerk.Z

The mean of the time domain rotational jerk (derivative) of acceleration about the x, y, and z directions.


Average.Time.StdDev.BodyGyroJerk.X
Average.Time.StdDev.BodyGyroJerk.Y
Average.Time.StdDev.BodyGyroJerk.Z

The standard deviation of the time domain rotational jerk (derivative) of acceleration about the x, y, and z directions.


Average.Time.Mean.BodyAccMagnitude

Mean of time domain body acceleration magnitude measurements.


Average.Time.StdDev.BodyAccMagnitude

Standard deviation of time domain body acceleration magnitude measurements.


Average.Time.Mean.GravityAccMagnitude

Mean of time domain gravitational acceleration magnitude measurements.


Average.Time.StdDev.GravityAccMagnitude

Standard deviation of time domain gravitational acceleration magnitude measurements.


Average.Time.Mean.BodyAccJerkMagnitude

The mean of the time domain magnitude of jerk (derivative) of body acceleration.


Average.Time.StdDev.BodyAccJerkMagnitude

The standard deviation of the time domain magnitude of jerk (derivative) of body acceleration.


Average.Time.Mean.BodyGyroMagnitude

The mean of the magnitude of body gyroscope measurement in the time domain.


Average.Time.StdDev.BodyGyroMagnitude

The standard deviation of the magnitude of body gyroscope measurement in the time domain.


Average.Time.Mean.BodyGyroJerkMagnitude

The mean of the time domain magnitude of rotational jerk (derivative) of body acceleration.


Average.Time.StdDev.BodyGyroJerkMagnitude

The standard deviation of the time domain magnitude of rotational jerk (derivative) of body acceleration.




The frequency variables:

The Fast Fourier Transform of the time domain gives frequency domain data.

Please note:  All of the following variables are *AVERAGES* of the described variables, for each subject and activity.


Average.Freq.Mean.BodyAccel.X
Average.Freq.Mean.BodyAccel.Y
Average.Freq.Mean.BodyAccel.Z

The means of the frequency domain body acceleration signals in the x, y, and z directions.


Average.Freq.StdDev.BodyAccel.X
Average.Freq.StdDev.BodyAccel.Y
Average.Freq.StdDev.BodyAccel.Z

The standard deviations of the frequency domain body acceleration signals in the x, y, and z directions.


Average.Freq.Mean.BodyAccelJerk.X
Average.Freq.Mean.BodyAccelJerk.Y
Average.Freq.Mean.BodyAccelJerk.Z

The mean of the frequency domain jerk (derivative) of body acceleration in the x, y, and z directions.


Average.Freq.StdDev.BodyAccelJerk.X
Average.Freq.StdDev.BodyAccelJerk.Y
Average.Freq.StdDev.BodyAccelJerk.Z

The standard deviation of the frequency domain jerk (derivative) of body acceleration in the x, y, and z directions.


Average.Freq.Mean.BodyGyro.X
Average.Freq.Mean.BodyGyro.Y
Average.Freq.Mean.BodyGyro.Z

The mean body gyroscope measurement in the frequency domain in the x, y, and z directions.


Average.Freq.StdDev.BodyGyro.X
Average.Freq.StdDev.BodyGyro.Y
Average.Freq.StdDev.BodyGyro.Z

The standard deviation body gyroscope measurement in the frequency domain in the x, y, and z directions.


Average.Freq.Mean.BodyAccMagnitude

Mean of frequency domain body acceleration magnitude measurements.


Average.Freq.StdDev.BodyAccMagnitude

Standard deviation of time domain body acceleration magnitude measurements.


Average.Freq.Mean.BodyAccJerkMagnitude

The mean of the frequency domain magnitude of jerk (derivative) of body acceleration.


Average.Freq.StdDev.BodyAccJerkMagnitude

The standard deviation of the frequency domain magnitude of jerk (derivative) of body acceleration.


Average.Freq.Mean.BodyGyroMagnitude

The mean of the magnitude of body gyroscope measurement in the frequency domain.


Average.Freq.StdDev.BodyGyroMagnitude

The standard deviation of the magnitude of body gyroscope measurement in the frequency domain.


Average.Freq.Mean.BodyGyroJerkMagnitude

The mean of the frequency domain magnitude of rotational jerk (derivative) of body acceleration.


Average.Freq.StdDev.BodyGyroJerkMagnitude

The standard deviation of the frequency domain magnitude of rotational jerk (derivative) of acceleration.







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
