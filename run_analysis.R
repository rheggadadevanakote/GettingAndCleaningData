## Download Zip file and extract contents

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","./UCIHARDataSet.zip",method="curl")
unzip("./UCIHARDataSet.zip")

##Load the training data
X_train<-read.table("./UCI HAR DataSet/train/X_train.txt")
Y_train<-read.table("./UCI HAR DataSet/train/Y_train.txt")
Subject_train<-read.table("./UCI HAR DataSet/train/Subject_train.txt")

##Loading the test data
X_test<-read.table("./UCI HAR DataSet/test/X_test.txt")
Y_test<-read.table("./UCI HAR DataSet/test/Y_test.txt")
Subject_test<-read.table("./UCI HAR DataSet/test/Subject_test.txt")

##1 . Merge the training and test set
XSet<-rbind(X_train,X_test)
YSet<-rbind(Y_train,Y_test)
SSet<-rbind(Subject_train,Subject_test)

##2 .Extracts only the measurements on the mean and standard deviation for each measurement. 
features<-read.table("./UCI HAR DataSet/features.txt")
names(XSet)<-features
meanOrstd<-grep("-mean\\(\\)|-std\\(\\)",features)
XSet<-XSet[,meanOrstd]

##3 . Uses descriptive activity names to name the activities in the data set
activityLabels<-read.table("./UCI HAR DataSet/activity_labels.txt")
YSet[,1] = activityLabels[Y[,1], 2]
names(YSet)<-"activity_labels"
head(Yset,n=2)

##4 . Uses descriptive activity names to name the activities in the data set
