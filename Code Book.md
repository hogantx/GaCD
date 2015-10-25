#Getting and Cleaning Data
##Code Book

This code book describes the tidy.txt file created for the Getting and Cleaning Data course project.

## Data
The data is based on downloaded data.
Description of the initial data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

30 subjects performed 6 activities.
These activities were monitored and recorded with a smart phone.
This data was partitioned into test and train data sets.
This data included 561 measurements.


## Code and Processing
The code downloads the data sets.
Next, the code merges the train and test data sets.
For the sake of parsimony, the code removes any variables not mean or standard deviation.
This reduces the data from 561 variables to 81 variables.
The variables are edited to be more descriptive.

Lastly, a tidy set is created.
The tidy set is grouped by subject and activity.
For each subject and activity, the mean of the (remaining mean/std) variable is created.

## Identifiers
the first two columns of the data sets are the identifiers:
subject _i.e., 1 through 30_
activity _i.e., LAYING, SITTING, etc., _


## Measurements
For each subject and activity, the mean of the measurement is shown.

The measurements are these:
* tbodyacc_mean_x
* tbodyacc_mean_y
* tbodyacc_mean_z
* tgravityacc_mean_x
* tgravityacc_mean_y
* tgravityacc_mean_z
* tbodyaccjerk_mean_x
* tbodyaccjerk_mean_y
* tbodyaccjerk_mean_z
* tbodygyro_mean_x
* tbodygyro_mean_y
* tbodygyro_mean_z
* tbodygyrojerk_mean_x
* tbodygyrojerk_mean_y
* tbodygyrojerk_mean_z
* tbodyaccmag_mean
* tgravityaccmag_mean
* tbodyaccjerkmag_mean
* tbodygyromag_mean
* tbodygyrojerkmag_mean
* fbodyacc_mean_x
* fbodyacc_mean_y
* fbodyacc_mean_z
* fbodyacc_meanfreq_x
* fbodyacc_meanfreq_y
* fbodyacc_meanfreq_z
* fbodyaccjerk_mean_x
* fbodyaccjerk_mean_y
* fbodyaccjerk_mean_z
* fbodyaccjerk_meanfreq_x
* fbodyaccjerk_meanfreq_y
* fbodyaccjerk_meanfreq_z
* fbodygyro_mean_x
* fbodygyro_mean_y
* fbodygyro_mean_z
* fbodygyro_meanfreq_x
* fbodygyro_meanfreq_y
* fbodygyro_meanfreq_z
* fbodyaccmag_mean
* fbodyaccmag_meanfreq
* fbodybodyaccjerkmag_mean
* fbodybodyaccjerkmag_meanfreq
* fbodybodygyromag_mean
* fbodybodygyromag_meanfreq
* fbodybodygyrojerkmag_mean
* fbodybodygyrojerkmag_meanfreq
* tbodyacc_std_x
* tbodyacc_std_y
* tbodyacc_std_z
* tgravityacc_std_x
* tgravityacc_std_y
* tgravityacc_std_z
* tbodyaccjerk_std_x
* tbodyaccjerk_std_y
* tbodyaccjerk_std_z
* tbodygyro_std_x
* tbodygyro_std_y
* tbodygyro_std_z
* tbodygyrojerk_std_x
* tbodygyrojerk_std_y
* tbodygyrojerk_std_z
* tbodyaccmag_std
* tgravityaccmag_std
* tbodyaccjerkmag_std
* tbodygyromag_std
* tbodygyrojerkmag_std
* fbodyacc_std_x
* fbodyacc_std_y
* fbodyacc_std_z
* fbodyaccjerk_std_x
* fbodyaccjerk_std_y
* fbodyaccjerk_std_z
* fbodygyro_std_x
* fbodygyro_std_y
* fbodygyro_std_z
* fbodyaccmag_std
* fbodybodyaccjerkmag_std
* fbodybodygyromag_std
* fbodybodygyrojerkmag_std
* angletbodyaccmean,gravity
* angletbodyaccjerkmean,gravitymean)
* angletbodygyromean,gravitymean
* angletbodygyrojerkmean,gravitymean
