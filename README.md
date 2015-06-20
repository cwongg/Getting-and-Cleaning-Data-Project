Database reference:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'
- Standard Deviation and Mean data.txt: Detailed data for standard deviation and mean variables
- Melted Standard Deviation and Mean data.txt: Melted dataset where each variable (standard deviations and means) are moved from columns to rows
- Summary by Activity and Subject.txt: Summary of each variable (standard deviations and means) by Activity and Subject


The following scripts are included in the repository:
======================================================

- run_analysis.R, that performs the following sequence of activities:
	- Reads training and test data
	- Combines the columns for subjects (subject_train/subject_test), training labels (y_train/y_test) and training set (x_train/y_train)
	- Merges test and training data into the variable 'data'
	- Updates the column names for 'data'.  Names for the variables are taken from the file features.txt
	- Adds a new column to 'data' that contains the names of the activities (taken from activity_labels, using the test label as the reference key), and stores the result in 'merged_data'
	- Filters only the columns related to mean and standard deviation, and stores the result in 'required_data'
	- Melts  'required_data' to transform all the mean and standard deviation variables from columns to rows, and stores the result in 'melted_data'
	- Calculates the mean of all the variables in 'melted_data' by Activity and Subject and stores it in 'summary_data'
	- Adds descriptive column names to 'summary data'
	- Writes the files to disk as text files
		- Standard Deviation and Mean data.txt: Dump from 'required_data'
		- Melted Standard Deviation and Mean data.txt: Dump from 'melted_data'
		- Summary by Activity and Subject.txt: Dump from 'summary_data'	
	