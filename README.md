GettingAndCleaningData
======================
This project takes data from the given dataset at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and converts it to a tidy dataset understandable to a data analyst/statistician.

The components of this project are :
a)run_analysis.R : This is an R Script file that downloads the raw data from the specified link and carries the operations specified below
and writes the cleaned data to a "TidyData.csv" file.
	Merges the training and the test sets to create one data set.
	Extracts only the measurements on the mean and standard deviation for each measurement. 
	Uses descriptive activity names to name the activities in the data set
	Appropriately labels the data set with descriptive activity names. 
	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
	
b)Codebook.md: This explains each variable in the TidyData.csv and the transformation applied to achieve this.

c)TidyData.csv: The completely cleaned dataset

-------------------------------------------------------------------------------------------------------------------------------------------------
References: Coursera classmates who gave pointers on how to clean data and submit it.