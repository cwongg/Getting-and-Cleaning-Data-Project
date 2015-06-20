# Code Book

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained	 by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

These are the variables in each of the files, what values they contain:

Standard Deviation and Mean data.txt

		 $ Test Label                     : int  (Values 1:6)
		 $ Subject                        : int  (Values 1:30)
		 $ Activity                       : Factor (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
		 $ tBodyAcc-mean()-X              : num  (Values [-1, 1])
		 $ tBodyAcc-mean()-Y              : num  (Values [-1, 1])
		 $ tBodyAcc-mean()-Z              : num  (Values [-1, 1])
		 $ tBodyAcc-std()-X               : num  (Values [-1, 1])
		 $ tBodyAcc-std()-Y               : num  (Values [-1, 1])
		 $ tBodyAcc-std()-Z               : num  (Values [-1, 1])
		 $ tGravityAcc-mean()-X           : num  (Values [-1, 1])
		 $ tGravityAcc-mean()-Y           : num  (Values [-1, 1])
		 $ tGravityAcc-mean()-Z           : num  (Values [-1, 1])
		 $ tGravityAcc-std()-X            : num  (Values [-1, 1])
		 $ tGravityAcc-std()-Y            : num  (Values [-1, 1])
		 $ tGravityAcc-std()-Z            : num  (Values [-1, 1])
		 $ tBodyAccJerk-mean()-X          : num  (Values [-1, 1])
		 $ tBodyAccJerk-mean()-Y          : num  (Values [-1, 1])
		 $ tBodyAccJerk-mean()-Z          : num  (Values [-1, 1])
		 $ tBodyAccJerk-std()-X           : num  (Values [-1, 1])
		 $ tBodyAccJerk-std()-Y           : num  (Values [-1, 1])
		 $ tBodyAccJerk-std()-Z           : num  (Values [-1, 1])
		 $ tBodyGyro-mean()-X             : num  (Values [-1, 1])
		 $ tBodyGyro-mean()-Y             : num  (Values [-1, 1])
		 $ tBodyGyro-mean()-Z             : num  (Values [-1, 1])
		 $ tBodyGyro-std()-X              : num  (Values [-1, 1])
		 $ tBodyGyro-std()-Y              : num  (Values [-1, 1])
		 $ tBodyGyro-std()-Z              : num  (Values [-1, 1])
		 $ tBodyGyroJerk-mean()-X         : num  (Values [-1, 1])
		 $ tBodyGyroJerk-mean()-Y         : num  (Values [-1, 1])
		 $ tBodyGyroJerk-mean()-Z         : num  (Values [-1, 1])
		 $ tBodyGyroJerk-std()-X          : num  (Values [-1, 1])
		 $ tBodyGyroJerk-std()-Y          : num  (Values [-1, 1])
		 $ tBodyGyroJerk-std()-Z          : num  (Values [-1, 1])
		 $ tBodyAccMag-mean()             : num  (Values [-1, 1])
		 $ tBodyAccMag-std()              : num  (Values [-1, 1])
		 $ tGravityAccMag-mean()          : num  (Values [-1, 1])
		 $ tGravityAccMag-std()           : num  (Values [-1, 1])
		 $ tBodyAccJerkMag-mean()         : num  (Values [-1, 1])
		 $ tBodyAccJerkMag-std()          : num  (Values [-1, 1])
		 $ tBodyGyroMag-mean()            : num  (Values [-1, 1])
		 $ tBodyGyroMag-std()             : num  (Values [-1, 1])
		 $ tBodyGyroJerkMag-mean()        : num  (Values [-1, 1])
		 $ tBodyGyroJerkMag-std()         : num  (Values [-1, 1])
		 $ fBodyAcc-mean()-X              : num  (Values [-1, 1])
		 $ fBodyAcc-mean()-Y              : num  (Values [-1, 1])
		 $ fBodyAcc-mean()-Z              : num  (Values [-1, 1])
		 $ fBodyAcc-std()-X               : num  (Values [-1, 1])
		 $ fBodyAcc-std()-Y               : num  (Values [-1, 1])
		 $ fBodyAcc-std()-Z               : num  (Values [-1, 1])
		 $ fBodyAcc-meanFreq()-X          : num  (Values [-1, 1])
		 $ fBodyAcc-meanFreq()-Y          : num  (Values [-1, 1])
		 $ fBodyAcc-meanFreq()-Z          : num  (Values [-1, 1])
		 $ fBodyAccJerk-mean()-X          : num  (Values [-1, 1])
		 $ fBodyAccJerk-mean()-Y          : num  (Values [-1, 1])
		 $ fBodyAccJerk-mean()-Z          : num  (Values [-1, 1])
		 $ fBodyAccJerk-std()-X           : num  (Values [-1, 1])
		 $ fBodyAccJerk-std()-Y           : num  (Values [-1, 1])
		 $ fBodyAccJerk-std()-Z           : num  (Values [-1, 1])
		 $ fBodyAccJerk-meanFreq()-X      : num  (Values [-1, 1])
		 $ fBodyAccJerk-meanFreq()-Y      : num  (Values [-1, 1])
		 $ fBodyAccJerk-meanFreq()-Z      : num  (Values [-1, 1])
		 $ fBodyGyro-mean()-X             : num  (Values [-1, 1])
		 $ fBodyGyro-mean()-Y             : num  (Values [-1, 1])
		 $ fBodyGyro-mean()-Z             : num  (Values [-1, 1])
		 $ fBodyGyro-std()-X              : num  (Values [-1, 1])
		 $ fBodyGyro-std()-Y              : num  (Values [-1, 1])
		 $ fBodyGyro-std()-Z              : num  (Values [-1, 1])
		 $ fBodyGyro-meanFreq()-X         : num  (Values [-1, 1])
		 $ fBodyGyro-meanFreq()-Y         : num  (Values [-1, 1])
		 $ fBodyGyro-meanFreq()-Z         : num  (Values [-1, 1])
		 $ fBodyAccMag-mean()             : num  (Values [-1, 1])
		 $ fBodyAccMag-std()              : num  (Values [-1, 1])
		 $ fBodyAccMag-meanFreq()         : num  (Values [-1, 1])
		 $ fBodyBodyAccJerkMag-mean()     : num  (Values [-1, 1])
		 $ fBodyBodyAccJerkMag-std()      : num  (Values [-1, 1])
		 $ fBodyBodyAccJerkMag-meanFreq() : num  (Values [-1, 1])
		 $ fBodyBodyGyroMag-mean()        : num  (Values [-1, 1])
		 $ fBodyBodyGyroMag-std()         : num  (Values [-1, 1])
		 $ fBodyBodyGyroMag-meanFreq()    : num  (Values [-1, 1])
		 $ fBodyBodyGyroJerkMag-mean()    : num  (Values [-1, 1])
		 $ fBodyBodyGyroJerkMag-std()     : num  (Values [-1, 1])
		 $ fBodyBodyGyroJerkMag-meanFreq(): num  (Values [-1, 1])
		 
Melted Standard Deviation and Mean data.txt

		 $ Activity  :  Factor (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
		 $ Test Label: int  (Values 1:6)
		 $ Subject   : int  (Values 1:30)
		 $ Variable  : Factor (Values: Each of the variables in 'required_data')
		 $ Value     : num  (Values: Value of the variable for the Activity, Test Label and Subject)
		 
Summary by Activity and Subject.txt

		 $ Activity: Factor (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
		 $ Subject : int  (Values 1:30)
		 $ Variable: Factor (Values: Each of the variables in 'required_data')
		 $ Average : num  (Values: Mean of the variable for the Activity and Subject)
	