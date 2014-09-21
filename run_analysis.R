#set working directory
setwd("UCI HAR Dataset/")

###Step 1
###Merge all data into one list

#Read and merge train data sets
x_train<-read.table("x_train.txt")
y_train<-read.table("y_train.txt")
subject_train<-read.table("subject_train.txt")
mergedTrain<-cbind(subject_train,y_train,x_train)

#Read test data sets
x_test<-read.table("x_test.txt")
y_test<-read.table("y_test.txt")
subject_test<-read.table("subject_test.txt")
mergedTest<-cbind(subject_test,y_test,x_test)

#Merge two lists into one
merged<-rbind(mergedTest,mergedTrain)

#End of Step1
######################################################

###Step 2
###Extract only the measurements on mean or standard deviation

#Read and select variable names with "mean()" or "std()"
features<-read.table("features.txt")
names(merged)<-c("subject","activity",as.character(features[,2]))
colSelect<-c(1,2,grep("mean()|std()",names(merged)))

#create a new data frame that only contains selected variables
mergedSelect<-merged[,colSelect]

#End of Step 2
###########################################################

###Step 3
###Use descriptive names to name the activities in the data set

label<-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
i<-1
for(i in 1:6){
 d<-as.character(i)
 mergedSelect$activity<-sub(d,label[i],mergedSelect$activity,fixed=T)
}

#End of Step 3
############################################################

##Step 4
##label the data set with descriptive variable names

#Remove all "-"and "()". 
names(mergedSelect)<-gsub('-mean', 'Mean', names(mergedSelect))
names(mergedSelect)<-gsub('-std', 'StdDev', names(mergedSelect))
names(mergedSelect)<-gsub('[()-]', '', names(mergedSelect))

#Reword misleading/ambiguous terms
names(mergedSelect)<-gsub('BodyBody','Body',names(mergedSelect))

#End of Step 4
######################################################
##Step 5
##Create a new list with the average for each variable for each activty and each subject

#create the list
tidyOutput<-aggregate(mergedSelect, by=list(subject=mergedSelect$subject,activity=mergedSelect$activity), mean)

#remove redundant columns
tidyOutput[,3]<-NULL
tidyOutput[,3]<-NULL

#print the new list to the working directory
write.table(tidyOutput, "tidyOutput.txt", sep="\t",row.names=FALSE)

#End of Step 5
#End of project
