The run_analysis.R script reads data from the "Human Activity Recognition Using Smartphones Dataset" and produces a new - tidy - dataset which may be used for 
further analysis.

The data in the "Human Activity Recognition Using Smartphones Dataset" have been taken from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,3-axial linear acceleration and 3-axial angular velocity at a constant rate of 
50Hz data were captured. The experiments were video-recorded to label the data 
manually. The obtained dataset was randomly partitioned into two sets, where 70%of the volunteers was selected for generating the training data and 30% the testdata.

###The original dataset included the following data files:
-'features.txt': List of all features.

-'activity_labels.txt': List of class labels and their activity name.

-'train/X_train.txt': Training set.

-'train/y_train.txt': Training labels.

-'train/subject_train.txt': ID's of subjects in the training data

-'test/X_test.txt': Test set.

-'test/y_test.txt': Test labels.

-'test/subject_test.txt': ID's of subjects in the training data

###A brief description of the script:
The run_analysis.R script merges data from a number of .txt files and produces atidy data set which may be used for further analysis.

-It first loads all test Data
-It then loads all training Data
-It then reads all lookUp information 
-It then Merge test and training Data and name them
-get all the mean and STD. columns
-creates tidy Dataset which can be used for further Analysis

A description of the "tidy_movement_data.txt" file may be found in the "CodeBook.md" file.


