Codebook
----------

Data Description
-----------------
The Original dataset is taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The data was collected 
from the accelerometers in the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket 
of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into 
two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.The sensor signals (accelerometer and gyroscope) 
were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency 
was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Transformations Applied:
-------------------------
The description of each step and the intermediate output after each step is described as follows.

a) The file downloads the original zip and unzips it to the " UCI HAR DataSet" folder. The folder contains
X_Train, X_Test, Y_Train, Y_Test, Subject_Train,Subject_Test which are the text files of interest to perform our
transformation.

b)Load the training data to X_train (7352 obs of 561 variables) ,Y_train( 7352 obs of 1 variable),Subject_train(7352 obs of 1 variable)
  Load the test     data to X_test(2947 obs of 561 variables), Y_test (2947 obs of 1 variable), Subject_test ( 2947 obs of 1 variable)
  Merge the X_train/X_test to form XSet (10299 obs of 561 variables)
  Merge the Y_train/Y_test to form YSet (10299 obs of 1 variables)
  Merge the Subject_train/Subject_test to form SSet (10299 obs of 1 variables)
  
c)Load data from features.txt to features. Use the labels in features to names the XSet columns. Extracts only the measurements on the 
  mean and standard deviation for each measurement. The updated XSet has 10299 obs of 66 variables .The variable counts are reduced as only
  those pertaining to mean and standard deviation have been extracted.
  
d)Load data from activity_labels.txt to activitylabels. The YSet uses descriptive activity names to name the activities in the data set. There 
  are 6 levels of activity like walking,walking upstairs,walking downstairs,sitting standing,laying.
  
e)The script renames the SSet with descriptive column name like Subject. It then merges the XSet,YSet and the SSet. This creates a data frame
  of 10299 obs with 68 variables. The last two contain columns labelled with activity ID's and Subject ID's. It is written out to the PreTidyData.csv
  
f) The final cleaned independent tidy data set is created with the average of each measurement for each activity and each subject. It is a 180 * 66
  dataframe that is written out to TidyData.csv