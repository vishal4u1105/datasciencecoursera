The features selected for this data frame came from the transformation of the 
data in the "Human Activity Recognition Using Smartphones Dataset", which in 
turn have been taken from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular 
velocity at a constant rate of 50Hz data were captured, of accelerometer and 
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

These signals were used to estimate variables of the feature vector for each 
pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
'mean|std' is used to denote mean and standard deviation 

tBodyAcc-mean|std-XYZ 
tGravityAcc-mean|std-XYZ 
tBodyAccJerk-mean|std-XYZ 
tBodyGyro-mean|std-XYZ 
tBodyGyroJerk-mean|std-XYZ 
tBodyAccMag-mean|std
tGravityAccMag-mean|std
tBodyAccJerkMag-mean|std
tBodyGyroMag-mean|std
tBodyGyroJerkMag-mean|std 
fBodyAcc-mean|std-XYZ 
fBodyAccJerk-mean|std-XYZ 
fBodyGyro-mean|std-XYZ 
fBodyAccMag-mean|std 
fBodyAccJerkMag-mean|std 
fBodyGyroMag-mean|std 
fBodyGyroJerkMag-mean|std

##### in the above one line denotes multiple columns like
tBodyAcc-mean|std-XYZ denotes 
-tBodyAcc-mean-X        
-tBodyAcc-mean-Y
-tBodyAcc-mean-Z
-tBodyAcc-std-X
-tBodyAcc-std-Y
-tBodyAcc-std-Z


activity_name: Descriptive name of each subject's activity Type: Factor Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject_id : Identifier, identifying each subject Type: Integer Values: 1 : 30

