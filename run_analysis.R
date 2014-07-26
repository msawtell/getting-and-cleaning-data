library(reshape2)
library(plyr)

test <- read.table("./test/X_test.txt")
train <- read.table("./train/X_train.txt")
features <- read.table("./features.txt")
colnames(train) <- features[,2]
colnames(test) <- features[,2]

#subjects
tests <- read.table("./test/subject_test.txt")
trains <- read.table("./train/subject_train.txt")
train$subject <- trains[,1]
test$subject <- tests[,1]

#read activity data
testl <- read.table("./test/y_test.txt")
trainl <- read.table("./train/y_train.txt")

#activity names
label <- read.table("./activity_labels.txt")
labels <- label[,2]

testlnice <- labels[testl[,1]]
trainlnice <- labels[trainl[,1]]

#add to data frames
test$activity <- testlnice
train$activity <- trainlnice

#append the two datasets together
data <- rbind(test, train)

meanlist <- names(data[,grep("mean", names(data))]) #The question specifically asks for ALL means and standard deviations, so this makes a list of those variable names.

stdlist <- names(data[,grep("std", names(data))]) #returns all standard deviation names

datasmall <- data[,c("subject", "activity", meanlist, stdlist)] #grab only the stuff we want!

#rename the variables to nicer names
cname <- names(datasmall)
cname <- gsub("tBody", "Time.Body", cname)
cname <- gsub("tGravity", "Time.Gravity", cname)
cname <- gsub("fBody", "Fourier.Body", cname)
cname <- gsub("fGravity", "Fourier.Gravity", cname)
cname <- gsub("\\-mean\\(\\)\\-", ".Mean.", cname)
cname <- gsub("\\-std\\(\\)\\-", ".Std.", cname)
cname <- gsub("\\-mean\\(\\)", ".Mean", cname)
cname <- gsub("\\-std\\(\\)", ".Std", cname)
cname <- gsub("\\-meanFreq\\(\\)", ".MeanFreq", cname)

colnames(datasmall) <- cname

tidy <- aggregate(datasmall[3:81], by=list(datasmall$subject, datasmall$activity), FUN=mean, na.rm=TRUE) #calculate the mean of each variable for each subject and activity
colnames(tidy)[c(1,2)] <- c("Subject", "Activity") #give the variables nice names
tidy <- arrange(tidy,tidy$Activity, tidy$Subject) #Order the list by Activity and then Subject

write.table(tidy,file="tidy.txt") #write out the table with the txt extension



### OLD NOTES PLEASE IGNORE:
#melted = melt(datasmall, id=c("subject", "activity"), measure.vars=names(datasmall[,seq(3,81)]))
#melted = melt(datasmall, id.vars=names(datasmall)[c(1,2)], measure.attributes=names(names(datasmall)[seq(3,81)]))

#splitted <- split(datasmall,c(datasmall[,1:2])) # Splitting the dataframe by Activity and Name
#stripped <- lapply(splitted,function(x){x[,-1:-2]}) # getting rid of the first two columns for each item in the list
#means<-sapply(stripped,colMeans) # calculate the means of each column
#means<-t(means) # transposing the matrix
#means<-as.data.frame(means) # converting it into a dataframe

# Generate the tidy data set
#  tidy.dataset <- dataset[, lapply(.SD, mean), by=list(label, subject)]