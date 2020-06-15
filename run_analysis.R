library(dplyr)

features <- read.table("./data/dataset/features.txt", quote="\"", comment.char="")
features$V1 <- NULL

features$V2 <- gsub("^t","Time",features$V2)
features$V2 <- gsub("tBody","TimeBody",features$V2)
features$V2 <- gsub("^f","Frequency",features$V2)
features$V2 <- gsub("\\(\\)","",features$V2)
features$V2 <- gsub("-",".",features$V2)
features$V2 <- gsub("Acc","Acceleration",features$V2)
features$V2 <- gsub("Mag","Magnitude",features$V2)
features$V2 <- gsub("mean","Mean",features$V2)
features$V2 <- gsub("std","StandardDeviation",features$V2)
features$V2 <- gsub("mad","MedianAbsoluteDeviation",features$V2)
features$V2 <- gsub("max","Maximum",features$V2)
features$V2 <- gsub("min","Minimum",features$V2)
features$V2 <- gsub("sma","SignalMagnitudeArea",features$V2)
features$V2 <- gsub("energy","Energy",features$V2)
features$V2 <- gsub("entropy","Entropy",features$V2)
features$V2 <- gsub("iqr","InterquartileRange",features$V2)
features$V2 <- gsub("arCoeff","AutocorrelationCoefficient",features$V2)
features$V2 <- gsub("correlation","Correlation",features$V2)
features$V2 <- gsub("maxInds","MaximumIndex",features$V2)
features$V2 <- gsub("MeanFreq","MeanFrequency",features$V2)
features$V2 <- gsub("skewness","Skewness",features$V2)
features$V2 <- gsub("kurtosis","Kurtosis",features$V2)
features$V2 <- gsub("bandsEnergy","IntervalEnergy",features$V2)
features$V2 <- gsub("angle","Angle",features$V2)
features$V2 <- gsub("gravity","Gravity",features$V2)
features$V2 <- gsub("Inds","Index",features$V2)



subject <- read.table("./data/dataset/test/subject_test.txt", quote="\"", comment.char="")
activity <- read.table("./data/dataset/test/y_test.txt", quote="\"", comment.char="")
test <- read.table("./data/dataset/test/X_test.txt", quote="\"", comment.char="")
names(test) <- features$V2

testDataset <- data.frame(Subject=subject,Activity=activity,test)
names(testDataset)[1] <- "Subject"
names(testDataset)[2] <- "Activity"


subject <- read.table("./data/dataset/train/subject_train.txt", quote="\"", comment.char="")
activity <- read.table("./data/dataset/train/y_train.txt", quote="\"", comment.char="")
train <- read.table("./data/dataset/train/X_train.txt", quote="\"", comment.char="")
names(train) <- features$V2

trainDataset <- data.frame(Subject=subject,Activity=activity,train)
names(trainDataset)[1] <- "Subject"
names(trainDataset)[2] <- "Activity"


totalDataset <- full_join(testDataset,trainDataset)



activity_labels <- read.table("./data/dataset/activity_labels.txt", quote="\"", comment.char="")
change_name <- function(x){
  activity_labels[activity_labels$V1==x,2]  
}
totalDataset$Activity <- sapply(totalDataset$Activity,change_name)

mean_sd_Dataset <- totalDataset[,grepl("(Mean|Standard|Activity|Subject)",names(totalDataset),ignore.case = T)]

mean_sd_Dataset <- as_tibble(mean_sd_Dataset)

averageDataset <- aggregate(mean_sd_Dataset[,-c(1:2)],by=list(mean_sd_Dataset$Activity,mean_sd_Dataset$Subject),FUN=mean)

names(averageDataset)[1] <- "Activity"
names(averageDataset)[2] <- "Subject"

write.table(averageDataset,file="./output/finalproject.txt",row.names = F)


